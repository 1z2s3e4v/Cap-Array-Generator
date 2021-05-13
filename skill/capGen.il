
procedure( clearCV( cv )
	foreach( inst cv~>instances
		;printf("inst %s: %L\n" inst~>name inst~>xy)
		dbDeleteObject(inst)
	)
	foreach( via cv~>vias
		dbDeleteObject(via)
	)
	foreach( shape cv~>shapes
		dbDeleteObject(shape)
	)
); clearCV

procedure( copy4bitTemp( cv cv2 )
	foreach( inst cv~>instances
		;printf("inst %s: %L\n" inst~>name inst~>xy)
		dbCopyFig(inst cv2 list(0:0 inst~>orient))
	)
	foreach( via cv~>vias
		dbCopyFig(via cv2 list(0:0 via~>orient))
	)
	foreach( shape cv~>shapes
		dbCopyFig(shape cv2 list(0:0 "R0"))
	)
); copy4bitTemp

procedure( gdsStreamOut( cv gds_file )
	xstSetField("library" cv~>lib~>name)
	xstSetField("topCell" cv~>cell~>name)
	xstSetField("view" cv~>view~>name)
	xstSetField("strmFile" gds_file)
	xstSetField("attachTechFileOfLib" "tsmcN28")
	xstSetField("virtualMemory" "true")
	xstOutDoTranslate()
	printf("[capGen.il] - gds streamed out \'%s\'\n" gds_file)
)

procedure( genLayoutWithTxt(cv fileName)
	printf("[capGen.il] - :))\n")
	myPort = infile(fileName)
	line_count = 0
	when( myPort
	while( gets(line myPort)
		inLine_list = parseString(line " \t\n")
		if(line_count == 0 && nthelem(1 inLine_list) == "output_layout" then
			lib = nthelem(2 inLine_list)
			cell = nthelem(3 inLine_list)
			view = nthelem(4 inLine_list)
			cv = dbOpenCellViewByType(lib cell view "maskLayout" "a") ;; opens for edit, or creates layout
			printf("cell view: %s %s %s\n" lib cell view)
		else if(nthelem(1 inLine_list) == "path" then
			layerName = nthelem(2 inLine_list)
			x1 = atof(nthelem(3 inLine_list))
			y1 = atof(nthelem(4 inLine_list))
			x2 = atof(nthelem(5 inLine_list))
			y2 = atof(nthelem(6 inLine_list))
			width = atof(nthelem(7 inLine_list))
			netName = nthelem(8 inLine_list)
			printf("[capGen.il] - read--> path %s x1=%f y1=%f x2=%f y2=%f w=%f net=%s\n" layerName x1 y1 x2 y2 width netName)
			newPath = dbCreatePath(cv list(layerName "drawing") list(x1:y1 x2:y2) width)
			netId  = dbMakeNet(cv netName)
			newPath~>net = netId
		else if( nthelem(1 inLine_list) == "via" then
			layerName = nthelem(2 inLine_list)
			x = atof(nthelem(3 inLine_list))
			y = atof(nthelem(4 inLine_list))
			netName = nthelem(5 inLine_list)
			printf("[capGen.il] - read--> via %s x=%f y=%f net=%s\n" layerName x y netName)
			tf=techGetTechFile(cv)
			viaDef=techFindViaDefByName(tf layerName)
			newVia = dbCreateVia(cv viaDef x:y "R0") ; could also pass parameterList
			netId  = dbMakeNet(cv netName)
			newVia~>net = netId
		else if( nthelem(1 inLine_list) == "pin" then
			layerName = nthelem(2 inLine_list)
			x = atof(nthelem(3 inLine_list))
			y = atof(nthelem(4 inLine_list))
			netName = nthelem(5 inLine_list)
			printf("[capGen.il] - read--> pin %s x=%f y=%f net=%s\n" layerName x y netName)
			x1=x-0.05/2
			y1=y-0.05/2
			x2=x+0.05/2
			y2=y+0.05/2
			newRect = dbCreateRect(cv list(layerName "pin") list(x1:y1 x2:y2))
			newLabel = dbCreateLabel(cv list(layerName "pin") x:y netName "centerCenter" "R0" "stick" 0.1)
			netId  = dbMakeNet(cv netName)
			newRect~>net = netId
			newLabel~>net = netId
		else if( nthelem(1 inLine_list) == "inst" then
			instName = nthelem(2 inLine_list)
			instLib = nthelem(3 inLine_list)
			instCell = nthelem(4 inLine_list)
			instView = nthelem(5 inLine_list)
			x = atof(nthelem(6 inLine_list))
			y = atof(nthelem(7 inLine_list))
			orient = nthelem(8 inLine_list)
			printf("[capGen.il] - read--> inst %s x=%f y=%f\n" instName x y)
			dbCreateParamInstByMasterName(cv instLib instCell instView instName x:y orient 1)
		); else if inst
		); else if pin
		); else if via
		); else if shape
		); if output_layout
		line_count = line_count + 1
	) ;while
	) ;when
	cv ; return cv
) ;genLayoutWithTxt

; open cellview (default, it may change in 'genLayoutWithTxt')
cellView = dbOpenCellViewByType("ADC_SAR4BIT" "ARRAY_CMP_T1" "layout_skill" "maskLayout" "a") ;; opens for edit, or creates layout
; clear the cellview
clearCV(cellView)

; generate cap array layout
cellView = genLayoutWithTxt(cellView "~/frank/project/output/layout.txt")

dbSave(cellView)
;gdsStreamOut(cellView "~/frank/project/runLPE/gds_sp/ARRAY_CAP_T1.gds")
