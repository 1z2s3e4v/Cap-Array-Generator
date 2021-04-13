
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

procedure( drawPathByTxt( cv fileName)
	printf("[capGen.il] - :))\n")
	myPort = infile(fileName)
	when( myPort
	while( gets(line myPort)
		inLine_list = parseString(line " \t\n")
		if(nthelem(1 inLine_list) == "shape" then
			layerName = nthelem(2 inLine_list)
			x1 = atof(nthelem(3 inLine_list))
			y1 = atof(nthelem(4 inLine_list))
			x2 = atof(nthelem(5 inLine_list))
			y2 = atof(nthelem(6 inLine_list))
			width = atof(nthelem(7 inLine_list))
			printf("[capGen.il] - read--> shape %s x1=%f y1=%f x2=%f y2=%f w=%f\n" layerName x1 y1 x2 y2 width)
			dbCreatePath(cv list(layerName "drawing") list(x1:y1 x2:y2) width)
		else if( nthelem(1 inLine_list) == "via" then
			layerName = nthelem(2 inLine_list)
			x = atof(nthelem(3 inLine_list))
			y = atof(nthelem(4 inLine_list))
			printf("[capGen.il] - read--> via %s x=%f y=%f\n" layerName x y)
			tf=techGetTechFile(cv)
			viaDef=techFindViaDefByName(tf layerName)
			dbCreateVia(cv viaDef x:y "R0") ; could also pass parameterList
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
		); else if via
		); if shape
	) ;while
	) ;when
) ;drawPathByTxt

; open cellview
cvTemp4b = dbOpenCellViewByType("ADC_SAR4BIT" "ARRAY_CMP_T1" "layout_T1_template" "maskLayout" "a")
cellView = dbOpenCellViewByType("ADC_SAR4BIT" "ARRAY_CMP_T1" "layout_skill" "maskLayout" "a") ;; opens for edit, or creates layout
; clear the cellview
clearCV(cellView)
; generate cap array layout
copy4bitTemp(cvTemp4b cellView)
drawPathByTxt(cellView "~/frank/project/output/path.txt")

dbSave(cellView)
;gdsStreamOut(cellView "~/frank/project/runLPE/gds_sp/ARRAY_CAP_T1.gds")
