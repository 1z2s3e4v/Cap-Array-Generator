; Technology File cdsDefTechLib
; Generated on Apr 18 14:12:15 2021
;     with @(#)$CDS: virtuoso version 6.1.7-64b 01/24/2017 19:53 (sjfhw310) $


;********************************
; CONTROLS
;********************************
controls(
 techVersion("1.0")

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName               Purpose#   Abbreviation )
 ;( -----------               --------   ------------ )
 ;System-Reserved Purposes:
  ( customFill                -12                     )
  ( fillOPC                   -11        fio          )
  ( redundant                 -8                      )
  ( gapFill                   -7                      )
  ( annotation                -6                      )
  ( OPCAntiSerif              -5                      )
  ( OPCSerif                  -4                      )
  ( slot                      -3                      )
  ( fill                      -2         fil          )
  ( drawing                   -1         drw          )
  ( fatal                     223        fat          )
  ( critical                  224        crt          )
  ( soCritical                225        scr          )
  ( soError                   226        ser          )
  ( ackWarn                   227        ack          )
  ( info                      228        inf          )
  ( track                     229        trk          )
  ( blockage                  230        blk          )
  ( grid                      231        grd          )
  ( warning                   234        wng          )
  ( tool1                     235        tl1          )
  ( tool0                     236        tl0          )
  ( label                     237        lbl          )
  ( flight                    238        flt          )
  ( error                     239        err          )
  ( annotate                  240        ant          )
  ( drawing1                  241        dr1          )
  ( drawing2                  242        dr2          )
  ( drawing3                  243        dr3          )
  ( drawing4                  244        dr4          )
  ( drawing5                  245        dr5          )
  ( drawing6                  246        dr6          )
  ( drawing7                  247        dr7          )
  ( drawing8                  248        dr8          )
  ( drawing9                  249        dr9          )
  ( boundary                  250        bnd          )
  ( pin                       251        pin          )
  ( net                       253        net          )
  ( cell                      254        cel          )
  ( all                       255        all          )
 ) ;techPurposes

 techLayers(
 ;( LayerName                 Layer#     Abbreviation )
 ;( ---------                 ------     ------------ )
 ;System-Reserved Layers:
  ( Unrouted                  200        Unroute      )
  ( Row                       201        Row          )
  ( Group                     202        Group        )
  ( Cannotoccupy              203        noOcupy      )
  ( Canplace                  204        Canplac      )
  ( hardFence                 205        hardFnc      )
  ( softFence                 206        softFnc      )
  ( y0                        207        y0           )
  ( y1                        208        y1           )
  ( y2                        209        y2           )
  ( y3                        210        y3           )
  ( y4                        211        y4           )
  ( y5                        212        y5           )
  ( y6                        213        y6           )
  ( y7                        214        y7           )
  ( y8                        215        y8           )
  ( y9                        216        y9           )
  ( designFlow                217        dsnFlow      )
  ( stretch                   218        stretch      )
  ( edgeLayer                 219        edgeLyr      )
  ( changedLayer              220        chngLyr      )
  ( unset                     221        unset        )
  ( unknown                   222        unknown      )
  ( spike                     223        spike        )
  ( hiz                       224        hiz          )
  ( resist                    225        resist       )
  ( drive                     226        drive        )
  ( supply                    227        supply       )
  ( wire                      228        wire         )
  ( pin                       229        pin          )
  ( text                      230        text         )
  ( device                    231        device       )
  ( border                    232        border       )
  ( snap                      233        snap         )
  ( align                     234        align        )
  ( prBoundary                235        prBndry      )
  ( instance                  236        instnce      )
  ( annotate                  237        anotate      )
  ( marker                    238        marker       )
  ( select                    239        select       )
  ( substrate                 240        substra      )
  ( grid                      251        grid         )
  ( axis                      252        axis         )
  ( hilite                    253        hilite       )
  ( background                254        bkground     )
 ) ;techLayers

 techLayerPurposePriorities(
 ;layers are ordered from lowest to highest priority
 ;( LayerName                 Purpose    )
 ;( ---------                 -------    )
  ( background                drawing    )
  ( grid                      drawing    )
  ( grid                      drawing1   )
  ( annotate                  drawing    )
  ( annotate                  drawing1   )
  ( annotate                  drawing2   )
  ( annotate                  drawing3   )
  ( annotate                  drawing4   )
  ( annotate                  drawing5   )
  ( annotate                  drawing6   )
  ( annotate                  drawing7   )
  ( annotate                  drawing8   )
  ( annotate                  drawing9   )
  ( instance                  drawing    )
  ( instance                  label      )
  ( prBoundary                drawing    )
  ( prBoundary                boundary   )
  ( prBoundary                label      )
  ( align                     drawing    )
  ( hardFence                 drawing    )
  ( softFence                 drawing    )
  ( text                      drawing    )
  ( text                      drawing1   )
  ( text                      drawing2   )
  ( border                    drawing    )
  ( device                    drawing    )
  ( device                    label      )
  ( device                    drawing1   )
  ( device                    drawing2   )
  ( device                    annotate   )
  ( wire                      drawing    )
  ( wire                      label      )
  ( wire                      flight     )
  ( pin                       label      )
  ( pin                       drawing    )
  ( pin                       annotate   )
  ( axis                      drawing    )
  ( edgeLayer                 drawing    )
  ( edgeLayer                 pin        )
  ( snap                      boundary   )
  ( snap                      drawing    )
  ( stretch                   drawing    )
  ( y0                        drawing    )
  ( y1                        drawing    )
  ( y2                        drawing    )
  ( y3                        drawing    )
  ( y4                        drawing    )
  ( y5                        drawing    )
  ( y6                        drawing    )
  ( y7                        drawing    )
  ( y8                        drawing    )
  ( y9                        drawing    )
  ( hilite                    drawing    )
  ( hilite                    drawing1   )
  ( hilite                    drawing2   )
  ( hilite                    drawing3   )
  ( hilite                    drawing4   )
  ( hilite                    drawing5   )
  ( hilite                    drawing6   )
  ( hilite                    drawing7   )
  ( hilite                    drawing8   )
  ( hilite                    drawing9   )
  ( select                    drawing    )
  ( drive                     drawing    )
  ( hiz                       drawing    )
  ( resist                    drawing    )
  ( spike                     drawing    )
  ( supply                    drawing    )
  ( unknown                   drawing    )
  ( unset                     drawing    )
  ( designFlow                drawing    )
  ( designFlow                drawing1   )
  ( designFlow                drawing2   )
  ( designFlow                drawing3   )
  ( designFlow                drawing4   )
  ( designFlow                drawing5   )
  ( designFlow                drawing6   )
  ( designFlow                drawing7   )
  ( designFlow                drawing8   )
  ( designFlow                drawing9   )
  ( changedLayer              tool0      )
  ( changedLayer              tool1      )
  ( marker                    warning    )
  ( marker                    error      )
  ( Row                       drawing    )
  ( Row                       label      )
  ( Group                     drawing    )
  ( Group                     label      )
  ( Cannotoccupy              drawing    )
  ( Cannotoccupy              boundary   )
  ( Canplace                  drawing    )
  ( Unrouted                  drawing    )
  ( Unrouted                  drawing1   )
  ( Unrouted                  drawing2   )
  ( Unrouted                  drawing3   )
  ( Unrouted                  drawing4   )
  ( Unrouted                  drawing5   )
  ( Unrouted                  drawing6   )
  ( Unrouted                  drawing7   )
  ( Unrouted                  drawing8   )
  ( Unrouted                  drawing9   )
  ( Row                       boundary   )
  ( Unrouted                  track      )
  ( marker                    annotate   )
  ( marker                    info       )
  ( marker                    ackWarn    )
  ( marker                    soError    )
  ( marker                    soCritical )
  ( marker                    critical   )
  ( marker                    fatal      )
  ( Group                     boundary   )
  ( y0                        flight     )
  ( y1                        flight     )
  ( y2                        flight     )
  ( y3                        flight     )
  ( y4                        flight     )
  ( y5                        flight     )
  ( y6                        flight     )
  ( y7                        flight     )
  ( y8                        flight     )
  ( y9                        flight     )
  ( border                    boundary   )
  ( snap                      grid       )
  ( annotate                  boundary   )
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName    Purpose      Packet          Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------    -------      ------          --- --- --------- ------- ----- )
  ( background   drawing      background       t nil t nil nil )
  ( grid         drawing      grid             t nil t nil nil )
  ( grid         drawing1     grid1            t nil t nil nil )
  ( annotate     drawing      annotate         t t t t nil )
  ( annotate     drawing1     annotate1        t t t t nil )
  ( annotate     drawing2     annotate2        t t t t nil )
  ( annotate     drawing3     annotate3        t t t t nil )
  ( annotate     drawing4     annotate4        t t t t nil )
  ( annotate     drawing5     annotate5        t t t t nil )
  ( annotate     drawing6     annotate6        t t t t nil )
  ( annotate     drawing7     annotate7        t t t t nil )
  ( annotate     drawing8     annotate8        t t t t nil )
  ( annotate     drawing9     annotate9        t t t t nil )
  ( instance     drawing      instance         t t t t nil )
  ( instance     label        instanceLbl      t t t t nil )
  ( prBoundary   drawing      prBoundary       t t t t nil )
  ( prBoundary   boundary     prBoundaryBnd    t nil t t nil )
  ( prBoundary   label        prBoundaryLbl    t t t t nil )
  ( align        drawing      defaultPacket    t t t t nil )
  ( hardFence    drawing      hardFence        t t t t nil )
  ( softFence    drawing      softFence        t t t t nil )
  ( text         drawing      text             t t t t nil )
  ( text         drawing1     text1            t t t t nil )
  ( text         drawing2     text2            t t t t nil )
  ( border       drawing      border           t t t t nil )
  ( device       drawing      device           t t t t nil )
  ( device       label        deviceLbl        t t t t nil )
  ( device       drawing1     device1          t t t t nil )
  ( device       drawing2     device2          t t t t nil )
  ( device       annotate     deviceAnt        t t t t nil )
  ( wire         drawing      wire             t t t t nil )
  ( wire         label        wireLbl          t t t t nil )
  ( wire         flight       wireFlt          t t t t nil )
  ( pin          label        pinLbl           t t t t nil )
  ( pin          drawing      pin              t t t t nil )
  ( pin          annotate     pinAnt           t t t t nil )
  ( axis         drawing      axis             t nil t t nil )
  ( edgeLayer    drawing      edgeLayer        t t t t nil )
  ( edgeLayer    pin          edgeLayerPin     t t t t nil )
  ( snap         boundary     snap             t nil t t nil )
  ( snap         drawing      snap             t t t t nil )
  ( stretch      drawing      stretch          t t t t nil )
  ( y0           drawing      y0               t t t t nil )
  ( y1           drawing      y1               t t t t nil )
  ( y2           drawing      y2               t t t t nil )
  ( y3           drawing      y3               t t t t nil )
  ( y4           drawing      y4               t t t t nil )
  ( y5           drawing      y5               t t t t nil )
  ( y6           drawing      y6               t t t t nil )
  ( y7           drawing      y7               t t t t nil )
  ( y8           drawing      y8               t t t t nil )
  ( y9           drawing      y9               t t t t nil )
  ( hilite       drawing      hilite           t t t t nil )
  ( hilite       drawing1     hilite1          t t t t nil )
  ( hilite       drawing2     hilite2          t t t t nil )
  ( hilite       drawing3     hilite3          t t t t nil )
  ( hilite       drawing4     hilite4          t t t t nil )
  ( hilite       drawing5     hilite5          t t t t nil )
  ( hilite       drawing6     hilite6          t t t t nil )
  ( hilite       drawing7     hilite7          t t t t nil )
  ( hilite       drawing8     hilite8          t t t t nil )
  ( hilite       drawing9     hilite9          t t t t nil )
  ( select       drawing      select           t t t t nil )
  ( drive        drawing      drive            t t t t nil )
  ( hiz          drawing      hiz              t t t t nil )
  ( resist       drawing      resist           t t t t nil )
  ( spike        drawing      spike            t t t t nil )
  ( supply       drawing      supply           t t t t nil )
  ( unknown      drawing      unknown          t t t t nil )
  ( unset        drawing      unset            t t t t nil )
  ( designFlow   drawing      designFlow       t nil nil nil nil )
  ( designFlow   drawing1     designFlow1      t nil nil nil nil )
  ( designFlow   drawing2     designFlow2      t nil nil nil nil )
  ( designFlow   drawing3     designFlow3      t nil nil nil nil )
  ( designFlow   drawing4     designFlow4      t nil nil nil nil )
  ( designFlow   drawing5     designFlow5      t nil nil nil nil )
  ( designFlow   drawing6     designFlow6      t nil nil nil nil )
  ( designFlow   drawing7     designFlow7      t nil nil nil nil )
  ( designFlow   drawing8     designFlow8      t nil nil nil nil )
  ( designFlow   drawing9     designFlow9      t nil nil nil nil )
  ( changedLayer tool0        changedLayerTl0  nil nil t nil nil )
  ( changedLayer tool1        changedLayerTl1  nil nil t nil nil )
  ( marker       warning      markerWarn       t t t t nil )
  ( marker       error        markerErr        t t t t nil )
  ( Row          drawing      Row              t t t t nil )
  ( Row          label        RowLbl           t t t t nil )
  ( Group        drawing      Group            t t t t nil )
  ( Group        label        GroupLbl         t t t t nil )
  ( Cannotoccupy drawing      Cannotoccupy     t t t t nil )
  ( Cannotoccupy boundary     CannotoccupyBnd  t t t t nil )
  ( Canplace     drawing      Canplace         t t t t nil )
  ( Unrouted     drawing      Unrouted         t t t t nil )
  ( Unrouted     drawing1     Unrouted1        t t t t nil )
  ( Unrouted     drawing2     Unrouted2        t t t t nil )
  ( Unrouted     drawing3     Unrouted3        t t t t nil )
  ( Unrouted     drawing4     Unrouted4        t t t t nil )
  ( Unrouted     drawing5     Unrouted5        t t t t nil )
  ( Unrouted     drawing6     Unrouted6        t t t t nil )
  ( Unrouted     drawing7     Unrouted7        t t t t nil )
  ( Unrouted     drawing8     Unrouted8        t t t t nil )
  ( Unrouted     drawing9     Unrouted9        t t t t nil )
  ( Row          boundary     RowBnd           t t t t nil )
  ( Unrouted     track        UnroutedTrk      t t t t nil )
  ( marker       annotate     markerAno        t t t t nil )
  ( marker       info         markerInf        t t t t nil )
  ( marker       ackWarn      markerAck        t t t t nil )
  ( marker       soError      markerSer        t t t t nil )
  ( marker       soCritical   markerScr        t t t t nil )
  ( marker       critical     markerCrt        t t t t nil )
  ( marker       fatal        markerFat        t t t t nil )
  ( Group        boundary     GroupBnd         t nil t t nil )
  ( y0           flight       y0Flt            t t t t nil )
  ( y1           flight       y1Flt            t t t t nil )
  ( y2           flight       y2Flt            t t t t nil )
  ( y3           flight       y3Flt            t t t t nil )
  ( y4           flight       y4Flt            t t t t nil )
  ( y5           flight       y5Flt            t t t t nil )
  ( y6           flight       y6Flt            t t t t nil )
  ( y7           flight       y7Flt            t t t t nil )
  ( y8           flight       y8Flt            t t t t nil )
  ( y9           flight       y9Flt            t t t t nil )
  ( border       boundary     area             t nil t t nil )
  ( snap         grid         snap             t nil t nil nil )
  ( annotate     boundary     AnnotateBoundary t t t t nil )
 ) ;techDisplays

) ;layerDefinitions


;********************************
; LAYER RULES
;********************************
layerRules(

 functions(
 ;( layer                       function        [maskNumber])
 ;( -----                       --------        ------------)
  ( substrate                	"recognition" )
 ) ;functions

) ;layerRules
