; Technology File tsmcN28
; Generated on Apr 18 13:54:36 2021
;     with @(#)$CDS: virtuoso version 6.1.7-64b 01/24/2017 19:53 (sjfhw310) $


;********************************
; CONTROLS
;********************************
controls(
 techVersion("1.0")

 techParams(
 ;( parameter           value             )
 ;( ----------          -----             )
  ( maskGrid       	0.005 )
  ( cadGrid        	0.005 )
  ( drcGrid        	0.005 )
  ( mfgGrid        	0.005 )
  ( scale          	1.0 )
  ( TSMC_TF_VERSION	"1.7b"          )
  ( TSMC_TECHLEF_VERSION	"1.5a"          )
  ( CDNS_TF_VERSION	"1.7b_MS_IC61_20170518" )
  ( METALSCHEME    	"1P9M_6X2Z"     )
 ) ;techParams

 viewTypeUnits(
 ;( viewType            userUnit       dbuperuu           )
 ;( --------            --------       --------           )
  ( maskLayout     	"micron"       	1000            )
  ( schematic      	"inch"         	160             )
  ( schematicSymbol	"inch"         	160             )
  ( netlist        	"inch"         	160             )
 ) ;viewTypeUnits

 mfgGridResolution(
      ( 0.005000 )
 ) ;mfgGridResolution

) ;controls


;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName               Purpose#   Abbreviation )
 ;( -----------               --------   ------------ )
 ;User-Defined Purposes:
  ( testb                     11         teb          )
  ( testc                     12         tec          )
  ( testd                     13         ted          )
  ( BSP                       14         BSP          )
  ( BSL                       15         BSL          )
  ( BSD                       16         BSD          )
  ( text                      17         txt          )
  ( guideline                 18         gdl          )
  ( dummyh                    19         dmh          )
  ( dummyi                    20         dmi          )
  ( dummyj                    21         dmj          )
  ( dummyk                    22         dmk          )
  ( dummyl                    23         dml          )
  ( dummym                    24         dmm          )
  ( blocking                  25         blk          )
  ( rad                       30         rad          )
  ( NLDDH                     38         NLH          )
  ( PLDDH                     39         PLH          )
  ( plus1                     43         pl1          )
  ( plus2                     44         pl2          )
  ( plus3                     45         pl3          )
  ( NLDDV                     46         NLV          )
  ( PLDDV                     47         PLV          )
  ( dpsrm                     48         dps          )
  ( LOWLK                     49         LOW          )
  ( L01S                      50         LOS          )
  ( NILD                      51         NID          )
  ( PILD                      52         PID          )
  ( Ncap_NTN                  53         NCP          )
  ( analog                    54         ana          )
  ( recommend                 55         rec          )
  ( require                   56         req          )
  ( periphery_g               57         ppg          )
  ( odummy                    58         odm          )
  ( al                        59         al           )
  ( src                       60         src          )
  ( n_a                       61         n_a          )
  ( n_b                       62         n_b          )
  ( p_a                       63         p_a          )
  ( p_b                       64         p_b          )
  ( vssdmy                    65         vss          )
  ( gated                     66         gtd          )
  ( soibt                     67         soi          )
  ( decap                     68         dcp          )
  ( vpfc                      69         vpc          )
  ( ndop                      70         ndp          )
  ( pdop                      71         pdp          )
  ( dummyg                    72         dmg          )
  ( udrdrv                    73         udr          )
  ( ovrdrv                    74         ovr          )
  ( prob                      75         prb          )
  ( periphery                 82         pph          )
  ( test0                     83         te0          )
  ( test1                     84         te1          )
  ( test2                     85         te2          )
  ( test3                     86         te3          )
  ( test4                     87         te4          )
  ( test5                     88         te5          )
  ( test6                     89         te6          )
  ( test7                     90         te7          )
  ( test8                     91         te8          )
  ( test9                     92         te9          )
  ( testa                     93         tea          )
  ( dummya                    94         dma          )
  ( dummyb                    95         dmb          )
  ( dummyc                    96         dmc          )
  ( dummyd                    97         dmd          )
  ( dummye                    98         dme          )
  ( dummyf                    99         dmf          )
  ( drawinga                  100        dra          )
  ( drawingb                  101        drb          )
  ( drawingc                  102        drc          )
  ( drawingd                  103        drd          )
  ( drawinge                  104        dre          )
  ( rule1                     105        ru1          )
  ( drawingf                  106        drf          )
  ( drawingh                  107        drh          )
  ( NV                        108        NV           )
  ( lvs                       109        lvs          )
  ( allsram                   110        asm          )
  ( waive                     111        wai          )
  ( passgate                  112        psg          )
  ( dummy1                    115        dm1          )
  ( dummy2                    116        dm2          )
  ( dummy3                    117        dm3          )
  ( dummy4                    118        dm4          )
  ( dummy5                    119        dm5          )
  ( dummy6                    120        dm6          )
  ( dummy7                    121        dm7          )
  ( dummy8                    122        dm8          )
  ( dummy9                    123        dm9          )
  ( drain                     124        drn          )
  ( cvss_sram                 125        csm          )
  ( VNV                       126        VNV          )
  ( dummy                     127        dm           )
  ( teste                     128        tee          )
  ( testg                     256        teg          )
  ( dummyn                    257        dmn          )
  ( dummyo                    258        dmo          )
  ( dummyp                    259        dmp          )
  ( dummyq                    260        dmq          )
  ( dummyr                    261        dmr          )
  ( v_12                      262        v12          )
  ( v_15                      263        v15          )
  ( drain1                    264        dn1          )
 ) ;techPurposes

 techLayers(
 ;( LayerName                 Layer#     Abbreviation )
 ;( ---------                 ------     ------------ )
 ;User-Defined Layers:
  ( ref                       0          ref          )
  ( DNW                       1          DNW          )
  ( PW                        2          PW           )
  ( NW                        3          NW           )
  ( BJTC                      4          BJTC         )
  ( PM                        5          PM           )
  ( OD                        6          OD           )
  ( OD_12                     7          OD_12        )
  ( EM                        8          EM           )
  ( CLDD                      9          CLDD         )
  ( P3                        10         P3           )
  ( NT_N                      11         NT_N         )
  ( VTL_N                     12         VTL_N        )
  ( VTL_P                     13         VTL_P        )
  ( OD_15                     14         OD_15        )
  ( OD_33                     15         OD_33        )
  ( OD_18                     16         OD_18        )
  ( PO                        17         PO           )
  ( OD_25                     18         OD_25        )
  ( N10V                      19         N10V         )
  ( P10V                      20         P10V         )
  ( OD_DECAP                  21         OD_DEC       )
  ( P1VNIX                    22         P1VNIX       )
  ( N1VNIX                    23         N1VNIX       )
  ( HIA_DUMMY                 24         HIA_DUMMY    )
  ( PP                        25         PP           )
  ( NP                        26         NP           )
  ( OD1T                      27         OD1T         )
  ( SOI_MKR                   28         SOI_MKR      )
  ( RPO                       29         RPO          )
  ( CO                        30         CO           )
  ( M1                        31         M1           )
  ( M2                        32         M2           )
  ( M3                        33         M3           )
  ( M4                        34         M4           )
  ( M5                        35         M5           )
  ( M6                        36         M6           )
  ( M7                        37         M7           )
  ( M8                        38         M8           )
  ( M9                        39         M9           )
  ( M10                       40         M10          )
  ( M11                       41         M11          )
  ( M12                       42         M12          )
  ( M13                       43         M13          )
  ( M14                       44         M14          )
  ( DSDDMY                    45         DSDDMY       )
  ( POFUSE                    46         POFUSE       )
  ( MFUSE                     47         MFUSE        )
  ( OTP                       48         OTP          )
  ( RODMY                     49         RODMY        )
  ( SRM                       50         SRM          )
  ( VIA1                      51         VIA1         )
  ( VIA2                      52         VIA2         )
  ( VIA3                      53         VIA3         )
  ( VIA4                      54         VIA4         )
  ( VIA5                      55         VIA5         )
  ( VIA6                      56         VIA6         )
  ( VIA7                      57         VIA7         )
  ( VIA8                      58         VIA8         )
  ( VIA9                      59         VIA9         )
  ( VIA10                     60         VIA10        )
  ( VIA11                     61         VIA11        )
  ( VIA12                     62         VIA12        )
  ( VIA13                     63         VIA13        )
  ( VTD_N                     64         VTD_N        )
  ( ESD2DMY                   65         ESD2DMY      )
  ( ESD3                      66         ESD3         )
  ( VTH_N                     67         VTH_N        )
  ( VTH_P                     68         VTH_P        )
  ( VIAEXCL                   69         VIAEXCL      )
  ( DVIAEXCL                  70         DVIAEXCL     )
  ( HVII                      71         HVII         )
  ( HVNW                      72         HVNW         )
  ( Layer1                    73         Layer1       )
  ( AP                        74         AP           )
  ( PDK                       75         PDK          )
  ( CB                        76         CB           )
  ( CTM                       77         CTM          )
  ( CAP1TDMY                  78         CAP1TDM      )
  ( RFDMY                     79         RFDMY        )
  ( SRM_LOP                   80         SRM_LOP      )
  ( FLASH                     81         FLASH        )
  ( MW                        82         MW           )
  ( FLGT                      83         FLGT         )
  ( MPOL                      84         MPOL         )
  ( RV                        85         RV           )
  ( CB2                       86         CB2          )
  ( CTMDMY                    87         CTMDMY       )
  ( CBM                       88         CBM          )
  ( SOISUB                    89         SOISUB       )
  ( DCO                       90         DCO          )
  ( DMEXCL                    91         DMEXCL       )
  ( VAR                       92         VAR          )
  ( INDDMY                    93         INDDMY       )
  ( ESD1DMY                   94         ESD1DMY      )
  ( FW                        95         FW           )
  ( HVPW                      96         HVPW         )
  ( TOPMCON                   97         TOPMCON      )
  ( CSRDMY                    98         CSRDMY       )
  ( ODBLK                     99         ODBLK        )
  ( POBLK                     100        POBLK        )
  ( SNCT                      101        SNCT         )
  ( CROWN                     102        CROWN        )
  ( IP                        103        IP           )
  ( MOMDMY                    104        MOMDMY       )
  ( CBD                       105        CBD          )
  ( PMDMY                     106        PMDMY        )
  ( OVERLAP                   107        OVERLAP      )
  ( RAM1TDMY                  108        RAM1TDM      )
  ( LMARK                     109        LMARK        )
  ( BJTDMY                    110        BJTDMY       )
  ( PSUB2                     111        PSUB2        )
  ( HOTWL                     112        HOTWL        )
  ( SEALRING                  113        SEALRIN      )
  ( NWDMY                     114        NWDMY        )
  ( RPDMY                     115        RPDMY        )
  ( RMDMY                     116        RMDMY        )
  ( RH                        117        RH           )
  ( UBM                       118        UBM          )
  ( DIODMY                    119        DIODMY       )
  ( DGATE                     120        DGATE        )
  ( SRAMDMY                   121        SRAMDMY      )
  ( SDI                       122        SDI          )
  ( DPDMY                     123        DPDMY        )
  ( WAIVER                    124        WAIVER       )
  ( LOGO                      125        LOGO         )
  ( WBDMY                     126        WBDMY        )
  ( boundary                  127        boundar      )
  ( SRM_DOD                   128        SRM_DOD      )
  ( CU_PPI                    129        CU_PPI       )
  ( SRM_DPO                   130        SRM_DPO      )
  ( PV_P                      131        PV_P         )
  ( PV_N                      132        PV_N         )
  ( M0BLK                     133        M0BLK        )
  ( FTCDBLK                   134        FTCDBLK      )
  ( LVSDMY                    135        LVSDMY       )
  ( CB2_FC                    136        CB2_FC       )
  ( CB2_WB                    137        CB2_WB       )
  ( FINFET                    142        FINFET       )
  ( VTL_N_18                  144        VTL_N_18     )
  ( VT_N                      145        VT_N         )
  ( LOWMEDN                   146        LOWMEDN      )
  ( VIA0                      147        VIA0         )
  ( M0                        148        M0           )
  ( MRAM                      149        MRAM         )
  ( NSD                       150        NSD          )
  ( VTUL_N                    151        VTUL_N       )
  ( VTUL_P                    152        VTUL_P       )
  ( VIA0DMY                   153        VIA0DMY      )
  ( M0DMY                     154        M0DMY        )
  ( CDUDMY                    155        CDUDMY       )
  ( TCDDMY                    156        TCDDMY       )
  ( PMET_CUT                  157        PMET_CUT     )
  ( ICOVL                     158        ICOVL        )
  ( LUPWDMY                   159        LUPWDMY      )
  ( MRDMY                     165        MRDMY        )
  ( RES200                    166        RES200       )
  ( VDDDMY                    167        VDDDMY       )
  ( VSSDMY                    168        VSSDMY       )
  ( ESDIMP                    169        ESDIMP       )
  ( SENDMY                    170        SENDMY       )
  ( TSV                       171        TSV          )
  ( SR_ESD                    172        SR_ESD       )
  ( ex_R_rule                 173        ex_R_Rule    )
  ( EDRAM                     174        EDRAM        )
  ( DECAPDMY                  175        DECAPDMY     )
  ( UHVT_N                    176        UHVT_N       )
  ( UHVT_P                    177        UHVT_P       )
  ( CAPDMY                    178        CAPDMY       )
  ( eVTL_N                    179        eVTL_N       )
  ( eVTL_P                    180        eVTL_P       )
  ( temp                      181        temp         )
  ( R_rule                    182        R_rule       )
  ( FET                       183        FET          )
  ( VTNCEL                    184        VTNCEL       )
  ( VTPCEL                    185        VTPCEL       )
  ( HVD                       186        HVD          )
  ( SOI                       187        SOI          )
  ( LDDBLK                    188        LDDBLK       )
  ( CO2                       189        CO2          )
  ( PADDMY                    190        PADDMY       )
  ( TCLO                      191        TCLO         )
  ( POS                       192        POS          )
  ( ODRZ                      193        ODRZ         )
  ( RAM                       194        RAM          )
  ( ANVT                      256        ANVT         )
  ( AVT                       257        AVT          )
  ( EHVT_N                    258        EHVT_N       )
  ( EHVT_P                    259        EHVT_P       )
  ( IODMY                     260        IODMY        )
  ( PO_13                     261        PO_13        )
  ( SRM1                      262        SRM1         )
  ( CI_CAP                    263        CI_CAP       )
  ( WRV                       264        WRV          )
  ( SCL                       265        SCL          )
  ( SCL2                      266        SCL2         )
  ( BSV                       267        BSV          )
  ( HBL_TOP                   268        HBL_TOP      )
  ( HBL_BOT                   269        HBL_BOT      )
  ( HBC_TOP                   270        HBC_TOP      )
  ( HBC_BOT                   271        HBC_BOT      )
  ( CBB                       273        CBB          )
  ( BDCT                      274        BDCT         )
  ( SCPADDMY                  275        SCPADDMY     )
  ( BMZ                       276        BMZ          )
  ( BVZ                       277        BMV          )
  ( MATCHING_MOS              278        MATCHING_MOS )
  ( RRAM                      279        RRAM         )
  ( BMZ2                      280        BMZ2         )
  ( BVZ2                      281        BMV2         )
  ( BTSV                      282        BSTV         )
  ( HBL_BLK                   283        HBL_BLK      )
  ( SUPER_AVT                 284        SUPER_AVT    )
  ( IONW_LV                   285        IONW_LV      )
  ( FLASH1                    286        FLASH1       )
  ( PODE                      287        PODE         )
  ( SIOTP                     288        SIOTP        )
  ( IMSOR                     289        IMSOR        )
  ( IMSOR4                    290        IMSOR4       )
  ( FLASH2                    291        FLASH2       )
  ( CBRAM                     292        CBRAM        )
  ( FEDRAM                    293        FEDRAM       )
  ( CoWAM                     294        CoWAM        )
  ( CELLBLK                   295        CELLBLK      )
  ( CELLADD                   296        CELLADD      )
  ( chipBoundary              297        chipBoundary )
  ( RPO_DIODE                 298        RPO_DIODE    )
  ( TGO_IO                    299        TGO_IO       )
  ( HV                        300        HV           )
 ) ;techLayers

 techLayerPurposePriorities(
 ;layers are ordered from lowest to highest priority
 ;( LayerName                 Purpose    )
 ;( ---------                 -------    )
  ( PP                        boundary   )
  ( NP                        boundary   )
  ( NW                        boundary   )
  ( PDK                       boundary   )
  ( PP                        pin        )
  ( PP                        net        )
  ( NP                        pin        )
  ( NP                        net        )
  ( NW                        pin        )
  ( NW                        net        )
  ( PO                        net        )
  ( PDK                       pin        )
  ( PDK                       net        )
  ( CO                        net        )
  ( ref                       drawing    )
  ( DNW                       drawing    )
  ( PW                        drawing    )
  ( PW                        drawing1   )
  ( PW                        drawing2   )
  ( NW                        drawing    )
  ( NW                        drawing1   )
  ( NW                        drawing2   )
  ( OD                        drawing    )
  ( OD                        dummy1     )
  ( OD                        blockage   )
  ( OD_12                     drawing    )
  ( OD_15                     drawing    )
  ( OD_15                     ovrdrv     )
  ( OD_18                     drawing    )
  ( OD_18                     drawing1   )
  ( OD_18                     ovrdrv     )
  ( OD_18                     udrdrv     )
  ( OD_25                     drawing    )
  ( OD_25                     ovrdrv     )
  ( OD_25                     udrdrv     )
  ( OD_25                     LOWLK      )
  ( OD_25                     v_12       )
  ( OD_25                     v_15       )
  ( OD_33                     drawing    )
  ( OD_DECAP                  drawing    )
  ( PO                        drawing    )
  ( PO                        track      )
  ( PO                        rule1      )
  ( PO                        blockage   )
  ( PO_13                     drawing    )
  ( VTH_N                     drawing    )
  ( VTH_P                     drawing    )
  ( VTL_N                     drawing    )
  ( VTL_N                     drawing2   )
  ( VTL_P                     drawing    )
  ( VTL_P                     drawing2   )
  ( NT_N                      drawing    )
  ( NT_N                      Ncap_NTN   )
  ( NT_N                      dummya     )
  ( PP                        drawing    )
  ( NP                        drawing    )
  ( ESD3                      drawing    )
  ( ESD3                      drawing1   )
  ( LOGO                      drawing    )
  ( WBDMY                     drawing    )
  ( N10V                      drawing    )
  ( P10V                      drawing    )
  ( RPO                       drawing    )
  ( RPO                       drawing1   )
  ( RPO                       drawing2   )
  ( CO                        drawing    )
  ( CO                        grid       )
  ( CO                        blockage   )
  ( M0                        drawing    )
  ( VIA0                      drawing    )
  ( VIA0DMY                   dummy      )
  ( M0DMY                     dummy      )
  ( CDUDMY                    drawing    )
  ( CDUDMY                    dummy1     )
  ( CDUDMY                    dummy3     )
  ( CDUDMY                    dummy4     )
  ( CDUDMY                    dummy5     )
  ( CDUDMY                    dummy6     )
  ( CDUDMY                    dummy7     )
  ( CDUDMY                    test1      )
  ( CDUDMY                    test2      )
  ( CDUDMY                    test3      )
  ( CDUDMY                    test4      )
  ( CDUDMY                    test5      )
  ( CDUDMY                    test6      )
  ( CDUDMY                    test7      )
  ( CDUDMY                    test8      )
  ( CDUDMY                    drawing1   )
  ( CDUDMY                    drawing2   )
  ( CDUDMY                    drawing3   )
  ( CDUDMY                    drawing4   )
  ( CDUDMY                    drawing5   )
  ( CDUDMY                    drawing6   )
  ( CDUDMY                    drawing7   )
  ( CDUDMY                    drawing8   )
  ( TCDDMY                    drawing1   )
  ( TCDDMY                    drawing2   )
  ( TCDDMY                    drawing3   )
  ( TCDDMY                    drawing4   )
  ( TCDDMY                    drawing5   )
  ( TCDDMY                    drawing6   )
  ( TCDDMY                    drawing7   )
  ( TCDDMY                    drawing8   )
  ( ICOVL                     test0      )
  ( ICOVL                     test1      )
  ( ICOVL                     drawing1   )
  ( ICOVL                     drawing2   )
  ( ICOVL                     drawing3   )
  ( ICOVL                     drawing4   )
  ( ICOVL                     drawing5   )
  ( ICOVL                     drawing6   )
  ( ICOVL                     drawing7   )
  ( ICOVL                     drawing8   )
  ( ICOVL                     drawing9   )
  ( ICOVL                     drawinga   )
  ( ICOVL                     drawingb   )
  ( ICOVL                     drawingc   )
  ( ICOVL                     drawingd   )
  ( ICOVL                     dummy1     )
  ( ICOVL                     dummy2     )
  ( ICOVL                     dummy3     )
  ( ICOVL                     dummy4     )
  ( ICOVL                     dummy5     )
  ( ICOVL                     dummy6     )
  ( ICOVL                     dummy7     )
  ( ICOVL                     dummy8     )
  ( ICOVL                     dummy9     )
  ( ICOVL                     dummya     )
  ( ICOVL                     dummyb     )
  ( ICOVL                     dummyc     )
  ( NSD                       drawing    )
  ( M1                        drawing    )
  ( M1                        track      )
  ( M1                        dummy      )
  ( M1                        odummy     )
  ( M1                        grid       )
  ( M1                        blockage   )
  ( VIA1                      drawing    )
  ( VIA1                      dummy      )
  ( VIA1                      grid       )
  ( VIA1                      blockage   )
  ( M2                        drawing    )
  ( M2                        track      )
  ( M2                        dummy      )
  ( M2                        odummy     )
  ( M2                        grid       )
  ( M2                        blockage   )
  ( VIA2                      drawing    )
  ( VIA2                      dummy      )
  ( VIA2                      grid       )
  ( VIA2                      blockage   )
  ( M3                        drawing    )
  ( M3                        track      )
  ( M3                        dummy      )
  ( M3                        odummy     )
  ( M3                        grid       )
  ( M3                        blockage   )
  ( VIA3                      drawing    )
  ( VIA3                      dummy      )
  ( VIA3                      grid       )
  ( VIA3                      blockage   )
  ( M4                        drawing    )
  ( M4                        track      )
  ( M4                        dummy      )
  ( M4                        odummy     )
  ( M4                        grid       )
  ( M4                        blockage   )
  ( VIA4                      drawing    )
  ( VIA4                      dummy      )
  ( VIA4                      grid       )
  ( VIA4                      blockage   )
  ( M5                        drawing    )
  ( M5                        track      )
  ( M5                        dummy      )
  ( M5                        odummy     )
  ( M5                        grid       )
  ( M5                        blockage   )
  ( VIA5                      drawing    )
  ( VIA5                      dummy      )
  ( VIA5                      grid       )
  ( VIA5                      blockage   )
  ( M6                        drawing    )
  ( M6                        track      )
  ( M6                        dummy      )
  ( M6                        odummy     )
  ( M6                        grid       )
  ( M6                        blockage   )
  ( VIA6                      drawing    )
  ( VIA6                      dummy      )
  ( VIA6                      grid       )
  ( VIA6                      blockage   )
  ( M7                        drawing    )
  ( M7                        track      )
  ( M7                        dummy      )
  ( M7                        odummy     )
  ( M7                        grid       )
  ( M7                        blockage   )
  ( VIA7                      drawing    )
  ( VIA7                      grid       )
  ( VIA7                      blockage   )
  ( M8                        drawing    )
  ( M8                        track      )
  ( M8                        dummy      )
  ( M8                        grid       )
  ( M8                        blockage   )
  ( VIA8                      drawing    )
  ( VIA8                      grid       )
  ( VIA8                      blockage   )
  ( M9                        drawing    )
  ( M9                        track      )
  ( M9                        dummy      )
  ( M9                        grid       )
  ( M9                        blockage   )
  ( VIA1                      drawinga   )
  ( VIA2                      drawinga   )
  ( VIA3                      drawinga   )
  ( VIA4                      drawinga   )
  ( VIA5                      drawinga   )
  ( VIA6                      drawinga   )
  ( VIA7                      drawinga   )
  ( M1                        VNV        )
  ( M1                        NV         )
  ( M1                        testa      )
  ( M1                        dummy1     )
  ( M1                        dummy2     )
  ( M1                        dummy3     )
  ( M1                        dummy4     )
  ( M1                        dummy5     )
  ( M1                        dummy6     )
  ( M1                        dummy7     )
  ( M1                        dummy8     )
  ( M1                        dummy9     )
  ( M1                        dummya     )
  ( M1                        dummyb     )
  ( M1                        dummyc     )
  ( M1                        dummyd     )
  ( M1                        dummye     )
  ( M1                        dummyf     )
  ( M1                        dummyg     )
  ( M1                        dummyh     )
  ( M1                        dummyi     )
  ( M1                        dummyj     )
  ( M1                        dummyk     )
  ( M1                        dummyl     )
  ( M1                        dummym     )
  ( M1                        test0      )
  ( M1                        test1      )
  ( M1                        test2      )
  ( M1                        test3      )
  ( M1                        test7      )
  ( M1                        test8      )
  ( M1                        test9      )
  ( M2                        VNV        )
  ( M2                        NV         )
  ( M2                        testa      )
  ( M2                        dummy1     )
  ( M2                        dummy2     )
  ( M2                        dummy3     )
  ( M2                        dummy4     )
  ( M2                        dummy5     )
  ( M2                        dummy6     )
  ( M2                        dummy7     )
  ( M2                        dummy8     )
  ( M2                        dummy9     )
  ( M2                        dummya     )
  ( M2                        dummyb     )
  ( M2                        dummyc     )
  ( M2                        dummyd     )
  ( M2                        dummye     )
  ( M2                        dummyf     )
  ( M2                        dummyg     )
  ( M2                        dummyh     )
  ( M2                        dummyi     )
  ( M2                        dummyj     )
  ( M2                        dummyk     )
  ( M2                        dummyl     )
  ( M2                        dummym     )
  ( M2                        test0      )
  ( M2                        test1      )
  ( M2                        test2      )
  ( M2                        test3      )
  ( M2                        test7      )
  ( M2                        test8      )
  ( M2                        test9      )
  ( M3                        VNV        )
  ( M3                        NV         )
  ( M3                        testa      )
  ( M3                        dummy1     )
  ( M3                        dummy2     )
  ( M3                        dummy3     )
  ( M3                        dummy4     )
  ( M3                        dummy5     )
  ( M3                        dummy6     )
  ( M3                        dummy7     )
  ( M3                        dummy8     )
  ( M3                        dummy9     )
  ( M3                        dummya     )
  ( M3                        dummyb     )
  ( M3                        dummyc     )
  ( M3                        dummyd     )
  ( M3                        dummye     )
  ( M3                        dummyf     )
  ( M3                        dummyg     )
  ( M3                        dummyh     )
  ( M3                        dummyi     )
  ( M3                        dummyj     )
  ( M3                        dummyk     )
  ( M3                        dummyl     )
  ( M3                        dummym     )
  ( M3                        test0      )
  ( M3                        test1      )
  ( M3                        test2      )
  ( M3                        test3      )
  ( M3                        test7      )
  ( M3                        test8      )
  ( M3                        test9      )
  ( M4                        VNV        )
  ( M4                        NV         )
  ( M4                        testa      )
  ( M4                        dummy1     )
  ( M4                        dummy2     )
  ( M4                        dummy3     )
  ( M4                        dummy4     )
  ( M4                        dummy5     )
  ( M4                        dummy6     )
  ( M4                        dummy7     )
  ( M4                        dummy8     )
  ( M4                        dummy9     )
  ( M4                        dummya     )
  ( M4                        dummyb     )
  ( M4                        dummyc     )
  ( M4                        dummyd     )
  ( M4                        dummye     )
  ( M4                        dummyf     )
  ( M4                        dummyg     )
  ( M4                        dummyh     )
  ( M4                        dummyi     )
  ( M4                        dummyj     )
  ( M4                        dummyk     )
  ( M4                        dummyl     )
  ( M4                        dummym     )
  ( M4                        test0      )
  ( M4                        test1      )
  ( M4                        test2      )
  ( M4                        test3      )
  ( M4                        test7      )
  ( M4                        test8      )
  ( M4                        test9      )
  ( M5                        VNV        )
  ( M5                        NV         )
  ( M5                        testa      )
  ( M5                        dummy1     )
  ( M5                        dummy2     )
  ( M5                        dummy3     )
  ( M5                        dummy4     )
  ( M5                        dummy5     )
  ( M5                        dummy6     )
  ( M5                        dummy7     )
  ( M5                        dummy8     )
  ( M5                        dummy9     )
  ( M5                        dummya     )
  ( M5                        dummyb     )
  ( M5                        dummyc     )
  ( M5                        dummyd     )
  ( M5                        dummye     )
  ( M5                        dummyf     )
  ( M5                        dummyg     )
  ( M5                        dummyh     )
  ( M5                        dummyi     )
  ( M5                        dummyj     )
  ( M5                        dummyk     )
  ( M5                        dummyl     )
  ( M5                        dummym     )
  ( M5                        test0      )
  ( M5                        test1      )
  ( M5                        test2      )
  ( M5                        test3      )
  ( M5                        test7      )
  ( M5                        test8      )
  ( M5                        test9      )
  ( M6                        VNV        )
  ( M6                        NV         )
  ( M6                        testa      )
  ( M6                        dummy1     )
  ( M6                        dummy2     )
  ( M6                        dummy3     )
  ( M6                        dummy4     )
  ( M6                        dummy5     )
  ( M6                        dummy6     )
  ( M6                        dummy7     )
  ( M6                        dummy8     )
  ( M6                        dummy9     )
  ( M6                        dummya     )
  ( M6                        dummyb     )
  ( M6                        dummyc     )
  ( M6                        dummyd     )
  ( M6                        dummye     )
  ( M6                        dummyf     )
  ( M6                        dummyg     )
  ( M6                        dummyh     )
  ( M6                        dummyi     )
  ( M6                        dummyj     )
  ( M6                        dummyk     )
  ( M6                        dummyl     )
  ( M6                        dummym     )
  ( M6                        test0      )
  ( M6                        test1      )
  ( M6                        test2      )
  ( M6                        test3      )
  ( M6                        test7      )
  ( M6                        test8      )
  ( M6                        test9      )
  ( M7                        VNV        )
  ( M7                        NV         )
  ( M7                        testa      )
  ( M7                        dummy1     )
  ( M7                        dummy2     )
  ( M7                        dummy3     )
  ( M7                        dummy4     )
  ( M7                        dummy5     )
  ( M7                        dummy6     )
  ( M7                        dummy7     )
  ( M7                        dummy8     )
  ( M7                        dummy9     )
  ( M7                        dummya     )
  ( M7                        dummyb     )
  ( M7                        dummyc     )
  ( M7                        dummyd     )
  ( M7                        dummye     )
  ( M7                        dummyf     )
  ( M7                        dummyg     )
  ( M7                        dummyh     )
  ( M7                        dummyi     )
  ( M7                        dummyj     )
  ( M7                        dummyk     )
  ( M7                        dummyl     )
  ( M7                        dummym     )
  ( M7                        test0      )
  ( M7                        test1      )
  ( M7                        test2      )
  ( M7                        test3      )
  ( M7                        test7      )
  ( M7                        test8      )
  ( M7                        test9      )
  ( M8                        VNV        )
  ( M8                        NV         )
  ( M8                        testa      )
  ( M8                        dummy1     )
  ( M8                        dummy2     )
  ( M8                        dummy3     )
  ( M8                        dummy4     )
  ( M8                        dummy5     )
  ( M8                        dummy6     )
  ( M8                        dummy7     )
  ( M8                        dummy8     )
  ( M8                        dummy9     )
  ( M8                        dummya     )
  ( M8                        dummyb     )
  ( M8                        dummyc     )
  ( M8                        dummyd     )
  ( M8                        dummye     )
  ( M8                        dummyf     )
  ( M8                        dummyg     )
  ( M8                        dummyh     )
  ( M8                        dummyi     )
  ( M8                        dummyj     )
  ( M8                        dummyk     )
  ( M8                        dummyl     )
  ( M8                        dummym     )
  ( M8                        test0      )
  ( M8                        test1      )
  ( M8                        test2      )
  ( M8                        test3      )
  ( M8                        test7      )
  ( M8                        test8      )
  ( M8                        test9      )
  ( M9                        VNV        )
  ( M9                        NV         )
  ( M9                        testa      )
  ( M9                        dummy1     )
  ( M9                        dummy2     )
  ( M9                        dummy3     )
  ( M9                        dummy4     )
  ( M9                        dummy5     )
  ( M9                        dummy6     )
  ( M9                        dummy7     )
  ( M9                        dummy8     )
  ( M9                        dummy9     )
  ( M9                        dummya     )
  ( M9                        dummyb     )
  ( M9                        dummyc     )
  ( M9                        dummyd     )
  ( M9                        dummye     )
  ( M9                        dummyf     )
  ( M9                        dummyg     )
  ( M9                        dummyh     )
  ( M9                        dummyi     )
  ( M9                        dummyj     )
  ( M9                        dummyk     )
  ( M9                        dummyl     )
  ( M9                        dummym     )
  ( M9                        test0      )
  ( M9                        test1      )
  ( M9                        test2      )
  ( M9                        test3      )
  ( M9                        test7      )
  ( M9                        test8      )
  ( M9                        test9      )
  ( CB                        drawing    )
  ( CB                        drawinga   )
  ( CB2                       drawing    )
  ( CB2                       drawinga   )
  ( CB2                       drawing1   )
  ( CB2                       drawing2   )
  ( CB2                       testa      )
  ( CB2_FC                    drawing    )
  ( CB2_WB                    drawing1   )
  ( AP                        drawing    )
  ( AP                        track      )
  ( AP                        drawing1   )
  ( AP                        drawing2   )
  ( AP                        drawing3   )
  ( AP                        grid       )
  ( AP                        blockage   )
  ( AP                        dummy      )
  ( AP                        dummy1     )
  ( AP                        dummy2     )
  ( AP                        dummy3     )
  ( AP                        dummy4     )
  ( AP                        dummy5     )
  ( AP                        pin        )
  ( AP                        test1      )
  ( AP                        test2      )
  ( AP                        drawinga   )
  ( AP                        drawingb   )
  ( AP                        drawingc   )
  ( AP                        drawingd   )
  ( AP                        drawinge   )
  ( AP                        dummya     )
  ( AP                        dummyb     )
  ( AP                        dummyc     )
  ( AP                        dummyd     )
  ( PM                        drawing    )
  ( PM                        drawing1   )
  ( PM                        drawing2   )
  ( PM                        drawing3   )
  ( PM                        drawinga   )
  ( PM                        drawingb   )
  ( PM                        drawingc   )
  ( PM                        drawingd   )
  ( PM                        drawinge   )
  ( PM                        drawingf   )
  ( PM                        rule1      )
  ( PM                        dummy      )
  ( PMET_CUT                  drawing    )
  ( PMET_CUT                  drawing1   )
  ( FW                        drawing    )
  ( FW                        al         )
  ( POFUSE                    drawing    )
  ( POFUSE                    drawing1   )
  ( POFUSE                    drawing2   )
  ( MFUSE                     drawing    )
  ( MFUSE                     drawing1   )
  ( MFUSE                     drawing2   )
  ( MFUSE                     drawing3   )
  ( MFUSE                     drawing4   )
  ( MFUSE                     drawing5   )
  ( PMDMY                     drawing    )
  ( LMARK                     drawing    )
  ( CoWAM                     drawing    )
  ( SEALRING                  drawing    )
  ( SEALRING                  drawing1   )
  ( SEALRING                  drawing2   )
  ( SEALRING                  drawing5   )
  ( SEALRING                  drawing7   )
  ( SEALRING                  drawinga   )
  ( SEALRING                  dummya     )
  ( CSRDMY                    drawing    )
  ( CSRDMY                    drawing1   )
  ( CSRDMY                    drawing2   )
  ( CSRDMY                    drawing3   )
  ( CSRDMY                    drawing4   )
  ( CSRDMY                    drawing5   )
  ( RV                        drawing    )
  ( RV                        drawing1   )
  ( RV                        drawing2   )
  ( RV                        grid       )
  ( RV                        blockage   )
  ( RV                        drawinga   )
  ( RV                        drawingb   )
  ( RV                        drawingc   )
  ( RV                        drawingd   )
  ( RV                        dummy1     )
  ( WRV                       drawing    )
  ( CBD                       drawing    )
  ( CBD                       drawinga   )
  ( UBM                       drawing    )
  ( UBM                       dummy1     )
  ( UBM                       dummy2     )
  ( UBM                       dummya     )
  ( UBM                       pin        )
  ( IP                        drawing    )
  ( CAP1TDMY                  drawing    )
  ( VTD_N                     drawing    )
  ( CTM                       drawing    )
  ( CTM                       drawing1   )
  ( CBM                       drawing    )
  ( CBM                       drawing1   )
  ( OD                        drain      )
  ( OD                        drain1     )
  ( SOI_MKR                   gated      )
  ( SOI_MKR                   soibt      )
  ( SOI_MKR                   decap      )
  ( SOI_MKR                   vpfc       )
  ( OD                        drawing2   )
  ( PO                        drawing2   )
  ( SOISUB                    drawing    )
  ( SOI                       ndop       )
  ( SOI                       pdop       )
  ( SOI                       NLDDV      )
  ( SOI                       PLDDV      )
  ( SOI                       NLDDH      )
  ( SOI                       PLDDH      )
  ( SOI                       drawing    )
  ( FET                       src        )
  ( FET                       n_a        )
  ( FET                       n_b        )
  ( FET                       p_a        )
  ( FET                       p_b        )
  ( FET                       L01S       )
  ( FET                       NILD       )
  ( FET                       PILD       )
  ( VTNCEL                    drawing    )
  ( VTPCEL                    drawing    )
  ( DCO                       drawing    )
  ( DCO                       drawing1   )
  ( DCO                       drawing2   )
  ( SRM_LOP                   dpsrm      )
  ( SRM_LOP                   dummy1     )
  ( SRM_LOP                   dummy2     )
  ( SRM_LOP                   dummy3     )
  ( SRM_LOP                   dummy4     )
  ( SRM_LOP                   dummy5     )
  ( SRM_LOP                   dummy6     )
  ( SRM_LOP                   dummy7     )
  ( SRM_LOP                   dummy8     )
  ( SRM_DOD                   dummy1     )
  ( SRM_DOD                   dummy2     )
  ( SRM_DOD                   dummy3     )
  ( SRM_DOD                   dummy4     )
  ( SRM_DOD                   dummy5     )
  ( SRM_DOD                   dummy6     )
  ( SRM_DOD                   dummy7     )
  ( SRM_DOD                   dummy8     )
  ( SRM_DOD                   dummy9     )
  ( SRM_DOD                   dummya     )
  ( SRM_DOD                   dummyb     )
  ( SRM_DOD                   dummyc     )
  ( SRM_DOD                   dummyd     )
  ( SRM_DOD                   dummye     )
  ( SRM_DOD                   dummyf     )
  ( SRM_DOD                   dummyg     )
  ( SRM_DPO                   dummy1     )
  ( SRM_DPO                   dummy2     )
  ( SRM_DPO                   dummy3     )
  ( SRM_DPO                   dummy4     )
  ( SRM_DPO                   dummy5     )
  ( SRM_DPO                   dummy6     )
  ( SRM_DPO                   dummy7     )
  ( SRAMDMY                   waive      )
  ( SRAMDMY                   passgate   )
  ( SRAMDMY                   allsram    )
  ( SRAMDMY                   cvss_sram  )
  ( SRAMDMY                   periphery  )
  ( SRAMDMY                   periphery_g )
  ( SRAMDMY                   dummy6     )
  ( SRAMDMY                   dummy7     )
  ( SRAMDMY                   dummy8     )
  ( SRAMDMY                   dummy9     )
  ( SRAMDMY                   drawing1   )
  ( SRAMDMY                   drawing2   )
  ( SRAMDMY                   drawing3   )
  ( FLASH                     drawing    )
  ( FLASH                     testa      )
  ( FLASH                     testb      )
  ( FLASH                     testc      )
  ( FLASH                     drawing1   )
  ( FLASH                     drawing2   )
  ( FLASH                     drawing3   )
  ( FLASH                     drawing4   )
  ( FLASH                     drawing5   )
  ( FLASH                     drawing6   )
  ( FLASH                     drawing7   )
  ( FLASH                     drawing8   )
  ( FLASH                     drawing9   )
  ( FLASH                     test0      )
  ( FLASH                     test1      )
  ( FLASH                     test2      )
  ( FLASH                     test3      )
  ( FLASH                     test4      )
  ( FLASH                     test5      )
  ( FLASH                     test6      )
  ( FLASH                     test7      )
  ( FLASH                     test8      )
  ( FLASH                     test9      )
  ( FLASH                     dummya     )
  ( FLASH                     dummyb     )
  ( FLASH                     dummyc     )
  ( FLASH                     dummyd     )
  ( FLASH                     dummye     )
  ( FLASH                     dummyf     )
  ( FLASH                     dummyg     )
  ( FLASH                     dummyh     )
  ( FLASH                     dummyi     )
  ( FLASH                     dummyj     )
  ( FLASH                     dummyk     )
  ( FLASH                     dummyl     )
  ( FLASH                     dummym     )
  ( FLASH                     drawinga   )
  ( FLASH                     drawingb   )
  ( FLASH                     drawingc   )
  ( FLASH                     drawingd   )
  ( FLASH                     drawinge   )
  ( FLASH1                    drawing1   )
  ( FLASH1                    drawing2   )
  ( FLASH1                    drawing3   )
  ( FLASH1                    drawing4   )
  ( FLASH1                    drawing5   )
  ( FLASH1                    drawing6   )
  ( FLASH1                    drawing7   )
  ( FLASH1                    drawing8   )
  ( FLASH1                    drawing9   )
  ( FLASH1                    drawinga   )
  ( FLASH1                    drawingb   )
  ( FLASH1                    drawingc   )
  ( FLASH1                    drawingd   )
  ( FLASH1                    drawinge   )
  ( FLASH1                    drawingf   )
  ( FLASH1                    drawingh   )
  ( FLASH1                    dummya     )
  ( FLASH1                    dummyb     )
  ( FLASH1                    dummyc     )
  ( FLASH1                    dummyd     )
  ( FLASH1                    dummye     )
  ( FLASH1                    dummyf     )
  ( FLASH1                    dummyg     )
  ( FLASH1                    dummyh     )
  ( FLASH1                    dummyi     )
  ( FLASH1                    dummyj     )
  ( FLASH1                    dummyk     )
  ( FLASH1                    dummyl     )
  ( FLASH1                    dummym     )
  ( FLASH1                    dummyn     )
  ( FLASH1                    dummyo     )
  ( FLASH1                    dummyp     )
  ( FLASH1                    dummyq     )
  ( FLASH1                    dummyr     )
  ( FLASH2                    dummyd     )
  ( FLASH2                    dummye     )
  ( FLASH2                    dummyf     )
  ( FLASH2                    dummyg     )
  ( FLASH2                    dummyh     )
  ( FLASH2                    dummyi     )
  ( FLASH2                    dummyj     )
  ( FLASH2                    dummyk     )
  ( FLASH2                    dummyl     )
  ( FLASH2                    dummym     )
  ( FLASH2                    dummyn     )
  ( FLASH2                    dummyo     )
  ( FLASH2                    dummyp     )
  ( FLASH2                    dummyq     )
  ( FLASH2                    dummyr     )
  ( FLASH2                    dummy      )
  ( FLASH2                    drawing1   )
  ( FLASH2                    drawing2   )
  ( FLASH2                    drawing3   )
  ( FLASH2                    drawing4   )
  ( FLASH2                    drawing5   )
  ( FLASH2                    drawing6   )
  ( FLASH2                    drawing7   )
  ( FLASH2                    drawing8   )
  ( FLASH2                    drawing9   )
  ( FLASH2                    drawinga   )
  ( FLASH2                    drawingb   )
  ( FLASH2                    drawingc   )
  ( FLASH2                    drawingd   )
  ( FLASH2                    drawinge   )
  ( FLASH2                    drawingf   )
  ( FLASH2                    drawingh   )
  ( FLASH2                    dummya     )
  ( FLASH2                    dummyb     )
  ( FLASH2                    dummyc     )
  ( FLASH2                    test0      )
  ( FLASH2                    test1      )
  ( FLASH2                    test2      )
  ( FLASH2                    test3      )
  ( FLASH2                    test4      )
  ( FLASH2                    test5      )
  ( FLASH2                    test6      )
  ( FLASH2                    test7      )
  ( FLASH2                    test8      )
  ( FLASH2                    test9      )
  ( FLASH2                    testa      )
  ( FLASH2                    testb      )
  ( FLASH2                    testc      )
  ( FLASH2                    testd      )
  ( FLASH2                    teste      )
  ( FLASH2                    testg      )
  ( SIOTP                     drawing    )
  ( MW                        drawing    )
  ( FLGT                      drawing    )
  ( MPOL                      drawing    )
  ( HVII                      drawing    )
  ( HVNW                      drawing    )
  ( HVPW                      drawing    )
  ( TOPMCON                   drawing    )
  ( OD1T                      drawing    )
  ( CLDD                      drawing    )
  ( CLDD                      drawing1   )
  ( SNCT                      drawing    )
  ( CROWN                     drawing    )
  ( CROWN                     drawing1   )
  ( CROWN                     drawing2   )
  ( P3                        drawing    )
  ( P3                        drawing1   )
  ( RAM1TDMY                  drawing    )
  ( RAM1TDMY                  drawing1   )
  ( RAM1TDMY                  drawing2   )
  ( RAM1TDMY                  drawing3   )
  ( RAM1TDMY                  drawing4   )
  ( RAM1TDMY                  drawing5   )
  ( RAM1TDMY                  drawing6   )
  ( RAM1TDMY                  drawing7   )
  ( RODMY                     drawing    )
  ( CO2                       drawing    )
  ( CO2                       drawing1   )
  ( SRM                       drawing    )
  ( SRM                       drawing1   )
  ( SRM                       drawing2   )
  ( SRM                       drawing3   )
  ( SRM                       drawing4   )
  ( SRM                       drawing5   )
  ( SRM                       drawing6   )
  ( SRM                       drawing7   )
  ( SRM                       drawing8   )
  ( SRM                       drawing9   )
  ( SRM                       test0      )
  ( SRM                       test1      )
  ( SRM                       test2      )
  ( SRM                       test3      )
  ( SRM                       test4      )
  ( SRM                       test5      )
  ( SRM                       test6      )
  ( SRM                       test7      )
  ( SRM                       test8      )
  ( SRM                       test9      )
  ( SRM                       testa      )
  ( SRM                       testb      )
  ( SRM                       testc      )
  ( SRM                       dummy1     )
  ( SRM                       dummya     )
  ( SRM                       dummyb     )
  ( SRM                       dummyc     )
  ( SRM                       dummyd     )
  ( SRM                       dummye     )
  ( SRM                       dummyf     )
  ( SRM                       dummyg     )
  ( SRM                       dummyh     )
  ( SRM                       dummyi     )
  ( SRM                       dummyj     )
  ( SRM                       dummyk     )
  ( SRM                       dummyl     )
  ( SRM                       dummym     )
  ( SRM                       dummy3     )
  ( SRM                       dummy4     )
  ( SRM                       dummy5     )
  ( SRM                       dummy6     )
  ( SRM                       dummy7     )
  ( SRM                       dummy8     )
  ( SRM                       dummy9     )
  ( SRM                       drawinga   )
  ( SRM                       drawingb   )
  ( SRM                       drawingc   )
  ( SRM                       drawingd   )
  ( SRM                       drawinge   )
  ( SRM1                      dummy1     )
  ( SRM1                      dummy2     )
  ( SRM1                      dummy3     )
  ( SRM1                      dummy4     )
  ( SRM1                      dummy5     )
  ( SRM1                      dummy6     )
  ( SRM1                      dummy7     )
  ( SRM1                      dummy8     )
  ( SRM1                      dummy9     )
  ( SRM1                      dummya     )
  ( SRM1                      dummyb     )
  ( SRM1                      dummyc     )
  ( SRM1                      dummyd     )
  ( SRM1                      dummye     )
  ( SRM1                      dummyf     )
  ( SRM1                      dummyg     )
  ( SRM1                      dummyh     )
  ( SRM1                      dummyi     )
  ( SRM1                      dummyj     )
  ( SRM1                      dummyk     )
  ( FINFET                    boundary   )
  ( FINFET                    dummy      )
  ( FINFET                    dummy1     )
  ( FINFET                    dummy6     )
  ( FINFET                    dummyg     )
  ( FINFET                    dummyh     )
  ( FINFET                    dummy7     )
  ( FINFET                    dummyi     )
  ( FINFET                    dummy8     )
  ( FINFET                    dummy9     )
  ( FINFET                    dummyf     )
  ( FINFET                    dummya     )
  ( FINFET                    dummyb     )
  ( FINFET                    dummyc     )
  ( FINFET                    dummyd     )
  ( FINFET                    dummye     )
  ( OVERLAP                   drawing    )
  ( prBoundary                drawing    )
  ( BJTDMY                    drawing    )
  ( PSUB2                     drawing    )
  ( HOTWL                     drawing    )
  ( NWDMY                     drawing    )
  ( NWDMY                     lvs        )
  ( IONW_LV                   drawing    )
  ( RPDMY                     drawing    )
  ( RPDMY                     lvs        )
  ( RPDMY                     dummy1     )
  ( RPDMY                     dummy2     )
  ( RMDMY                     drawing1   )
  ( RMDMY                     drawing2   )
  ( RMDMY                     drawing3   )
  ( RMDMY                     drawing4   )
  ( RMDMY                     drawing5   )
  ( RMDMY                     drawing6   )
  ( RMDMY                     drawing7   )
  ( RMDMY                     drawing8   )
  ( RMDMY                     drawing9   )
  ( RMDMY                     drawinga   )
  ( RMDMY                     drawingb   )
  ( RMDMY                     drawingc   )
  ( RMDMY                     drawingd   )
  ( RMDMY                     drawingh   )
  ( RH                        drawing    )
  ( RH                        drawing1   )
  ( RH                        drawing2   )
  ( RH                        drawing4   )
  ( DIODMY                    drawing    )
  ( DIODMY                    dummya     )
  ( DIODMY                    dummyb     )
  ( DIODMY                    dummyc     )
  ( DIODMY                    dummyd     )
  ( DIODMY                    dummye     )
  ( SDI                       drawing    )
  ( SDI                       drawing3   )
  ( SDI                       drawing4   )
  ( SDI                       drawing5   )
  ( DPDMY                     drawing    )
  ( text                      drawing    )
  ( M1                        pin        )
  ( M1                        text       )
  ( M1                        net        )
  ( M1                        boundary   )
  ( M1                        prob       )
  ( M2                        pin        )
  ( M2                        text       )
  ( M2                        net        )
  ( M2                        boundary   )
  ( M2                        prob       )
  ( M3                        pin        )
  ( M3                        text       )
  ( M3                        net        )
  ( M3                        boundary   )
  ( M3                        prob       )
  ( M4                        pin        )
  ( M4                        text       )
  ( M4                        net        )
  ( M4                        boundary   )
  ( M4                        prob       )
  ( M5                        pin        )
  ( M5                        text       )
  ( M5                        net        )
  ( M5                        boundary   )
  ( M5                        prob       )
  ( M6                        pin        )
  ( M6                        text       )
  ( M6                        net        )
  ( M6                        boundary   )
  ( M6                        prob       )
  ( M7                        pin        )
  ( M7                        text       )
  ( M7                        net        )
  ( M7                        boundary   )
  ( M7                        prob       )
  ( M8                        pin        )
  ( M8                        text       )
  ( M8                        net        )
  ( M8                        boundary   )
  ( M8                        prob       )
  ( M9                        pin        )
  ( M9                        text       )
  ( M9                        net        )
  ( M9                        boundary   )
  ( M9                        prob       )
  ( VIA1                      net        )
  ( VIA1                      pin        )
  ( VIA1                      boundary   )
  ( VIA2                      net        )
  ( VIA2                      pin        )
  ( VIA2                      boundary   )
  ( VIA3                      net        )
  ( VIA3                      pin        )
  ( VIA3                      boundary   )
  ( VIA4                      net        )
  ( VIA4                      pin        )
  ( VIA4                      boundary   )
  ( VIA5                      net        )
  ( VIA5                      pin        )
  ( VIA5                      boundary   )
  ( VIA6                      net        )
  ( VIA6                      pin        )
  ( VIA6                      boundary   )
  ( VIA7                      net        )
  ( VIA7                      pin        )
  ( VIA7                      boundary   )
  ( VIA8                      net        )
  ( VIA8                      pin        )
  ( VIA8                      boundary   )
  ( PO                        text       )
  ( AP                        text       )
  ( OD                        pin        )
  ( CU_PPI                    pin        )
  ( PO                        pin        )
  ( RV                        pin        )
  ( PO                        lvs        )
  ( OD                        dummy      )
  ( PO                        dummy      )
  ( PO                        dummy1     )
  ( SR_ESD                    drawing    )
  ( marker                    error      )
  ( marker                    warning    )
  ( prBoundary                label      )
  ( prBoundary                boundary   )
  ( CO                        pin        )
  ( OD                        net        )
  ( RV                        net        )
  ( AP                        net        )
  ( CO                        boundary   )
  ( OD                        boundary   )
  ( PO                        boundary   )
  ( AP                        boundary   )
  ( RV                        boundary   )
  ( VTUL_N                    drawing    )
  ( eVTL_N                    drawing    )
  ( VTUL_P                    drawing    )
  ( eVTL_P                    drawing    )
  ( instance                  drawing    )
  ( instance                  label      )
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
  ( grid                      drawing    )
  ( grid                      drawing1   )
  ( axis                      drawing    )
  ( border                    drawing    )
  ( align                     drawing    )
  ( device                    drawing    )
  ( device                    drawing1   )
  ( device                    drawing2   )
  ( device                    annotate   )
  ( device                    label      )
  ( wire                      drawing    )
  ( wire                      label      )
  ( wire                      flight     )
  ( select                    drawing    )
  ( drive                     drawing    )
  ( hiz                       drawing    )
  ( pin                       drawing    )
  ( pin                       annotate   )
  ( pin                       label      )
  ( resist                    drawing    )
  ( spike                     drawing    )
  ( supply                    drawing    )
  ( unknown                   drawing    )
  ( unset                     drawing    )
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
  ( edgeLayer                 drawing    )
  ( edgeLayer                 pin        )
  ( changedLayer              tool0      )
  ( changedLayer              tool1      )
  ( snap                      drawing    )
  ( stretch                   drawing    )
  ( Row                       drawing    )
  ( Row                       label      )
  ( Group                     drawing    )
  ( Group                     label      )
  ( Cannotoccupy              drawing    )
  ( Cannotoccupy              boundary   )
  ( boundary                  drawing    )
  ( boundary                  boundary   )
  ( Canplace                  drawing    )
  ( background                drawing    )
  ( text                      drawing1   )
  ( text                      drawing2   )
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
  ( hardFence                 drawing    )
  ( softFence                 drawing    )
  ( INDDMY                    drawing    )
  ( INDDMY                    drawing1   )
  ( INDDMY                    drawing2   )
  ( INDDMY                    drawing3   )
  ( INDDMY                    drawing4   )
  ( INDDMY                    drawing5   )
  ( INDDMY                    drawing6   )
  ( INDDMY                    drawing7   )
  ( INDDMY                    drawing8   )
  ( INDDMY                    drawing9   )
  ( INDDMY                    drawinga   )
  ( INDDMY                    drawingb   )
  ( INDDMY                    drawingc   )
  ( INDDMY                    drawingd   )
  ( INDDMY                    drawinge   )
  ( INDDMY                    rad        )
  ( INDDMY                    dummy1     )
  ( INDDMY                    dummy2     )
  ( INDDMY                    dummy3     )
  ( INDDMY                    dummy4     )
  ( INDDMY                    dummy5     )
  ( INDDMY                    dummy6     )
  ( INDDMY                    dummy7     )
  ( INDDMY                    dummy8     )
  ( INDDMY                    dummy9     )
  ( INDDMY                    dummya     )
  ( INDDMY                    dummyb     )
  ( INDDMY                    dummyc     )
  ( INDDMY                    dummyd     )
  ( INDDMY                    test0      )
  ( INDDMY                    test1      )
  ( INDDMY                    test2      )
  ( INDDMY                    test3      )
  ( INDDMY                    test4      )
  ( ESD1DMY                   drawing    )
  ( ESD2DMY                   drawing    )
  ( ESDIMP                    drawing    )
  ( CTMDMY                    drawing    )
  ( CTMDMY                    drawing1   )
  ( CTMDMY                    drawing2   )
  ( CTMDMY                    drawing3   )
  ( CTMDMY                    drawing4   )
  ( CTMDMY                    drawing5   )
  ( CTMDMY                    drawing6   )
  ( CTMDMY                    drawing7   )
  ( CTMDMY                    drawing8   )
  ( CTMDMY                    drawing9   )
  ( CTMDMY                    drawinga   )
  ( CTMDMY                    testa      )
  ( DMEXCL                    dummy1     )
  ( DMEXCL                    dummy2     )
  ( DMEXCL                    dummy3     )
  ( DMEXCL                    dummy4     )
  ( DMEXCL                    dummy5     )
  ( DMEXCL                    dummy6     )
  ( DMEXCL                    dummy7     )
  ( DMEXCL                    dummy8     )
  ( DMEXCL                    dummy9     )
  ( DMEXCL                    dummya     )
  ( DMEXCL                    dummyb     )
  ( DMEXCL                    dummyc     )
  ( DMEXCL                    dummyd     )
  ( DVIAEXCL                  dummy1     )
  ( DVIAEXCL                  dummy2     )
  ( DVIAEXCL                  dummy3     )
  ( DVIAEXCL                  dummy4     )
  ( DVIAEXCL                  dummy5     )
  ( DVIAEXCL                  dummy6     )
  ( DVIAEXCL                  dummy7     )
  ( DVIAEXCL                  dummy8     )
  ( DVIAEXCL                  dummy9     )
  ( DVIAEXCL                  dummya     )
  ( DVIAEXCL                  dummyb     )
  ( DVIAEXCL                  dummyc     )
  ( P1VNIX                    drawing    )
  ( N1VNIX                    drawing    )
  ( OTP                       dummy      )
  ( FTCDBLK                   dummy      )
  ( ODBLK                     dummy      )
  ( POBLK                     dummy      )
  ( POBLK                     drawinga   )
  ( M0BLK                     dummy      )
  ( RFDMY                     drawing    )
  ( RFDMY                     drawing1   )
  ( RFDMY                     drawing3   )
  ( RFDMY                     drawing4   )
  ( RFDMY                     drawinga   )
  ( RFDMY                     drawingb   )
  ( RFDMY                     drawingc   )
  ( RFDMY                     drawingd   )
  ( RFDMY                     drawinge   )
  ( RFDMY                     drawingf   )
  ( RFDMY                     drawing7   )
  ( RFDMY                     drawing8   )
  ( RFDMY                     drawing9   )
  ( RFDMY                     drawing5   )
  ( RFDMY                     drawing6   )
  ( VIAEXCL                   dummy      )
  ( VIAEXCL                   dummy1     )
  ( VIAEXCL                   dummy2     )
  ( VIAEXCL                   dummy3     )
  ( VIAEXCL                   dummy4     )
  ( VIAEXCL                   dummy5     )
  ( VIAEXCL                   dummy6     )
  ( VIAEXCL                   dummy7     )
  ( VIAEXCL                   dummy8     )
  ( VIAEXCL                   dummy9     )
  ( VIAEXCL                   dummya     )
  ( VIAEXCL                   dummyb     )
  ( VIAEXCL                   dummyc     )
  ( VIAEXCL                   drawing    )
  ( VAR                       drawing    )
  ( VAR                       drawing1   )
  ( VAR                       drawing2   )
  ( VAR                       drawing3   )
  ( VAR                       drawinga   )
  ( VAR                       drawingb   )
  ( VAR                       drawingc   )
  ( VAR                       drawingd   )
  ( VAR                       drawinge   )
  ( CI_CAP                    drawing    )
  ( DSDDMY                    drawing1   )
  ( DSDDMY                    drawing2   )
  ( DSDDMY                    drawing3   )
  ( DSDDMY                    drawing4   )
  ( DSDDMY                    drawing5   )
  ( DSDDMY                    drawing6   )
  ( DSDDMY                    drawing7   )
  ( DSDDMY                    drawing8   )
  ( DSDDMY                    drawing9   )
  ( DSDDMY                    test0      )
  ( DSDDMY                    test1      )
  ( DSDDMY                    test2      )
  ( DSDDMY                    test3      )
  ( DSDDMY                    test4      )
  ( DSDDMY                    test5      )
  ( DSDDMY                    test6      )
  ( DSDDMY                    test7      )
  ( DSDDMY                    test8      )
  ( DSDDMY                    test9      )
  ( MOMDMY                    drawing    )
  ( MOMDMY                    drawing1   )
  ( MOMDMY                    drawing2   )
  ( MOMDMY                    drawing3   )
  ( MOMDMY                    drawing4   )
  ( MOMDMY                    drawing5   )
  ( MOMDMY                    drawing6   )
  ( MOMDMY                    drawing7   )
  ( MOMDMY                    drawing8   )
  ( MOMDMY                    drawing9   )
  ( MOMDMY                    drawinga   )
  ( MOMDMY                    drawingb   )
  ( MOMDMY                    drawingc   )
  ( MOMDMY                    dummy1     )
  ( MOMDMY                    dummy2     )
  ( MOMDMY                    dummy3     )
  ( MOMDMY                    dummy4     )
  ( MOMDMY                    dummy5     )
  ( MOMDMY                    dummy6     )
  ( MOMDMY                    dummy8     )
  ( MOMDMY                    dummy9     )
  ( MOMDMY                    dummya     )
  ( MOMDMY                    dummyb     )
  ( MOMDMY                    dummyc     )
  ( MOMDMY                    test1      )
  ( MOMDMY                    test2      )
  ( MOMDMY                    test3      )
  ( MOMDMY                    test4      )
  ( MOMDMY                    test5      )
  ( MOMDMY                    test6      )
  ( MOMDMY                    test7      )
  ( MOMDMY                    test8      )
  ( MOMDMY                    test9      )
  ( MOMDMY                    testa      )
  ( MOMDMY                    testb      )
  ( MOMDMY                    testc      )
  ( MOMDMY                    dummyf     )
  ( MOMDMY                    dummyg     )
  ( MOMDMY                    dummyh     )
  ( MOMDMY                    test0      )
  ( PDK                       drawing    )
  ( PDK                       dummy      )
  ( AP                        prob       )
  ( OD                        test1      )
  ( OD                        test2      )
  ( OD                        test3      )
  ( OD                        test4      )
  ( OD                        test5      )
  ( OD                        test6      )
  ( OD                        test7      )
  ( OD                        test8      )
  ( OD                        test9      )
  ( OD                        testa      )
  ( PO                        test0      )
  ( PO                        test1      )
  ( PO                        test2      )
  ( PO                        test3      )
  ( PO                        test4      )
  ( PO                        test5      )
  ( PO                        test6      )
  ( PO                        test7      )
  ( PO                        test8      )
  ( PO                        test9      )
  ( PO                        testa      )
  ( CO                        test1      )
  ( CO                        test2      )
  ( CO                        test3      )
  ( CO                        test4      )
  ( CO                        test5      )
  ( CO                        test6      )
  ( CO                        test7      )
  ( CO                        test8      )
  ( CO                        test9      )
  ( CO                        testa      )
  ( CO                        testb      )
  ( CO                        testc      )
  ( CO                        drawinga   )
  ( LDDBLK                    drawing    )
  ( TCLO                      test1      )
  ( TCLO                      test2      )
  ( TCLO                      test3      )
  ( TCLO                      test4      )
  ( TCLO                      test5      )
  ( TCLO                      test6      )
  ( TCLO                      test7      )
  ( TCLO                      test8      )
  ( TCLO                      test9      )
  ( TCLO                      testa      )
  ( TCLO                      dummy1     )
  ( TCLO                      dummy2     )
  ( TCLO                      dummy3     )
  ( TCLO                      dummy4     )
  ( TCLO                      dummy5     )
  ( TCLO                      dummy6     )
  ( TCLO                      dummy7     )
  ( TCLO                      dummy8     )
  ( TCLO                      dummy9     )
  ( TCLO                      dummya     )
  ( BJTC                      drawing    )
  ( POS                       plus1      )
  ( POS                       plus2      )
  ( POS                       plus3      )
  ( POS                       drawing1   )
  ( POS                       drawing2   )
  ( POS                       drawing3   )
  ( POS                       dummy1     )
  ( POS                       dummy2     )
  ( POS                       dummy5     )
  ( POS                       test2      )
  ( POS                       test3      )
  ( POS                       dummya     )
  ( POS                       dummyb     )
  ( POS                       dummyd     )
  ( R_rule                    guideline  )
  ( R_rule                    require    )
  ( R_rule                    recommend  )
  ( R_rule                    analog     )
  ( ex_R_rule                 guideline  )
  ( ex_R_rule                 require    )
  ( ex_R_rule                 recommend  )
  ( ex_R_rule                 analog     )
  ( ODRZ                      dummy      )
  ( LVSDMY                    dummy1     )
  ( LVSDMY                    dummy2     )
  ( LVSDMY                    dummy3     )
  ( LVSDMY                    dummy4     )
  ( LVSDMY                    dummy5     )
  ( HVD                       drawing    )
  ( HVD                       n_a        )
  ( HVD                       p_a        )
  ( HVD                       test0      )
  ( EHVT_N                    drawing    )
  ( EHVT_P                    drawing    )
  ( PV_P                      drawing    )
  ( PV_N                      drawing    )
  ( EDRAM                     drawing    )
  ( DECAPDMY                  drawing    )
  ( VTL_N_18                  drawing    )
  ( VT_N                      drawing1   )
  ( VT_N                      drawing2   )
  ( LUPWDMY                   drawing    )
  ( LUPWDMY                   drawing1   )
  ( Layer1                    drawing1   )
  ( Layer1                    drawing2   )
  ( RAM                       drawing1   )
  ( RAM                       drawing2   )
  ( VDDDMY                    drawing    )
  ( VSSDMY                    drawing    )
  ( SENDMY                    drawing    )
  ( SENDMY                    drawinga   )
  ( SENDMY                    drawingb   )
  ( RES200                    drawing    )
  ( LOWMEDN                   drawing    )
  ( PADDMY                    drawing    )
  ( UHVT_N                    drawing    )
  ( UHVT_P                    drawing    )
  ( MRAM                      drawing    )
  ( MRAM                      drawing1   )
  ( MRAM                      drawing2   )
  ( MRAM                      drawing3   )
  ( MRAM                      drawing6   )
  ( MRAM                      drawing9   )
  ( MRAM                      drawinga   )
  ( MRAM                      drawingb   )
  ( MRAM                      drawingc   )
  ( MRAM                      drawingd   )
  ( MRAM                      drawinge   )
  ( MRAM                      drawingf   )
  ( MRAM                      dummya     )
  ( MRAM                      dummyb     )
  ( MRAM                      dummyc     )
  ( MRAM                      test1      )
  ( MRAM                      test2      )
  ( MRAM                      test3      )
  ( MRAM                      test4      )
  ( MRAM                      test5      )
  ( MRAM                      test6      )
  ( MRAM                      test7      )
  ( MRAM                      test8      )
  ( MRDMY                     drawing    )
  ( MRDMY                     dummy1     )
  ( MRDMY                     dummy2     )
  ( MRDMY                     dummy3     )
  ( MRDMY                     dummy4     )
  ( MRDMY                     dummy5     )
  ( MRDMY                     dummy6     )
  ( HIA_DUMMY                 drawing    )
  ( TSV                       drawing    )
  ( TSV                       drawinga   )
  ( BTSV                      drawing    )
  ( BTSV                      drawing1   )
  ( BTSV                      drawing2   )
  ( BTSV                      drawing3   )
  ( BTSV                      drawing4   )
  ( M1                        BSL        )
  ( CB2                       BSL        )
  ( LMARK                     BSL        )
  ( UBM                       BSL        )
  ( CAPDMY                    drawing    )
  ( DGATE                     drawing    )
  ( DGATE                     drawing1   )
  ( M1                        BSD        )
  ( AP                        BSL        )
  ( AP                        BSP        )
  ( RV                        BSL        )
  ( M1                        BSP        )
  ( CBD                       BSL        )
  ( TSV                       pin        )
  ( TSV                       dummy      )
  ( ANVT                      drawing    )
  ( AVT                       drawing    )
  ( SUPER_AVT                 drawing    )
  ( IODMY                     dummy1     )
  ( SCL                       drawing    )
  ( SCL2                      drawing    )
  ( BSV                       drawing    )
  ( SCL                       pin        )
  ( HBL_TOP                   drawing    )
  ( HBL_TOP                   drawing1   )
  ( HBL_TOP                   dummy1     )
  ( HBL_TOP                   dummy2     )
  ( HBL_BOT                   drawing    )
  ( HBL_BOT                   dummy1     )
  ( HBL_BLK                   drawing    )
  ( HBC_TOP                   drawing    )
  ( HBC_TOP                   drawing1   )
  ( HBC_BOT                   drawing    )
  ( IMSOR                     dummy6     )
  ( IMSOR4                    dummy7     )
  ( CBB                       drawing    )
  ( BDCT                      drawing    )
  ( SCPADDMY                  drawing    )
  ( BMZ                       drawing    )
  ( BMZ                       dummy1     )
  ( BMZ                       pin        )
  ( BVZ                       drawing    )
  ( BMZ2                      drawing    )
  ( BMZ2                      dummy1     )
  ( BMZ2                      pin        )
  ( BVZ2                      drawing    )
  ( RRAM                      drawing6   )
  ( RRAM                      drawing7   )
  ( RRAM                      drawing9   )
  ( RRAM                      dummy6     )
  ( CBRAM                     drawing1   )
  ( CBRAM                     drawing2   )
  ( CBRAM                     drawing3   )
  ( CBRAM                     drawing4   )
  ( CBRAM                     drawing5   )
  ( CBRAM                     drawing7   )
  ( CBRAM                     drawing8   )
  ( CBRAM                     drawing9   )
  ( CBRAM                     drawinga   )
  ( CBRAM                     drawing    )
  ( CBRAM                     drawingb   )
  ( CBRAM                     drawingc   )
  ( CBRAM                     drawingd   )
  ( CBRAM                     drawinge   )
  ( CBRAM                     drawingf   )
  ( CBRAM                     drawingh   )
  ( CBRAM                     rule1      )
  ( FEDRAM                    drawing    )
  ( MATCHING_MOS              drawing    )
  ( PODE                      blocking   )
  ( WAIVER                    drawing    )
  ( WAIVER                    drawing1   )
  ( WAIVER                    drawing2   )
  ( WAIVER                    drawing3   )
  ( WAIVER                    drawing4   )
  ( WAIVER                    drawing5   )
  ( WAIVER                    drawing6   )
  ( WAIVER                    drawing7   )
  ( WAIVER                    drawing8   )
  ( CELLBLK                   drawing    )
  ( CELLADD                   drawing    )
  ( chipBoundary              drawing    )
  ( RPO_DIODE                 drawing    )
  ( TGO_IO                    drawing    )
  ( HV                        drawing    )
  ( HV                        drawinga   )
 ) ;techLayerPurposePriorities

 techDisplays(
 ;( LayerName    Purpose      Packet          Vis Sel Con2ChgLy DrgEnbl Valid )
 ;( ---------    -------      ------          --- --- --------- ------- ----- )
  ( PP           boundary     defaultPacket    t t t t nil )
  ( NP           boundary     defaultPacket    t t t t nil )
  ( NW           boundary     defaultPacket    t t t t nil )
  ( PDK          boundary     defaultPacket    t t t t nil )
  ( PP           pin          defaultPacket    t t t t nil )
  ( PP           net          defaultPacket    t t t t nil )
  ( NP           pin          defaultPacket    t t t t nil )
  ( NP           net          defaultPacket    t t t t nil )
  ( NW           pin          defaultPacket    t t t t nil )
  ( NW           net          defaultPacket    t t t t nil )
  ( PO           net          defaultPacket    t t t t nil )
  ( PDK          pin          defaultPacket    t t t t nil )
  ( PDK          net          defaultPacket    t t t t nil )
  ( CO           net          defaultPacket    t t t t nil )
  ( ref          drawing      ref_drawing      t t t t t )
  ( DNW          drawing      DNW_drawing      t t t t t )
  ( PW           drawing      PW_drawing       t t t t t )
  ( PW           drawing1     PW_drawing1      t t t t t )
  ( PW           drawing2     PW_drawing2      t t t t t )
  ( NW           drawing      NW_drawing       t t t t t )
  ( NW           drawing1     NW_drawing1      t t t t t )
  ( NW           drawing2     NW_drawing2      t t t t t )
  ( OD           drawing      OD_drawing       t t t t t )
  ( OD           dummy1       OD_dummy1        t t t t t )
  ( OD           blockage     OD_blockage      t t t t t )
  ( OD_12        drawing      OD_12_drawing    t t t t t )
  ( OD_15        drawing      OD_15_drawing    t t t t t )
  ( OD_15        ovrdrv       OD_15_ovrdrv     t t t t t )
  ( OD_18        drawing      OD_18_drawing    t t t t t )
  ( OD_18        drawing1     OD_18_drawing1   t t t t t )
  ( OD_18        ovrdrv       OD_18_ovrdrv     t t t t t )
  ( OD_18        udrdrv       OD_18_udrdrv     t t t t t )
  ( OD_25        drawing      OD_25_drawing    t t t t t )
  ( OD_25        ovrdrv       OD_25_ovrdrv     t t t t t )
  ( OD_25        udrdrv       OD_25_udrdrv     t t t t t )
  ( OD_25        LOWLK        OD_25_LOWLK      t t t t t )
  ( OD_25        v_12         OD_25_v_12       t t t t t )
  ( OD_25        v_15         OD_25_v_15       t t t t t )
  ( OD_33        drawing      OD_33_drawing    t t t t t )
  ( OD_DECAP     drawing      OD_DECAP_drawing t t t t t )
  ( PO           drawing      PO_drawing       t t t t t )
  ( PO           track        PO_drawing       nil nil t t nil )
  ( PO           rule1        PO_rule1         t t t t t )
  ( PO           blockage     PO_blockage      t t t t t )
  ( PO_13        drawing      PO_13_drawing    t t t t t )
  ( VTH_N        drawing      VTH_N_drawing    t t t t t )
  ( VTH_P        drawing      VTH_P_drawing    t t t t t )
  ( VTL_N        drawing      VTL_N_drawing    t t t t t )
  ( VTL_N        drawing2     VTL_N_drawing2   t t t t t )
  ( VTL_P        drawing      VTL_P_drawing    t t t t t )
  ( VTL_P        drawing2     VTL_P_drawing2   t t t t t )
  ( NT_N         drawing      NT_N_drawing     t t t t t )
  ( NT_N         Ncap_NTN     NT_N_Ncap_NTN    t t t t t )
  ( NT_N         dummya       NT_N_dummya      t t t t t )
  ( PP           drawing      PP_drawing       t t t t t )
  ( NP           drawing      NP_drawing       t t t t t )
  ( ESD3         drawing      ESD3_drawing     t t t t t )
  ( ESD3         drawing1     ESD3_drawing1    t t t t t )
  ( LOGO         drawing      LOGO_drawing     t t t t t )
  ( WBDMY        drawing      WBDMY_drawing    t t t t t )
  ( N10V         drawing      N10V_drawing     t t t t t )
  ( P10V         drawing      P10V_drawing     t t t t t )
  ( RPO          drawing      RPO_drawing      t t t t t )
  ( RPO          drawing1     RPO_drawing1     t t t t t )
  ( RPO          drawing2     RPO_drawing2     t t t t t )
  ( CO           drawing      CO_drawing       t t t t t )
  ( CO           grid         CO_grid          t nil nil nil nil )
  ( CO           blockage     CO_blockage      t nil t t nil )
  ( M0           drawing      M0_drawing       t t t t t )
  ( VIA0         drawing      VIA0_drawing     t t t t t )
  ( VIA0DMY      dummy        VIA0DMY_dummy    t t t t t )
  ( M0DMY        dummy        M0DMY_dummy      t t t t t )
  ( CDUDMY       drawing      CDUDMY_drawing   t t t t t )
  ( CDUDMY       dummy1       CDUDMY_dummy1    t t t t t )
  ( CDUDMY       dummy3       CDUDMY_dummy3    t t t t t )
  ( CDUDMY       dummy4       CDUDMY_dummy4    t t t t t )
  ( CDUDMY       dummy5       CDUDMY_dummy5    t t t t t )
  ( CDUDMY       dummy6       CDUDMY_dummy6    t t t t t )
  ( CDUDMY       dummy7       CDUDMY_dummy7    t t t t t )
  ( CDUDMY       test1        CDUDMY_test1     t t t t t )
  ( CDUDMY       test2        CDUDMY_test2     t t t t t )
  ( CDUDMY       test3        CDUDMY_test3     t t t t t )
  ( CDUDMY       test4        CDUDMY_test4     t t t t t )
  ( CDUDMY       test5        CDUDMY_test5     t t t t t )
  ( CDUDMY       test6        CDUDMY_test6     t t t t t )
  ( CDUDMY       test7        CDUDMY_test7     t t t t t )
  ( CDUDMY       test8        CDUDMY_test8     t t t t t )
  ( CDUDMY       drawing1     CDUDMY_drawing1  t t t t t )
  ( CDUDMY       drawing2     CDUDMY_drawing2  t t t t t )
  ( CDUDMY       drawing3     CDUDMY_drawing3  t t t t t )
  ( CDUDMY       drawing4     CDUDMY_drawing4  t t t t t )
  ( CDUDMY       drawing5     CDUDMY_drawing5  t t t t t )
  ( CDUDMY       drawing6     CDUDMY_drawing6  t t t t t )
  ( CDUDMY       drawing7     CDUDMY_drawing7  t t t t t )
  ( CDUDMY       drawing8     CDUDMY_drawing8  t t t t t )
  ( TCDDMY       drawing1     TCDDMY_drawing1  t t t t t )
  ( TCDDMY       drawing2     TCDDMY_drawing2  t t t t t )
  ( TCDDMY       drawing3     TCDDMY_drawing3  t t t t t )
  ( TCDDMY       drawing4     TCDDMY_drawing4  t t t t t )
  ( TCDDMY       drawing5     TCDDMY_drawing5  t t t t t )
  ( TCDDMY       drawing6     TCDDMY_drawing6  t t t t t )
  ( TCDDMY       drawing7     TCDDMY_drawing7  t t t t t )
  ( TCDDMY       drawing8     TCDDMY_drawing8  t t t t t )
  ( ICOVL        test0        ICOVL_test0      t t t t t )
  ( ICOVL        test1        ICOVL_test1      t t t t t )
  ( ICOVL        drawing1     ICOVL_drawing1   t t t t t )
  ( ICOVL        drawing2     ICOVL_drawing2   t t t t t )
  ( ICOVL        drawing3     ICOVL_drawing3   t t t t t )
  ( ICOVL        drawing4     ICOVL_drawing4   t t t t t )
  ( ICOVL        drawing5     ICOVL_drawing5   t t t t t )
  ( ICOVL        drawing6     ICOVL_drawing6   t t t t t )
  ( ICOVL        drawing7     ICOVL_drawing7   t t t t t )
  ( ICOVL        drawing8     ICOVL_drawing8   t t t t t )
  ( ICOVL        drawing9     ICOVL_drawing9   t t t t t )
  ( ICOVL        drawinga     ICOVL_drawinga   t t t t t )
  ( ICOVL        drawingb     ICOVL_drawingb   t t t t t )
  ( ICOVL        drawingc     ICOVL_drawingc   t t t t t )
  ( ICOVL        drawingd     ICOVL_drawingd   t t t t t )
  ( ICOVL        dummy1       ICOVL_dummy1     t t t t t )
  ( ICOVL        dummy2       ICOVL_dummy2     t t t t t )
  ( ICOVL        dummy3       ICOVL_dummy3     t t t t t )
  ( ICOVL        dummy4       ICOVL_dummy4     t t t t t )
  ( ICOVL        dummy5       ICOVL_dummy5     t t t t t )
  ( ICOVL        dummy6       ICOVL_dummy6     t t t t t )
  ( ICOVL        dummy7       ICOVL_dummy7     t t t t t )
  ( ICOVL        dummy8       ICOVL_dummy8     t t t t t )
  ( ICOVL        dummy9       ICOVL_dummy9     t t t t t )
  ( ICOVL        dummya       ICOVL_dummya     t t t t t )
  ( ICOVL        dummyb       ICOVL_dummyb     t t t t t )
  ( ICOVL        dummyc       ICOVL_dummyc     t t t t t )
  ( NSD          drawing      NSD_drawing      t t t t t )
  ( M1           drawing      M1_drawing       t t t t t )
  ( M1           track        M1_drawing       nil nil t t nil )
  ( M1           dummy        M1_dummy         t t t t t )
  ( M1           odummy       M1_odummy        t t t t t )
  ( M1           grid         M1_grid          t nil nil nil nil )
  ( M1           blockage     M1_blockage      t nil t t nil )
  ( VIA1         drawing      VIA1_drawing     t t t t t )
  ( VIA1         dummy        VIA1_dummy       t t t t t )
  ( VIA1         grid         VIA1_grid        t nil nil nil nil )
  ( VIA1         blockage     VIA1_blockage    t nil t t nil )
  ( M2           drawing      M2_drawing       t t t t t )
  ( M2           track        M2_drawing       nil nil t t nil )
  ( M2           dummy        M2_dummy         t t t t t )
  ( M2           odummy       M2_odummy        t t t t t )
  ( M2           grid         M2_grid          t nil nil nil nil )
  ( M2           blockage     M2_blockage      t nil t t nil )
  ( VIA2         drawing      VIA2_drawing     t t t t t )
  ( VIA2         dummy        VIA2_dummy       t t t t t )
  ( VIA2         grid         VIA2_grid        t nil nil nil nil )
  ( VIA2         blockage     VIA2_blockage    t nil t t nil )
  ( M3           drawing      M3_drawing       t t t t t )
  ( M3           track        M3_drawing       nil nil t t nil )
  ( M3           dummy        M3_dummy         t t t t t )
  ( M3           odummy       M3_odummy        t t t t t )
  ( M3           grid         M3_grid          t nil nil nil nil )
  ( M3           blockage     M3_blockage      t nil t t nil )
  ( VIA3         drawing      VIA3_drawing     t t t t t )
  ( VIA3         dummy        VIA3_dummy       t t t t t )
  ( VIA3         grid         VIA3_grid        t nil nil nil nil )
  ( VIA3         blockage     VIA3_blockage    t nil t t nil )
  ( M4           drawing      M4_drawing       t t t t t )
  ( M4           track        M4_drawing       nil nil t t nil )
  ( M4           dummy        M4_dummy         t t t t t )
  ( M4           odummy       M4_odummy        t t t t t )
  ( M4           grid         M4_grid          t nil nil nil nil )
  ( M4           blockage     M4_blockage      t nil t t nil )
  ( VIA4         drawing      VIA4_drawing     t t t t t )
  ( VIA4         dummy        VIA4_dummy       t t t t t )
  ( VIA4         grid         VIA4_grid        t nil nil nil nil )
  ( VIA4         blockage     VIA4_blockage    t nil t t nil )
  ( M5           drawing      M5_drawing       t t t t t )
  ( M5           track        M5_drawing       nil nil t t nil )
  ( M5           dummy        M5_dummy         t t t t t )
  ( M5           odummy       M5_odummy        t t t t t )
  ( M5           grid         M5_grid          t nil nil nil nil )
  ( M5           blockage     M5_blockage      t nil t t nil )
  ( VIA5         drawing      VIA5_drawing     t t t t t )
  ( VIA5         dummy        VIA5_dummy       t t t t t )
  ( VIA5         grid         VIA5_grid        t nil nil nil nil )
  ( VIA5         blockage     VIA5_blockage    t nil t t nil )
  ( M6           drawing      M6_drawing       t t t t t )
  ( M6           track        M6_drawing       nil nil t t nil )
  ( M6           dummy        M6_dummy         t t t t t )
  ( M6           odummy       M6_odummy        t t t t t )
  ( M6           grid         M6_grid          t nil nil nil nil )
  ( M6           blockage     M6_blockage      t nil t t nil )
  ( VIA6         drawing      VIA6_drawing     t t t t t )
  ( VIA6         dummy        VIA6_dummy       t t t t t )
  ( VIA6         grid         VIA6_grid        t nil nil nil nil )
  ( VIA6         blockage     VIA6_blockage    t nil t t nil )
  ( M7           drawing      M7_drawing       t t t t t )
  ( M7           track        M7_drawing       nil nil t t nil )
  ( M7           dummy        M7_dummy         t t t t t )
  ( M7           odummy       M7_odummy        t t t t t )
  ( M7           grid         M7_grid          t nil nil nil nil )
  ( M7           blockage     M7_blockage      t nil t t nil )
  ( VIA7         drawing      VIA7_drawing     t t t t t )
  ( VIA7         grid         VIA7_grid        t nil nil nil nil )
  ( VIA7         blockage     VIA7_blockage    t nil t t nil )
  ( M8           drawing      M8_drawing       t t t t t )
  ( M8           track        M8_drawing       nil nil t t nil )
  ( M8           dummy        M8_dummy         t t t t t )
  ( M8           grid         M8_grid          t nil nil nil nil )
  ( M8           blockage     M8_blockage      t nil t t nil )
  ( VIA8         drawing      VIA8_drawing     t t t t t )
  ( VIA8         grid         VIA8_grid        t nil nil nil nil )
  ( VIA8         blockage     VIA8_blockage    t nil t t nil )
  ( M9           drawing      M9_drawing       t t t t t )
  ( M9           track        M9_drawing       nil nil t t nil )
  ( M9           dummy        M9_dummy         t t t t t )
  ( M9           grid         M9_grid          t nil nil nil nil )
  ( M9           blockage     M9_blockage      t nil t t nil )
  ( VIA1         drawinga     VIA1_drawinga    t t t t t )
  ( VIA2         drawinga     VIA2_drawinga    t t t t t )
  ( VIA3         drawinga     VIA3_drawinga    t t t t t )
  ( VIA4         drawinga     VIA4_drawinga    t t t t t )
  ( VIA5         drawinga     VIA5_drawinga    t t t t t )
  ( VIA6         drawinga     VIA6_drawinga    t t t t t )
  ( VIA7         drawinga     VIA7_drawinga    t t t t t )
  ( M1           VNV          M1_VNV           t t t t t )
  ( M1           NV           M1_NV            t t t t t )
  ( M1           testa        M1_testa         t t t t t )
  ( M1           dummy1       M1_dummy1        t t t t t )
  ( M1           dummy2       M1_dummy2        t t t t t )
  ( M1           dummy3       M1_dummy3        t t t t t )
  ( M1           dummy4       M1_dummy4        t t t t t )
  ( M1           dummy5       M1_dummy5        t t t t t )
  ( M1           dummy6       M1_dummy6        t t t t t )
  ( M1           dummy7       M1_dummy7        t t t t t )
  ( M1           dummy8       M1_dummy8        t t t t t )
  ( M1           dummy9       M1_dummy9        t t t t t )
  ( M1           dummya       M1_dummya        t t t t t )
  ( M1           dummyb       M1_dummyb        t t t t t )
  ( M1           dummyc       M1_dummyc        t t t t t )
  ( M1           dummyd       M1_dummyd        t t t t t )
  ( M1           dummye       M1_dummye        t t t t t )
  ( M1           dummyf       M1_dummyf        t t t t t )
  ( M1           dummyg       M1_dummyg        t t t t t )
  ( M1           dummyh       M1_dummyh        t t t t t )
  ( M1           dummyi       M1_dummyi        t t t t t )
  ( M1           dummyj       M1_dummyj        t t t t t )
  ( M1           dummyk       M1_dummyk        t t t t t )
  ( M1           dummyl       M1_dummyl        t t t t t )
  ( M1           dummym       M1_dummym        t t t t t )
  ( M1           test0        M1_test0         t t t t t )
  ( M1           test1        M1_test1         t t t t t )
  ( M1           test2        M1_test2         t t t t t )
  ( M1           test3        M1_test3         t t t t t )
  ( M1           test7        M1_test7         t t t t t )
  ( M1           test8        M1_test8         t t t t t )
  ( M1           test9        M1_test9         t t t t t )
  ( M2           VNV          M2_VNV           t t t t t )
  ( M2           NV           M2_NV            t t t t t )
  ( M2           testa        M2_testa         t t t t t )
  ( M2           dummy1       M2_dummy1        t t t t t )
  ( M2           dummy2       M2_dummy2        t t t t t )
  ( M2           dummy3       M2_dummy3        t t t t t )
  ( M2           dummy4       M2_dummy4        t t t t t )
  ( M2           dummy5       M2_dummy5        t t t t t )
  ( M2           dummy6       M2_dummy6        t t t t t )
  ( M2           dummy7       M2_dummy7        t t t t t )
  ( M2           dummy8       M2_dummy8        t t t t t )
  ( M2           dummy9       M2_dummy9        t t t t t )
  ( M2           dummya       M2_dummya        t t t t t )
  ( M2           dummyb       M2_dummyb        t t t t t )
  ( M2           dummyc       M2_dummyc        t t t t t )
  ( M2           dummyd       M2_dummyd        t t t t t )
  ( M2           dummye       M2_dummye        t t t t t )
  ( M2           dummyf       M2_dummyf        t t t t t )
  ( M2           dummyg       M2_dummyg        t t t t t )
  ( M2           dummyh       M2_dummyh        t t t t t )
  ( M2           dummyi       M2_dummyi        t t t t t )
  ( M2           dummyj       M2_dummyj        t t t t t )
  ( M2           dummyk       M2_dummyk        t t t t t )
  ( M2           dummyl       M2_dummyl        t t t t t )
  ( M2           dummym       M2_dummym        t t t t t )
  ( M2           test0        M2_test0         t t t t t )
  ( M2           test1        M2_test1         t t t t t )
  ( M2           test2        M2_test2         t t t t t )
  ( M2           test3        M2_test3         t t t t t )
  ( M2           test7        M2_test7         t t t t t )
  ( M2           test8        M2_test8         t t t t t )
  ( M2           test9        M2_test9         t t t t t )
  ( M3           VNV          M3_VNV           t t t t t )
  ( M3           NV           M3_NV            t t t t t )
  ( M3           testa        M3_testa         t t t t t )
  ( M3           dummy1       M3_dummy1        t t t t t )
  ( M3           dummy2       M3_dummy2        t t t t t )
  ( M3           dummy3       M3_dummy3        t t t t t )
  ( M3           dummy4       M3_dummy4        t t t t t )
  ( M3           dummy5       M3_dummy5        t t t t t )
  ( M3           dummy6       M3_dummy6        t t t t t )
  ( M3           dummy7       M3_dummy7        t t t t t )
  ( M3           dummy8       M3_dummy8        t t t t t )
  ( M3           dummy9       M3_dummy9        t t t t t )
  ( M3           dummya       M3_dummya        t t t t t )
  ( M3           dummyb       M3_dummyb        t t t t t )
  ( M3           dummyc       M3_dummyc        t t t t t )
  ( M3           dummyd       M3_dummyd        t t t t t )
  ( M3           dummye       M3_dummye        t t t t t )
  ( M3           dummyf       M3_dummyf        t t t t t )
  ( M3           dummyg       M3_dummyg        t t t t t )
  ( M3           dummyh       M3_dummyh        t t t t t )
  ( M3           dummyi       M3_dummyi        t t t t t )
  ( M3           dummyj       M3_dummyj        t t t t t )
  ( M3           dummyk       M3_dummyk        t t t t t )
  ( M3           dummyl       M3_dummyl        t t t t t )
  ( M3           dummym       M3_dummym        t t t t t )
  ( M3           test0        M3_test0         t t t t t )
  ( M3           test1        M3_test1         t t t t t )
  ( M3           test2        M3_test2         t t t t t )
  ( M3           test3        M3_test3         t t t t t )
  ( M3           test7        M3_test7         t t t t t )
  ( M3           test8        M3_test8         t t t t t )
  ( M3           test9        M3_test9         t t t t t )
  ( M4           VNV          M4_VNV           t t t t t )
  ( M4           NV           M4_NV            t t t t t )
  ( M4           testa        M4_testa         t t t t t )
  ( M4           dummy1       M4_dummy1        t t t t t )
  ( M4           dummy2       M4_dummy2        t t t t t )
  ( M4           dummy3       M4_dummy3        t t t t t )
  ( M4           dummy4       M4_dummy4        t t t t t )
  ( M4           dummy5       M4_dummy5        t t t t t )
  ( M4           dummy6       M4_dummy6        t t t t t )
  ( M4           dummy7       M4_dummy7        t t t t t )
  ( M4           dummy8       M4_dummy8        t t t t t )
  ( M4           dummy9       M4_dummy9        t t t t t )
  ( M4           dummya       M4_dummya        t t t t t )
  ( M4           dummyb       M4_dummyb        t t t t t )
  ( M4           dummyc       M4_dummyc        t t t t t )
  ( M4           dummyd       M4_dummyd        t t t t t )
  ( M4           dummye       M4_dummye        t t t t t )
  ( M4           dummyf       M4_dummyf        t t t t t )
  ( M4           dummyg       M4_dummyg        t t t t t )
  ( M4           dummyh       M4_dummyh        t t t t t )
  ( M4           dummyi       M4_dummyi        t t t t t )
  ( M4           dummyj       M4_dummyj        t t t t t )
  ( M4           dummyk       M4_dummyk        t t t t t )
  ( M4           dummyl       M4_dummyl        t t t t t )
  ( M4           dummym       M4_dummym        t t t t t )
  ( M4           test0        M4_test0         t t t t t )
  ( M4           test1        M4_test1         t t t t t )
  ( M4           test2        M4_test2         t t t t t )
  ( M4           test3        M4_test3         t t t t t )
  ( M4           test7        M4_test7         t t t t t )
  ( M4           test8        M4_test8         t t t t t )
  ( M4           test9        M4_test9         t t t t t )
  ( M5           VNV          M5_VNV           t t t t t )
  ( M5           NV           M5_NV            t t t t t )
  ( M5           testa        M5_testa         t t t t t )
  ( M5           dummy1       M5_dummy1        t t t t t )
  ( M5           dummy2       M5_dummy2        t t t t t )
  ( M5           dummy3       M5_dummy3        t t t t t )
  ( M5           dummy4       M5_dummy4        t t t t t )
  ( M5           dummy5       M5_dummy5        t t t t t )
  ( M5           dummy6       M5_dummy6        t t t t t )
  ( M5           dummy7       M5_dummy7        t t t t t )
  ( M5           dummy8       M5_dummy8        t t t t t )
  ( M5           dummy9       M5_dummy9        t t t t t )
  ( M5           dummya       M5_dummya        t t t t t )
  ( M5           dummyb       M5_dummyb        t t t t t )
  ( M5           dummyc       M5_dummyc        t t t t t )
  ( M5           dummyd       M5_dummyd        t t t t t )
  ( M5           dummye       M5_dummye        t t t t t )
  ( M5           dummyf       M5_dummyf        t t t t t )
  ( M5           dummyg       M5_dummyg        t t t t t )
  ( M5           dummyh       M5_dummyh        t t t t t )
  ( M5           dummyi       M5_dummyi        t t t t t )
  ( M5           dummyj       M5_dummyj        t t t t t )
  ( M5           dummyk       M5_dummyk        t t t t t )
  ( M5           dummyl       M5_dummyl        t t t t t )
  ( M5           dummym       M5_dummym        t t t t t )
  ( M5           test0        M5_test0         t t t t t )
  ( M5           test1        M5_test1         t t t t t )
  ( M5           test2        M5_test2         t t t t t )
  ( M5           test3        M5_test3         t t t t t )
  ( M5           test7        M5_test7         t t t t t )
  ( M5           test8        M5_test8         t t t t t )
  ( M5           test9        M5_test9         t t t t t )
  ( M6           VNV          M6_VNV           t t t t t )
  ( M6           NV           M6_NV            t t t t t )
  ( M6           testa        M6_testa         t t t t t )
  ( M6           dummy1       M6_dummy1        t t t t t )
  ( M6           dummy2       M6_dummy2        t t t t t )
  ( M6           dummy3       M6_dummy3        t t t t t )
  ( M6           dummy4       M6_dummy4        t t t t t )
  ( M6           dummy5       M6_dummy5        t t t t t )
  ( M6           dummy6       M6_dummy6        t t t t t )
  ( M6           dummy7       M6_dummy7        t t t t t )
  ( M6           dummy8       M6_dummy8        t t t t t )
  ( M6           dummy9       M6_dummy9        t t t t t )
  ( M6           dummya       M6_dummya        t t t t t )
  ( M6           dummyb       M6_dummyb        t t t t t )
  ( M6           dummyc       M6_dummyc        t t t t t )
  ( M6           dummyd       M6_dummyd        t t t t t )
  ( M6           dummye       M6_dummye        t t t t t )
  ( M6           dummyf       M6_dummyf        t t t t t )
  ( M6           dummyg       M6_dummyg        t t t t t )
  ( M6           dummyh       M6_dummyh        t t t t t )
  ( M6           dummyi       M6_dummyi        t t t t t )
  ( M6           dummyj       M6_dummyj        t t t t t )
  ( M6           dummyk       M6_dummyk        t t t t t )
  ( M6           dummyl       M6_dummyl        t t t t t )
  ( M6           dummym       M6_dummym        t t t t t )
  ( M6           test0        M6_test0         t t t t t )
  ( M6           test1        M6_test1         t t t t t )
  ( M6           test2        M6_test2         t t t t t )
  ( M6           test3        M6_test3         t t t t t )
  ( M6           test7        M6_test7         t t t t t )
  ( M6           test8        M6_test8         t t t t t )
  ( M6           test9        M6_test9         t t t t t )
  ( M7           VNV          M7_VNV           t t t t t )
  ( M7           NV           M7_NV            t t t t t )
  ( M7           testa        M7_testa         t t t t t )
  ( M7           dummy1       M7_dummy1        t t t t t )
  ( M7           dummy2       M7_dummy2        t t t t t )
  ( M7           dummy3       M7_dummy3        t t t t t )
  ( M7           dummy4       M7_dummy4        t t t t t )
  ( M7           dummy5       M7_dummy5        t t t t t )
  ( M7           dummy6       M7_dummy6        t t t t t )
  ( M7           dummy7       M7_dummy7        t t t t t )
  ( M7           dummy8       M7_dummy8        t t t t t )
  ( M7           dummy9       M7_dummy9        t t t t t )
  ( M7           dummya       M7_dummya        t t t t t )
  ( M7           dummyb       M7_dummyb        t t t t t )
  ( M7           dummyc       M7_dummyc        t t t t t )
  ( M7           dummyd       M7_dummyd        t t t t t )
  ( M7           dummye       M7_dummye        t t t t t )
  ( M7           dummyf       M7_dummyf        t t t t t )
  ( M7           dummyg       M7_dummyg        t t t t t )
  ( M7           dummyh       M7_dummyh        t t t t t )
  ( M7           dummyi       M7_dummyi        t t t t t )
  ( M7           dummyj       M7_dummyj        t t t t t )
  ( M7           dummyk       M7_dummyk        t t t t t )
  ( M7           dummyl       M7_dummyl        t t t t t )
  ( M7           dummym       M7_dummym        t t t t t )
  ( M7           test0        M7_test0         t t t t t )
  ( M7           test1        M7_test1         t t t t t )
  ( M7           test2        M7_test2         t t t t t )
  ( M7           test3        M7_test3         t t t t t )
  ( M7           test7        M7_test7         t t t t t )
  ( M7           test8        M7_test8         t t t t t )
  ( M7           test9        M7_test9         t t t t t )
  ( M8           VNV          M8_VNV           t t t t t )
  ( M8           NV           M8_NV            t t t t t )
  ( M8           testa        M8_testa         t t t t t )
  ( M8           dummy1       M8_dummy1        t t t t t )
  ( M8           dummy2       M8_dummy2        t t t t t )
  ( M8           dummy3       M8_dummy3        t t t t t )
  ( M8           dummy4       M8_dummy4        t t t t t )
  ( M8           dummy5       M8_dummy5        t t t t t )
  ( M8           dummy6       M8_dummy6        t t t t t )
  ( M8           dummy7       M8_dummy7        t t t t t )
  ( M8           dummy8       M8_dummy8        t t t t t )
  ( M8           dummy9       M8_dummy9        t t t t t )
  ( M8           dummya       M8_dummya        t t t t t )
  ( M8           dummyb       M8_dummyb        t t t t t )
  ( M8           dummyc       M8_dummyc        t t t t t )
  ( M8           dummyd       M8_dummyd        t t t t t )
  ( M8           dummye       M8_dummye        t t t t t )
  ( M8           dummyf       M8_dummyf        t t t t t )
  ( M8           dummyg       M8_dummyg        t t t t t )
  ( M8           dummyh       M8_dummyh        t t t t t )
  ( M8           dummyi       M8_dummyi        t t t t t )
  ( M8           dummyj       M8_dummyj        t t t t t )
  ( M8           dummyk       M8_dummyk        t t t t t )
  ( M8           dummyl       M8_dummyl        t t t t t )
  ( M8           dummym       M8_dummym        t t t t t )
  ( M8           test0        M8_test0         t t t t t )
  ( M8           test1        M8_test1         t t t t t )
  ( M8           test2        M8_test2         t t t t t )
  ( M8           test3        M8_test3         t t t t t )
  ( M8           test7        M8_test7         t t t t t )
  ( M8           test8        M8_test8         t t t t t )
  ( M8           test9        M8_test9         t t t t t )
  ( M9           VNV          M9_VNV           t t t t t )
  ( M9           NV           M9_NV            t t t t t )
  ( M9           testa        M9_testa         t t t t t )
  ( M9           dummy1       M9_dummy1        t t t t t )
  ( M9           dummy2       M9_dummy2        t t t t t )
  ( M9           dummy3       M9_dummy3        t t t t t )
  ( M9           dummy4       M9_dummy4        t t t t t )
  ( M9           dummy5       M9_dummy5        t t t t t )
  ( M9           dummy6       M9_dummy6        t t t t t )
  ( M9           dummy7       M9_dummy7        t t t t t )
  ( M9           dummy8       M9_dummy8        t t t t t )
  ( M9           dummy9       M9_dummy9        t t t t t )
  ( M9           dummya       M9_dummya        t t t t t )
  ( M9           dummyb       M9_dummyb        t t t t t )
  ( M9           dummyc       M9_dummyc        t t t t t )
  ( M9           dummyd       M9_dummyd        t t t t t )
  ( M9           dummye       M9_dummye        t t t t t )
  ( M9           dummyf       M9_dummyf        t t t t t )
  ( M9           dummyg       M9_dummyg        t t t t t )
  ( M9           dummyh       M9_dummyh        t t t t t )
  ( M9           dummyi       M9_dummyi        t t t t t )
  ( M9           dummyj       M9_dummyj        t t t t t )
  ( M9           dummyk       M9_dummyk        t t t t t )
  ( M9           dummyl       M9_dummyl        t t t t t )
  ( M9           dummym       M9_dummym        t t t t t )
  ( M9           test0        M9_test0         t t t t t )
  ( M9           test1        M9_test1         t t t t t )
  ( M9           test2        M9_test2         t t t t t )
  ( M9           test3        M9_test3         t t t t t )
  ( M9           test7        M9_test7         t t t t t )
  ( M9           test8        M9_test8         t t t t t )
  ( M9           test9        M9_test9         t t t t t )
  ( CB           drawing      CB_drawing       t t t t t )
  ( CB           drawinga     CB_drawinga      t t t t t )
  ( CB2          drawing      CB2_drawing      t t t t t )
  ( CB2          drawinga     CB2_drawinga     t t t t t )
  ( CB2          drawing1     CB2_drawing1     t t t t t )
  ( CB2          drawing2     CB2_drawing2     t t t t t )
  ( CB2          testa        CB2_testa        t t t t t )
  ( CB2_FC       drawing      CB2_FC_drawing   t t t t t )
  ( CB2_WB       drawing1     CB2_WB_drawing1  t t t t t )
  ( AP           drawing      AP_drawing       t t t t t )
  ( AP           track        AP_drawing       nil nil t t nil )
  ( AP           drawing1     AP_drawing1      t t t t t )
  ( AP           drawing2     AP_drawing2      t t t t t )
  ( AP           drawing3     AP_drawing3      t t t t t )
  ( AP           grid         AP_grid          t nil nil nil nil )
  ( AP           blockage     AP_blockage      t nil t t nil )
  ( AP           dummy        AP_dummy         t t t t t )
  ( AP           dummy1       AP_dummy1        t t t t t )
  ( AP           dummy2       AP_dummy2        t t t t t )
  ( AP           dummy3       AP_dummy3        t t t t t )
  ( AP           dummy4       AP_dummy4        t t t t t )
  ( AP           dummy5       AP_dummy5        t t t t t )
  ( AP           pin          AP_pin           t t t t t )
  ( AP           test1        AP_test1         t t t t t )
  ( AP           test2        AP_test2         t t t t t )
  ( AP           drawinga     AP_drawinga      t t t t t )
  ( AP           drawingb     AP_drawingb      t t t t t )
  ( AP           drawingc     AP_drawingc      t t t t t )
  ( AP           drawingd     AP_drawingd      t t t t t )
  ( AP           drawinge     AP_drawinge      t t t t t )
  ( AP           dummya       AP_dummya        t t t t t )
  ( AP           dummyb       AP_dummyb        t t t t t )
  ( AP           dummyc       AP_dummyc        t t t t t )
  ( AP           dummyd       AP_dummyd        t t t t t )
  ( PM           drawing      PM_drawing       t t t t t )
  ( PM           drawing1     PM_drawing1      t t t t t )
  ( PM           drawing2     PM_drawing2      t t t t t )
  ( PM           drawing3     PM_drawing3      t t t t t )
  ( PM           drawinga     PM_drawinga      t t t t t )
  ( PM           drawingb     PM_drawingb      t t t t t )
  ( PM           drawingc     PM_drawingc      t t t t t )
  ( PM           drawingd     PM_drawingd      t t t t t )
  ( PM           drawinge     PM_drawinge      t t t t t )
  ( PM           drawingf     PM_drawingf      t t t t t )
  ( PM           rule1        PM_rule1         t t t t t )
  ( PM           dummy        PM_dummy         t t t t t )
  ( PMET_CUT     drawing      PMET_CUT_drawing t t t t t )
  ( PMET_CUT     drawing1     PMET_CUT_drawing1 t t t t t )
  ( FW           drawing      FW_drawing       t t t t t )
  ( FW           al           FW_al            t t t t t )
  ( POFUSE       drawing      POFUSE_drawing   t t t t t )
  ( POFUSE       drawing1     POFUSE_drawing1  t t t t t )
  ( POFUSE       drawing2     POFUSE_drawing2  t t t t t )
  ( MFUSE        drawing      MFUSE_drawing    t t t t t )
  ( MFUSE        drawing1     MFUSE_drawing1   t t t t t )
  ( MFUSE        drawing2     MFUSE_drawing2   t t t t t )
  ( MFUSE        drawing3     MFUSE_drawing3   t t t t t )
  ( MFUSE        drawing4     MFUSE_drawing4   t t t t t )
  ( MFUSE        drawing5     MFUSE_drawing5   t t t t t )
  ( PMDMY        drawing      PMDMY_drawing    t t t t t )
  ( LMARK        drawing      LMARK_drawing    t t t t t )
  ( CoWAM        drawing      CoWAM_drawing    t t t t t )
  ( SEALRING     drawing      SEALRING_drawing t t t t t )
  ( SEALRING     drawing1     SEALRING_drawing1 t t t t t )
  ( SEALRING     drawing2     SEALRING_drawing2 t t t t t )
  ( SEALRING     drawing5     SEALRING_drawing5 t t t t t )
  ( SEALRING     drawing7     SEALRING_drawing7 t t t t t )
  ( SEALRING     drawinga     SEALRING_drawinga t t t t t )
  ( SEALRING     dummya       SEALRING_dummya  t t t t t )
  ( CSRDMY       drawing      CSRDMY_drawing   t t t t t )
  ( CSRDMY       drawing1     CSRDMY_drawing1  t t t t t )
  ( CSRDMY       drawing2     CSRDMY_drawing2  t t t t t )
  ( CSRDMY       drawing3     CSRDMY_drawing3  t t t t t )
  ( CSRDMY       drawing4     CSRDMY_drawing4  t t t t t )
  ( CSRDMY       drawing5     CSRDMY_drawing5  t t t t t )
  ( RV           drawing      RV_drawing       t t t t t )
  ( RV           drawing1     RV_drawing1      t t t t t )
  ( RV           drawing2     RV_drawing2      t t t t t )
  ( RV           grid         RV_grid          t nil nil nil nil )
  ( RV           blockage     RV_blockage      t nil t t nil )
  ( RV           drawinga     RV_drawinga      t t t t t )
  ( RV           drawingb     RV_drawingb      t t t t t )
  ( RV           drawingc     RV_drawingc      t t t t t )
  ( RV           drawingd     RV_drawingd      t t t t t )
  ( RV           dummy1       RV_dummy1        t t t t t )
  ( WRV          drawing      WRV_drawing      t t t t t )
  ( CBD          drawing      CBD_drawing      t t t t t )
  ( CBD          drawinga     CBD_drawinga     t t t t t )
  ( UBM          drawing      UBM_drawing      t t t t t )
  ( UBM          dummy1       UBM_dummy1       t t t t t )
  ( UBM          dummy2       UBM_dummy2       t t t t t )
  ( UBM          dummya       UBM_dummya       t t t t t )
  ( UBM          pin          UBM_pin          t t t t t )
  ( IP           drawing      IP_drawing       t t t t t )
  ( CAP1TDMY     drawing      CAP1TDMY_drawing t t t t t )
  ( VTD_N        drawing      VTD_N_drawing    t t t t t )
  ( CTM          drawing      CTM_drawing      t t t t t )
  ( CTM          drawing1     CTM_drawing1     t t t t t )
  ( CBM          drawing      CBM_drawing      t t t t t )
  ( CBM          drawing1     CBM_drawing1     t t t t t )
  ( OD           drain        OD_drain         t t t t t )
  ( OD           drain1       OD_drain1        t t t t t )
  ( SOI_MKR      gated        SOI_MKR_gated    t t t t t )
  ( SOI_MKR      soibt        SOI_MKR_soibt    t t t t t )
  ( SOI_MKR      decap        SOI_MKR_decap    t t t t t )
  ( SOI_MKR      vpfc         SOI_MKR_vpfc     t t t t t )
  ( OD           drawing2     OD_drawing2      t t t t t )
  ( PO           drawing2     PO_drawing2      t t t t t )
  ( SOISUB       drawing      SOISUB_drawing   t t t t t )
  ( SOI          ndop         SOI_ndop         t t t t t )
  ( SOI          pdop         SOI_pdop         t t t t t )
  ( SOI          NLDDV        SOI_NLDDV        t t t t t )
  ( SOI          PLDDV        SOI_PLDDV        t t t t t )
  ( SOI          NLDDH        SOI_NLDDH        t t t t t )
  ( SOI          PLDDH        SOI_PLDDH        t t t t t )
  ( SOI          drawing      SOI_drawing      t t t t t )
  ( FET          src          FET_src          t t t t t )
  ( FET          n_a          FET_n_a          t t t t t )
  ( FET          n_b          FET_n_b          t t t t t )
  ( FET          p_a          FET_p_a          t t t t t )
  ( FET          p_b          FET_p_b          t t t t t )
  ( FET          L01S         FET_L01S         t t t t t )
  ( FET          NILD         FET_NILD         t t t t t )
  ( FET          PILD         FET_PILD         t t t t t )
  ( VTNCEL       drawing      VTNCEL_drawing   t t t t t )
  ( VTPCEL       drawing      VTPCEL_drawing   t t t t t )
  ( DCO          drawing      DCO_drawing      t t t t t )
  ( DCO          drawing1     DCO_drawing1     t t t t t )
  ( DCO          drawing2     DCO_drawing2     t t t t t )
  ( SRM_LOP      dpsrm        SRM_LOP_dpsrm    t t t t t )
  ( SRM_LOP      dummy1       SRM_LOP_dummy1   t t t t t )
  ( SRM_LOP      dummy2       SRM_LOP_dummy2   t t t t t )
  ( SRM_LOP      dummy3       SRM_LOP_dummy3   t t t t t )
  ( SRM_LOP      dummy4       SRM_LOP_dummy4   t t t t t )
  ( SRM_LOP      dummy5       SRM_LOP_dummy5   t t t t t )
  ( SRM_LOP      dummy6       SRM_LOP_dummy6   t t t t t )
  ( SRM_LOP      dummy7       SRM_LOP_dummy7   t t t t t )
  ( SRM_LOP      dummy8       SRM_LOP_dummy8   t t t t t )
  ( SRM_DOD      dummy1       SRM_DOD_dummy1   t t t t t )
  ( SRM_DOD      dummy2       SRM_DOD_dummy2   t t t t t )
  ( SRM_DOD      dummy3       SRM_DOD_dummy3   t t t t t )
  ( SRM_DOD      dummy4       SRM_DOD_dummy4   t t t t t )
  ( SRM_DOD      dummy5       SRM_DOD_dummy5   t t t t t )
  ( SRM_DOD      dummy6       SRM_DOD_dummy6   t t t t t )
  ( SRM_DOD      dummy7       SRM_DOD_dummy7   t t t t t )
  ( SRM_DOD      dummy8       SRM_DOD_dummy8   t t t t t )
  ( SRM_DOD      dummy9       SRM_DOD_dummy9   t t t t t )
  ( SRM_DOD      dummya       SRM_DOD_dummya   t t t t t )
  ( SRM_DOD      dummyb       SRM_DOD_dummyb   t t t t t )
  ( SRM_DOD      dummyc       SRM_DOD_dummyc   t t t t t )
  ( SRM_DOD      dummyd       SRM_DOD_dummyd   t t t t t )
  ( SRM_DOD      dummye       SRM_DOD_dummye   t t t t t )
  ( SRM_DOD      dummyf       SRM_DOD_dummyf   t t t t t )
  ( SRM_DOD      dummyg       SRM_DOD_dummyg   t t t t t )
  ( SRM_DPO      dummy1       SRM_DPO_dummy1   t t t t t )
  ( SRM_DPO      dummy2       SRM_DPO_dummy2   t t t t t )
  ( SRM_DPO      dummy3       SRM_DPO_dummy3   t t t t t )
  ( SRM_DPO      dummy4       SRM_DPO_dummy4   t t t t t )
  ( SRM_DPO      dummy5       SRM_DPO_dummy5   t t t t t )
  ( SRM_DPO      dummy6       SRM_DPO_dummy6   t t t t t )
  ( SRM_DPO      dummy7       SRM_DPO_dummy7   t t t t t )
  ( SRAMDMY      waive        SRAMDMY_waive    t t t t t )
  ( SRAMDMY      passgate     SRAMDMY_passgate t t t t t )
  ( SRAMDMY      allsram      SRAMDMY_allsram  t t t t t )
  ( SRAMDMY      cvss_sram    SRAMDMY_cvss_sram t t t t t )
  ( SRAMDMY      periphery    SRAMDMY_periphery t t t t t )
  ( SRAMDMY      periphery_g  SRAMDMY_periphery_g t t t t t )
  ( SRAMDMY      dummy6       SRAMDMY_dummy6   t t t t t )
  ( SRAMDMY      dummy7       SRAMDMY_dummy7   t t t t t )
  ( SRAMDMY      dummy8       SRAMDMY_dummy8   t t t t t )
  ( SRAMDMY      dummy9       SRAMDMY_dummy9   t t t t t )
  ( SRAMDMY      drawing1     SRAMDMY_drawing1 t t t t t )
  ( SRAMDMY      drawing2     SRAMDMY_drawing2 t t t t t )
  ( SRAMDMY      drawing3     SRAMDMY_drawing3 t t t t t )
  ( FLASH        drawing      FLASH_drawing    t t t t t )
  ( FLASH        testa        FLASH_testa      t t t t t )
  ( FLASH        testb        FLASH_testb      t t t t t )
  ( FLASH        testc        FLASH_testc      t t t t t )
  ( FLASH        drawing1     FLASH_drawing1   t t t t t )
  ( FLASH        drawing2     FLASH_drawing2   t t t t t )
  ( FLASH        drawing3     FLASH_drawing3   t t t t t )
  ( FLASH        drawing4     FLASH_drawing4   t t t t t )
  ( FLASH        drawing5     FLASH_drawing5   t t t t t )
  ( FLASH        drawing6     FLASH_drawing6   t t t t t )
  ( FLASH        drawing7     FLASH_drawing7   t t t t t )
  ( FLASH        drawing8     FLASH_drawing8   t t t t t )
  ( FLASH        drawing9     FLASH_drawing9   t t t t t )
  ( FLASH        test0        FLASH_test0      t t t t t )
  ( FLASH        test1        FLASH_test1      t t t t t )
  ( FLASH        test2        FLASH_test2      t t t t t )
  ( FLASH        test3        FLASH_test3      t t t t t )
  ( FLASH        test4        FLASH_test4      t t t t t )
  ( FLASH        test5        FLASH_test5      t t t t t )
  ( FLASH        test6        FLASH_test6      t t t t t )
  ( FLASH        test7        FLASH_test7      t t t t t )
  ( FLASH        test8        FLASH_test8      t t t t t )
  ( FLASH        test9        FLASH_test9      t t t t t )
  ( FLASH        dummya       FLASH_dummya     t t t t t )
  ( FLASH        dummyb       FLASH_dummyb     t t t t t )
  ( FLASH        dummyc       FLASH_dummyc     t t t t t )
  ( FLASH        dummyd       FLASH_dummyd     t t t t t )
  ( FLASH        dummye       FLASH_dummye     t t t t t )
  ( FLASH        dummyf       FLASH_dummyf     t t t t t )
  ( FLASH        dummyg       FLASH_dummyg     t t t t t )
  ( FLASH        dummyh       FLASH_dummyh     t t t t t )
  ( FLASH        dummyi       FLASH_dummyi     t t t t t )
  ( FLASH        dummyj       FLASH_dummyj     t t t t t )
  ( FLASH        dummyk       FLASH_dummyk     t t t t t )
  ( FLASH        dummyl       FLASH_dummyl     t t t t t )
  ( FLASH        dummym       FLASH_dummym     t t t t t )
  ( FLASH        drawinga     FLASH_drawinga   t t t t t )
  ( FLASH        drawingb     FLASH_drawingb   t t t t t )
  ( FLASH        drawingc     FLASH_drawingc   t t t t t )
  ( FLASH        drawingd     FLASH_drawingd   t t t t t )
  ( FLASH        drawinge     FLASH_drawinge   t t t t t )
  ( FLASH1       drawing1     FLASH1_drawing1  t t t t t )
  ( FLASH1       drawing2     FLASH1_drawing2  t t t t t )
  ( FLASH1       drawing3     FLASH1_drawing3  t t t t t )
  ( FLASH1       drawing4     FLASH1_drawing4  t t t t t )
  ( FLASH1       drawing5     FLASH1_drawing5  t t t t t )
  ( FLASH1       drawing6     FLASH1_drawing6  t t t t t )
  ( FLASH1       drawing7     FLASH1_drawing7  t t t t t )
  ( FLASH1       drawing8     FLASH1_drawing8  t t t t t )
  ( FLASH1       drawing9     FLASH1_drawing9  t t t t t )
  ( FLASH1       drawinga     FLASH1_drawinga  t t t t t )
  ( FLASH1       drawingb     FLASH1_drawingb  t t t t t )
  ( FLASH1       drawingc     FLASH1_drawingc  t t t t t )
  ( FLASH1       drawingd     FLASH1_drawingd  t t t t t )
  ( FLASH1       drawinge     FLASH1_drawinge  t t t t t )
  ( FLASH1       drawingf     FLASH1_drawingf  t t t t t )
  ( FLASH1       drawingh     FLASH1_drawingh  t t t t t )
  ( FLASH1       dummya       FLASH1_dummya    t t t t t )
  ( FLASH1       dummyb       FLASH1_dummyb    t t t t t )
  ( FLASH1       dummyc       FLASH1_dummyc    t t t t t )
  ( FLASH1       dummyd       FLASH1_dummyd    t t t t t )
  ( FLASH1       dummye       FLASH1_dummye    t t t t t )
  ( FLASH1       dummyf       FLASH1_dummyf    t t t t t )
  ( FLASH1       dummyg       FLASH1_dummyg    t t t t t )
  ( FLASH1       dummyh       FLASH1_dummyh    t t t t t )
  ( FLASH1       dummyi       FLASH1_dummyi    t t t t t )
  ( FLASH1       dummyj       FLASH1_dummyj    t t t t t )
  ( FLASH1       dummyk       FLASH1_dummyk    t t t t t )
  ( FLASH1       dummyl       FLASH1_dummyl    t t t t t )
  ( FLASH1       dummym       FLASH1_dummym    t t t t t )
  ( FLASH1       dummyn       FLASH1_dummyn    t t t t t )
  ( FLASH1       dummyo       FLASH1_dummyo    t t t t t )
  ( FLASH1       dummyp       FLASH1_dummyp    t t t t t )
  ( FLASH1       dummyq       FLASH1_dummyq    t t t t t )
  ( FLASH1       dummyr       FLASH1_dummyr    t t t t t )
  ( FLASH2       dummyd       FLASH2_dummyd    t t t t t )
  ( FLASH2       dummye       FLASH2_dummye    t t t t t )
  ( FLASH2       dummyf       FLASH2_dummyf    t t t t t )
  ( FLASH2       dummyg       FLASH2_dummyg    t t t t t )
  ( FLASH2       dummyh       FLASH2_dummyh    t t t t t )
  ( FLASH2       dummyi       FLASH2_dummyi    t t t t t )
  ( FLASH2       dummyj       FLASH2_dummyj    t t t t t )
  ( FLASH2       dummyk       FLASH2_dummyk    t t t t t )
  ( FLASH2       dummyl       FLASH2_dummyl    t t t t t )
  ( FLASH2       dummym       FLASH2_dummym    t t t t t )
  ( FLASH2       dummyn       FLASH2_dummyn    t t t t t )
  ( FLASH2       dummyo       FLASH2_dummyo    t t t t t )
  ( FLASH2       dummyp       FLASH2_dummyp    t t t t t )
  ( FLASH2       dummyq       FLASH2_dummyq    t t t t t )
  ( FLASH2       dummyr       FLASH2_dummyr    t t t t t )
  ( FLASH2       dummy        FLASH2_dummy     t t t t t )
  ( FLASH2       drawing1     FLASH2_drawing1  t t t t t )
  ( FLASH2       drawing2     FLASH2_drawing2  t t t t t )
  ( FLASH2       drawing3     FLASH2_drawing3  t t t t t )
  ( FLASH2       drawing4     FLASH2_drawing4  t t t t t )
  ( FLASH2       drawing5     FLASH2_drawing5  t t t t t )
  ( FLASH2       drawing6     FLASH2_drawing6  t t t t t )
  ( FLASH2       drawing7     FLASH2_drawing7  t t t t t )
  ( FLASH2       drawing8     FLASH2_drawing8  t t t t t )
  ( FLASH2       drawing9     FLASH2_drawing9  t t t t t )
  ( FLASH2       drawinga     FLASH2_drawinga  t t t t t )
  ( FLASH2       drawingb     FLASH2_drawingb  t t t t t )
  ( FLASH2       drawingc     FLASH2_drawingc  t t t t t )
  ( FLASH2       drawingd     FLASH2_drawingd  t t t t t )
  ( FLASH2       drawinge     FLASH2_drawinge  t t t t t )
  ( FLASH2       drawingf     FLASH2_drawingf  t t t t t )
  ( FLASH2       drawingh     FLASH2_drawingh  t t t t t )
  ( FLASH2       dummya       FLASH2_dummya    t t t t t )
  ( FLASH2       dummyb       FLASH2_dummyb    t t t t t )
  ( FLASH2       dummyc       FLASH2_dummyc    t t t t t )
  ( FLASH2       test0        FLASH2_test0     t t t t t )
  ( FLASH2       test1        FLASH2_test1     t t t t t )
  ( FLASH2       test2        FLASH2_test2     t t t t t )
  ( FLASH2       test3        FLASH2_test3     t t t t t )
  ( FLASH2       test4        FLASH2_test4     t t t t t )
  ( FLASH2       test5        FLASH2_test5     t t t t t )
  ( FLASH2       test6        FLASH2_test6     t t t t t )
  ( FLASH2       test7        FLASH2_test7     t t t t t )
  ( FLASH2       test8        FLASH2_test8     t t t t t )
  ( FLASH2       test9        FLASH2_test9     t t t t t )
  ( FLASH2       testa        FLASH2_testa     t t t t t )
  ( FLASH2       testb        FLASH2_testb     t t t t t )
  ( FLASH2       testc        FLASH2_testc     t t t t t )
  ( FLASH2       testd        FLASH2_testd     t t t t t )
  ( FLASH2       teste        FLASH2_teste     t t t t t )
  ( FLASH2       testg        FLASH2_testg     t t t t t )
  ( SIOTP        drawing      SIOTP_drawing    t t t t t )
  ( MW           drawing      MW_drawing       t t t t t )
  ( FLGT         drawing      FLGT_drawing     t t t t t )
  ( MPOL         drawing      MPOL_drawing     t t t t t )
  ( HVII         drawing      HVII_drawing     t t t t t )
  ( HVNW         drawing      HVNW_drawing     t t t t t )
  ( HVPW         drawing      HVPW_drawing     t t t t t )
  ( TOPMCON      drawing      TOPMCON_drawing  t t t t t )
  ( OD1T         drawing      OD1T_drawing     t t t t t )
  ( CLDD         drawing      CLDD_drawing     t t t t t )
  ( CLDD         drawing1     CLDD_drawing1    t t t t t )
  ( SNCT         drawing      SNCT_drawing     t t t t t )
  ( CROWN        drawing      CROWN_drawing    t t t t t )
  ( CROWN        drawing1     CROWN_drawing1   t t t t t )
  ( CROWN        drawing2     CROWN_drawing2   t t t t t )
  ( P3           drawing      P3_drawing       t t t t t )
  ( P3           drawing1     P3_drawing1      t t t t t )
  ( RAM1TDMY     drawing      RAM1TDMY_drawing t t t t t )
  ( RAM1TDMY     drawing1     RAM1TDMY_drawing1 t t t t t )
  ( RAM1TDMY     drawing2     RAM1TDMY_drawing2 t t t t t )
  ( RAM1TDMY     drawing3     RAM1TDMY_drawing3 t t t t t )
  ( RAM1TDMY     drawing4     RAM1TDMY_drawing4 t t t t t )
  ( RAM1TDMY     drawing5     RAM1TDMY_drawing5 t t t t t )
  ( RAM1TDMY     drawing6     RAM1TDMY_drawing6 t t t t t )
  ( RAM1TDMY     drawing7     RAM1TDMY_drawing7 t t t t t )
  ( RODMY        drawing      RODMY_drawing    t t t t t )
  ( CO2          drawing      CO2_drawing      t t t t t )
  ( CO2          drawing1     CO2_drawing1     t t t t t )
  ( SRM          drawing      SRM_drawing      t t t t t )
  ( SRM          drawing1     SRM_drawing1     t t t t t )
  ( SRM          drawing2     SRM_drawing2     t t t t t )
  ( SRM          drawing3     SRM_drawing3     t t t t t )
  ( SRM          drawing4     SRM_drawing4     t t t t t )
  ( SRM          drawing5     SRM_drawing5     t t t t t )
  ( SRM          drawing6     SRM_drawing6     t t t t t )
  ( SRM          drawing7     SRM_drawing7     t t t t t )
  ( SRM          drawing8     SRM_drawing8     t t t t t )
  ( SRM          drawing9     SRM_drawing9     t t t t t )
  ( SRM          test0        SRM_test0        t t t t t )
  ( SRM          test1        SRM_test1        t t t t t )
  ( SRM          test2        SRM_test2        t t t t t )
  ( SRM          test3        SRM_test3        t t t t t )
  ( SRM          test4        SRM_test4        t t t t t )
  ( SRM          test5        SRM_test5        t t t t t )
  ( SRM          test6        SRM_test6        t t t t t )
  ( SRM          test7        SRM_test7        t t t t t )
  ( SRM          test8        SRM_test8        t t t t t )
  ( SRM          test9        SRM_test9        t t t t t )
  ( SRM          testa        SRM_testa        t t t t t )
  ( SRM          testb        SRM_testb        t t t t t )
  ( SRM          testc        SRM_testc        t t t t t )
  ( SRM          dummy1       SRM_dummy1       t t t t t )
  ( SRM          dummya       SRM_dummya       t t t t t )
  ( SRM          dummyb       SRM_dummyb       t t t t t )
  ( SRM          dummyc       SRM_dummyc       t t t t t )
  ( SRM          dummyd       SRM_dummyd       t t t t t )
  ( SRM          dummye       SRM_dummye       t t t t t )
  ( SRM          dummyf       SRM_dummyf       t t t t t )
  ( SRM          dummyg       SRM_dummyg       t t t t t )
  ( SRM          dummyh       SRM_dummyh       t t t t t )
  ( SRM          dummyi       SRM_dummyi       t t t t t )
  ( SRM          dummyj       SRM_dummyj       t t t t t )
  ( SRM          dummyk       SRM_dummyk       t t t t t )
  ( SRM          dummyl       SRM_dummyl       t t t t t )
  ( SRM          dummym       SRM_dummym       t t t t t )
  ( SRM          dummy3       SRM_dummy3       t t t t t )
  ( SRM          dummy4       SRM_dummy4       t t t t t )
  ( SRM          dummy5       SRM_dummy5       t t t t t )
  ( SRM          dummy6       SRM_dummy6       t t t t t )
  ( SRM          dummy7       SRM_dummy7       t t t t t )
  ( SRM          dummy8       SRM_dummy8       t t t t t )
  ( SRM          dummy9       SRM_dummy9       t t t t t )
  ( SRM          drawinga     SRM_drawinga     t t t t t )
  ( SRM          drawingb     SRM_drawingb     t t t t t )
  ( SRM          drawingc     SRM_drawingc     t t t t t )
  ( SRM          drawingd     SRM_drawingd     t t t t t )
  ( SRM          drawinge     SRM_drawinge     t t t t t )
  ( SRM1         dummy1       SRM1_dummy1      t t t t t )
  ( SRM1         dummy2       SRM1_dummy2      t t t t t )
  ( SRM1         dummy3       SRM1_dummy3      t t t t t )
  ( SRM1         dummy4       SRM1_dummy4      t t t t t )
  ( SRM1         dummy5       SRM1_dummy5      t t t t t )
  ( SRM1         dummy6       SRM1_dummy6      t t t t t )
  ( SRM1         dummy7       SRM1_dummy7      t t t t t )
  ( SRM1         dummy8       SRM1_dummy8      t t t t t )
  ( SRM1         dummy9       SRM1_dummy9      t t t t t )
  ( SRM1         dummya       SRM1_dummya      t t t t t )
  ( SRM1         dummyb       SRM1_dummyb      t t t t t )
  ( SRM1         dummyc       SRM1_dummyc      t t t t t )
  ( SRM1         dummyd       SRM1_dummyd      t t t t t )
  ( SRM1         dummye       SRM1_dummye      t t t t t )
  ( SRM1         dummyf       SRM1_dummyf      t t t t t )
  ( SRM1         dummyg       SRM1_dummyg      t t t t t )
  ( SRM1         dummyh       SRM1_dummyh      t t t t t )
  ( SRM1         dummyi       SRM1_dummyi      t t t t t )
  ( SRM1         dummyj       SRM1_dummyj      t t t t t )
  ( SRM1         dummyk       SRM1_dummyk      t t t t t )
  ( FINFET       boundary     FINFET_boundary  t t t t t )
  ( FINFET       dummy        FINFET_dummy     t t t t t )
  ( FINFET       dummy1       FINFET_dummy1    t t t t t )
  ( FINFET       dummy6       FINFET_dummy6    t t t t t )
  ( FINFET       dummyg       FINFET_dummyg    t t t t t )
  ( FINFET       dummyh       FINFET_dummyh    t t t t t )
  ( FINFET       dummy7       FINFET_dummy7    t t t t t )
  ( FINFET       dummyi       FINFET_dummyi    t t t t t )
  ( FINFET       dummy8       FINFET_dummy8    t t t t t )
  ( FINFET       dummy9       FINFET_dummy9    t t t t t )
  ( FINFET       dummyf       FINFET_dummyf    t t t t t )
  ( FINFET       dummya       FINFET_dummya    t t t t t )
  ( FINFET       dummyb       FINFET_dummyb    t t t t t )
  ( FINFET       dummyc       FINFET_dummyc    t t t t t )
  ( FINFET       dummyd       FINFET_dummyd    t t t t t )
  ( FINFET       dummye       FINFET_dummye    t t t t t )
  ( OVERLAP      drawing      OVERLAP_drawing  t t t t t )
  ( prBoundary   drawing      prBoundary_drawing t t t t t )
  ( BJTDMY       drawing      BJTDMY_drawing   t t t t t )
  ( PSUB2        drawing      PSUB2_drawing    t t t t t )
  ( HOTWL        drawing      HOTWL_drawing    t t t t t )
  ( NWDMY        drawing      NWDMY_drawing    t t t t t )
  ( NWDMY        lvs          NWDMY_lvs        t t t t t )
  ( IONW_LV      drawing      IONW_LV_drawing  t t t t t )
  ( RPDMY        drawing      RPDMY_drawing    t t t t t )
  ( RPDMY        lvs          RPDMY_lvs        t t t t t )
  ( RPDMY        dummy1       RPDMY_dummy1     t t t t t )
  ( RPDMY        dummy2       RPDMY_dummy2     t t t t t )
  ( RMDMY        drawing1     RMDMY_drawing1   t t t t t )
  ( RMDMY        drawing2     RMDMY_drawing2   t t t t t )
  ( RMDMY        drawing3     RMDMY_drawing3   t t t t t )
  ( RMDMY        drawing4     RMDMY_drawing4   t t t t t )
  ( RMDMY        drawing5     RMDMY_drawing5   t t t t t )
  ( RMDMY        drawing6     RMDMY_drawing6   t t t t t )
  ( RMDMY        drawing7     RMDMY_drawing7   t t t t t )
  ( RMDMY        drawing8     RMDMY_drawing8   t t t t t )
  ( RMDMY        drawing9     RMDMY_drawing9   t t t t t )
  ( RMDMY        drawinga     RMDMY_drawinga   t t t t t )
  ( RMDMY        drawingb     RMDMY_drawingb   t t t t t )
  ( RMDMY        drawingc     RMDMY_drawingc   t t t t t )
  ( RMDMY        drawingd     RMDMY_drawingd   t t t t t )
  ( RMDMY        drawingh     RMDMY_drawingh   t t t t t )
  ( RH           drawing      RH_drawing       t t t t t )
  ( RH           drawing1     RH_drawing1      t t t t t )
  ( RH           drawing2     RH_drawing2      t t t t t )
  ( RH           drawing4     RH_drawing4      t t t t t )
  ( DIODMY       drawing      DIODMY_drawing   t t t t t )
  ( DIODMY       dummya       DIODMY_dummya    t t t t t )
  ( DIODMY       dummyb       DIODMY_dummyb    t t t t t )
  ( DIODMY       dummyc       DIODMY_dummyc    t t t t t )
  ( DIODMY       dummyd       DIODMY_dummyd    t t t t t )
  ( DIODMY       dummye       DIODMY_dummye    t t t t t )
  ( SDI          drawing      SDI_drawing      t t t t t )
  ( SDI          drawing3     SDI_drawing3     t t t t t )
  ( SDI          drawing4     SDI_drawing4     t t t t t )
  ( SDI          drawing5     SDI_drawing5     t t t t t )
  ( DPDMY        drawing      DPDMY_drawing    t t t t t )
  ( text         drawing      text_drawing     t t t t t )
  ( M1           pin          M1_pin           t t t t t )
  ( M1           text         M1_text          t t t t t )
  ( M1           net          M1_net           t t t nil nil )
  ( M1           boundary     M1_boundary      t t t nil nil )
  ( M1           prob         M1_prob          t t t t t )
  ( M2           pin          M2_pin           t t t t t )
  ( M2           text         M2_text          t t t t t )
  ( M2           net          M2_net           t t t nil nil )
  ( M2           boundary     M2_boundary      t t t nil nil )
  ( M2           prob         M2_prob          t t t t t )
  ( M3           pin          M3_pin           t t t t t )
  ( M3           text         M3_text          t t t t t )
  ( M3           net          M3_net           t t t nil nil )
  ( M3           boundary     M3_boundary      t t t nil nil )
  ( M3           prob         M3_prob          t t t t t )
  ( M4           pin          M4_pin           t t t t t )
  ( M4           text         M4_text          t t t t t )
  ( M4           net          M4_net           t t t nil nil )
  ( M4           boundary     M4_boundary      t t t nil nil )
  ( M4           prob         M4_prob          t t t t t )
  ( M5           pin          M5_pin           t t t t t )
  ( M5           text         M5_text          t t t t t )
  ( M5           net          M5_net           t t t nil nil )
  ( M5           boundary     M5_boundary      t t t nil nil )
  ( M5           prob         M5_prob          t t t t t )
  ( M6           pin          M6_pin           t t t t t )
  ( M6           text         M6_text          t t t t t )
  ( M6           net          M6_net           t t t nil nil )
  ( M6           boundary     M6_boundary      t t t nil nil )
  ( M6           prob         M6_prob          t t t t t )
  ( M7           pin          M7_pin           t t t t t )
  ( M7           text         M7_text          t t t t t )
  ( M7           net          M7_net           t t t nil nil )
  ( M7           boundary     M7_boundary      t t t nil nil )
  ( M7           prob         M7_prob          t t t t t )
  ( M8           pin          M8_pin           t t t t t )
  ( M8           text         M8_text          t t t t t )
  ( M8           net          M8_net           t t t nil nil )
  ( M8           boundary     M8_boundary      t t t nil nil )
  ( M8           prob         M8_prob          t t t t t )
  ( M9           pin          M9_pin           t t t t t )
  ( M9           text         M9_text          t t t t t )
  ( M9           net          M9_net           t t t nil nil )
  ( M9           boundary     M9_boundary      t t t nil nil )
  ( M9           prob         M9_prob          t t t t t )
  ( VIA1         net          VIA1_net         t t t nil nil )
  ( VIA1         pin          VIA1_pin         t t t t t )
  ( VIA1         boundary     VIA1_boundary    t t t nil nil )
  ( VIA2         net          VIA2_net         t t t nil nil )
  ( VIA2         pin          VIA2_pin         t t t t t )
  ( VIA2         boundary     VIA2_boundary    t t t nil nil )
  ( VIA3         net          VIA3_net         t t t nil nil )
  ( VIA3         pin          VIA3_pin         t t t t t )
  ( VIA3         boundary     VIA3_boundary    t t t nil nil )
  ( VIA4         net          VIA4_net         t t t nil nil )
  ( VIA4         pin          VIA4_pin         t t t t t )
  ( VIA4         boundary     VIA4_boundary    t t t nil nil )
  ( VIA5         net          VIA5_net         t t t nil nil )
  ( VIA5         pin          VIA5_pin         t t t t t )
  ( VIA5         boundary     VIA5_boundary    t t t nil nil )
  ( VIA6         net          VIA6_net         t t t nil nil )
  ( VIA6         pin          VIA6_pin         t t t t t )
  ( VIA6         boundary     VIA6_boundary    t t t nil nil )
  ( VIA7         net          VIA7_net         t t t nil nil )
  ( VIA7         pin          VIA7_pin         t t t t t )
  ( VIA7         boundary     VIA7_boundary    t t t nil nil )
  ( VIA8         net          VIA8_net         t t t nil nil )
  ( VIA8         pin          VIA8_pin         t t t t t )
  ( VIA8         boundary     VIA8_boundary    t t t nil nil )
  ( PO           text         PO_text          t t t t t )
  ( AP           text         AP_text          t t t t t )
  ( OD           pin          OD_pin           t t t t t )
  ( CU_PPI       pin          CU_PPI_pin       t t t t t )
  ( PO           pin          PO_pin           t t t t t )
  ( RV           pin          RV_pin           t t t t t )
  ( PO           lvs          PO_lvs           t t t t t )
  ( OD           dummy        OD_dummy         t t t t t )
  ( PO           dummy        PO_dummy         t t t t t )
  ( PO           dummy1       PO_dummy1        t t t t t )
  ( SR_ESD       drawing      SR_ESD_drawing   t t t t t )
  ( marker       error        marker_error     t t t t t )
  ( marker       warning      marker_warning   t t t t t )
  ( prBoundary   label        prBoundary_label t t t t nil )
  ( prBoundary   boundary     prBoundary_boundary t t t t nil )
  ( CO           pin          CO_pin           t t t nil nil )
  ( OD           net          OD_net           t t t nil nil )
  ( RV           net          RV_net           t t t nil nil )
  ( AP           net          AP_net           t t t nil nil )
  ( CO           boundary     CO_boundary      t t t nil nil )
  ( OD           boundary     OD_boundary      t t t nil nil )
  ( PO           boundary     PO_boundary      t t t nil nil )
  ( AP           boundary     AP_boundary      t t t nil nil )
  ( RV           boundary     RV_boundary      t t t nil nil )
  ( VTUL_N       drawing      VTUL_N_drawing   t t t t t )
  ( eVTL_N       drawing      eVTL_N_drawing   t t t t t )
  ( VTUL_P       drawing      VTUL_P_drawing   t t t t t )
  ( eVTL_P       drawing      eVTL_P_drawing   t t t t t )
  ( instance     drawing      instance_drawing t t t t nil )
  ( instance     label        instance_label   t t t t nil )
  ( hilite       drawing      hilite_drawing   t t t t nil )
  ( hilite       drawing1     hilite_drawing1  t t t t nil )
  ( hilite       drawing2     hilite_drawing2  t t t t nil )
  ( hilite       drawing3     hilite_drawing3  t t t t nil )
  ( hilite       drawing4     hilite_drawing4  t t t t nil )
  ( hilite       drawing5     hilite_drawing5  t t t t nil )
  ( hilite       drawing6     hilite_drawing6  t t t t nil )
  ( hilite       drawing7     hilite_drawing7  t t t t nil )
  ( hilite       drawing8     hilite_drawing8  t t t t nil )
  ( hilite       drawing9     hilite_drawing9  t t t t nil )
  ( y0           drawing      y0_drawing       t t t t nil )
  ( y1           drawing      y1_drawing       t t t t nil )
  ( y2           drawing      y2_drawing       t t t t nil )
  ( y3           drawing      y3_drawing       t t t t nil )
  ( y4           drawing      y4_drawing       t t t t nil )
  ( y5           drawing      y5_drawing       t t t t nil )
  ( y6           drawing      y6_drawing       t t t t nil )
  ( y7           drawing      y7_drawing       t t t t nil )
  ( y8           drawing      y8_drawing       t t t t nil )
  ( y9           drawing      y9_drawing       t t t t nil )
  ( grid         drawing      grid_drawing     t nil t nil nil )
  ( grid         drawing1     grid_drawing1    t nil t nil nil )
  ( axis         drawing      axis_drawing     t nil t t nil )
  ( border       drawing      border_drawing   t t t t nil )
  ( align        drawing      align_drawing    t t t t nil )
  ( device       drawing      device_drawing   t t t t nil )
  ( device       drawing1     device_drawing1  t t t t nil )
  ( device       drawing2     device_drawing2  t t t t nil )
  ( device       annotate     device_annotate  t t t t nil )
  ( device       label        device_label     t t t t nil )
  ( wire         drawing      wire_drawing     t t t t nil )
  ( wire         label        wire_label       t t t t nil )
  ( wire         flight       wire_flight      t t t t nil )
  ( select       drawing      select_drawing   t t t t nil )
  ( drive        drawing      drive_drawing    t t t t nil )
  ( hiz          drawing      hiz_drawing      t t t t nil )
  ( pin          drawing      pin_drawing      t t t t nil )
  ( pin          annotate     pin_annotate     t t t t nil )
  ( pin          label        pin_label        t t t t nil )
  ( resist       drawing      resist_drawing   t t t t nil )
  ( spike        drawing      spike_drawing    t t t t nil )
  ( supply       drawing      supply_drawing   t t t t nil )
  ( unknown      drawing      unknown_drawing  t t t t nil )
  ( unset        drawing      unset_drawing    t t t t nil )
  ( annotate     drawing      annotate_drawing t t t t nil )
  ( annotate     drawing1     annotate_drawing1 t t t t nil )
  ( annotate     drawing2     annotate_drawing2 t t t t nil )
  ( annotate     drawing3     annotate_drawing3 t t t t nil )
  ( annotate     drawing4     annotate_drawing4 t t t t nil )
  ( annotate     drawing5     annotate_drawing5 t t t t nil )
  ( annotate     drawing6     annotate_drawing6 t t t t nil )
  ( annotate     drawing7     annotate_drawing7 t t t t nil )
  ( annotate     drawing8     annotate_drawing8 t t t t nil )
  ( annotate     drawing9     annotate_drawing9 t t t t nil )
  ( designFlow   drawing      designFlow_drawing t t t nil nil )
  ( designFlow   drawing1     designFlow_drawing1 t t t nil nil )
  ( designFlow   drawing2     designFlow_drawing2 t t t nil nil )
  ( designFlow   drawing3     designFlow_drawing3 t t t nil nil )
  ( designFlow   drawing4     designFlow_drawing4 t t t nil nil )
  ( designFlow   drawing5     designFlow_drawing5 t t t nil nil )
  ( designFlow   drawing6     designFlow_drawing6 t t t nil nil )
  ( designFlow   drawing7     designFlow_drawing7 t t t nil nil )
  ( designFlow   drawing8     designFlow_drawing8 t t t nil nil )
  ( designFlow   drawing9     designFlow_drawing9 t t t nil nil )
  ( edgeLayer    drawing      edgeLayer_drawing t t t t nil )
  ( edgeLayer    pin          edgeLayer_pin    t t t t nil )
  ( changedLayer tool0        changedLayer_tool0 nil nil t nil nil )
  ( changedLayer tool1        changedLayer_tool1 nil nil t nil nil )
  ( snap         drawing      snap_drawing     t t t t nil )
  ( stretch      drawing      stretch_drawing  t t t t nil )
  ( Row          drawing      Row_drawing      t t t t nil )
  ( Row          label        Row_label        t nil t t nil )
  ( Group        drawing      Group_drawing    t t t t nil )
  ( Group        label        Group_label      t nil t t nil )
  ( Cannotoccupy drawing      Cannotoccupy_drawing t t t t nil )
  ( Cannotoccupy boundary     Cannotoccupy_boundary t t t t nil )
  ( boundary     drawing      boundary_drawing t t t t nil )
  ( boundary     boundary     boundary_boundary t t t t t )
  ( Canplace     drawing      Canplace_drawing t t t t nil )
  ( background   drawing      background_drawing t nil t nil nil )
  ( text         drawing1     text_drawing1    t t t t nil )
  ( text         drawing2     text_drawing2    t t t t nil )
  ( Unrouted     drawing      Unrouted_drawing t t t t nil )
  ( Unrouted     drawing1     Unrouted_drawing1 t t t t nil )
  ( Unrouted     drawing2     Unrouted_drawing2 t t t t nil )
  ( Unrouted     drawing3     Unrouted_drawing3 t t t t nil )
  ( Unrouted     drawing4     Unrouted_drawing4 t t t t nil )
  ( Unrouted     drawing5     Unrouted_drawing5 t t t t nil )
  ( Unrouted     drawing6     Unrouted_drawing6 t t t t nil )
  ( Unrouted     drawing7     Unrouted_drawing7 t t t t nil )
  ( Unrouted     drawing8     Unrouted_drawing8 t t t t nil )
  ( Unrouted     drawing9     Unrouted_drawing9 t t t t nil )
  ( hardFence    drawing      hardFence_drawing t t t t nil )
  ( softFence    drawing      softFence_drawing t t t t nil )
  ( INDDMY       drawing      INDDMY_drawing   t t t t t )
  ( INDDMY       drawing1     INDDMY_drawing1  t t t t t )
  ( INDDMY       drawing2     INDDMY_drawing2  t t t t t )
  ( INDDMY       drawing3     INDDMY_drawing3  t t t t t )
  ( INDDMY       drawing4     INDDMY_drawing4  t t t t t )
  ( INDDMY       drawing5     INDDMY_drawing5  t t t t t )
  ( INDDMY       drawing6     INDDMY_drawing6  t t t t t )
  ( INDDMY       drawing7     INDDMY_drawing7  t t t t t )
  ( INDDMY       drawing8     INDDMY_drawing8  t t t t t )
  ( INDDMY       drawing9     INDDMY_drawing9  t t t t t )
  ( INDDMY       drawinga     INDDMY_drawinga  t t t t t )
  ( INDDMY       drawingb     INDDMY_drawingb  t t t t t )
  ( INDDMY       drawingc     INDDMY_drawingc  t t t t t )
  ( INDDMY       drawingd     INDDMY_drawingd  t t t t t )
  ( INDDMY       drawinge     INDDMY_drawinge  t t t t t )
  ( INDDMY       rad          INDDMY_rad       t t t t t )
  ( INDDMY       dummy1       INDDMY_dummy1    t t t t t )
  ( INDDMY       dummy2       INDDMY_dummy2    t t t t t )
  ( INDDMY       dummy3       INDDMY_dummy3    t t t t t )
  ( INDDMY       dummy4       INDDMY_dummy4    t t t t t )
  ( INDDMY       dummy5       INDDMY_dummy5    t t t t t )
  ( INDDMY       dummy6       INDDMY_dummy6    t t t t t )
  ( INDDMY       dummy7       INDDMY_dummy7    t t t t t )
  ( INDDMY       dummy8       INDDMY_dummy8    t t t t t )
  ( INDDMY       dummy9       INDDMY_dummy9    t t t t t )
  ( INDDMY       dummya       INDDMY_dummya    t t t t t )
  ( INDDMY       dummyb       INDDMY_dummyb    t t t t t )
  ( INDDMY       dummyc       INDDMY_dummyc    t t t t t )
  ( INDDMY       dummyd       INDDMY_dummyd    t t t t t )
  ( INDDMY       test0        INDDMY_test0     t t t t t )
  ( INDDMY       test1        INDDMY_test1     t t t t t )
  ( INDDMY       test2        INDDMY_test2     t t t t t )
  ( INDDMY       test3        INDDMY_test3     t t t t t )
  ( INDDMY       test4        INDDMY_test4     t t t t t )
  ( ESD1DMY      drawing      ESD1DMY_drawing  t t t t t )
  ( ESD2DMY      drawing      ESD2DMY_drawing  t t t t t )
  ( ESDIMP       drawing      ESDIMP_drawing   t t t t t )
  ( CTMDMY       drawing      CTMDMY_drawing   t t t t t )
  ( CTMDMY       drawing1     CTMDMY_drawing1  t t t t t )
  ( CTMDMY       drawing2     CTMDMY_drawing2  t t t t t )
  ( CTMDMY       drawing3     CTMDMY_drawing3  t t t t t )
  ( CTMDMY       drawing4     CTMDMY_drawing4  t t t t t )
  ( CTMDMY       drawing5     CTMDMY_drawing5  t t t t t )
  ( CTMDMY       drawing6     CTMDMY_drawing6  t t t t t )
  ( CTMDMY       drawing7     CTMDMY_drawing7  t t t t t )
  ( CTMDMY       drawing8     CTMDMY_drawing8  t t t t t )
  ( CTMDMY       drawing9     CTMDMY_drawing9  t t t t t )
  ( CTMDMY       drawinga     CTMDMY_drawinga  t t t t t )
  ( CTMDMY       testa        CTMDMY_testa     t t t t t )
  ( DMEXCL       dummy1       DMEXCL_dummy1    t t t t t )
  ( DMEXCL       dummy2       DMEXCL_dummy2    t t t t t )
  ( DMEXCL       dummy3       DMEXCL_dummy3    t t t t t )
  ( DMEXCL       dummy4       DMEXCL_dummy4    t t t t t )
  ( DMEXCL       dummy5       DMEXCL_dummy5    t t t t t )
  ( DMEXCL       dummy6       DMEXCL_dummy6    t t t t t )
  ( DMEXCL       dummy7       DMEXCL_dummy7    t t t t t )
  ( DMEXCL       dummy8       DMEXCL_dummy8    t t t t t )
  ( DMEXCL       dummy9       DMEXCL_dummy9    t t t t t )
  ( DMEXCL       dummya       DMEXCL_dummya    t t t t t )
  ( DMEXCL       dummyb       DMEXCL_dummyb    t t t t t )
  ( DMEXCL       dummyc       DMEXCL_dummyc    t t t t t )
  ( DMEXCL       dummyd       DMEXCL_dummyd    t t t t t )
  ( DVIAEXCL     dummy1       DVIAEXCL_dummy1  t t t t t )
  ( DVIAEXCL     dummy2       DVIAEXCL_dummy2  t t t t t )
  ( DVIAEXCL     dummy3       DVIAEXCL_dummy3  t t t t t )
  ( DVIAEXCL     dummy4       DVIAEXCL_dummy4  t t t t t )
  ( DVIAEXCL     dummy5       DVIAEXCL_dummy5  t t t t t )
  ( DVIAEXCL     dummy6       DVIAEXCL_dummy6  t t t t t )
  ( DVIAEXCL     dummy7       DVIAEXCL_dummy7  t t t t t )
  ( DVIAEXCL     dummy8       DVIAEXCL_dummy8  t t t t t )
  ( DVIAEXCL     dummy9       DVIAEXCL_dummy9  t t t t t )
  ( DVIAEXCL     dummya       DVIAEXCL_dummya  t t t t t )
  ( DVIAEXCL     dummyb       DVIAEXCL_dummyb  t t t t t )
  ( DVIAEXCL     dummyc       DVIAEXCL_dummyc  t t t t t )
  ( P1VNIX       drawing      P1VNIX_drawing   t t t t t )
  ( N1VNIX       drawing      N1VNIX_drawing   t t t t t )
  ( OTP          dummy        OTP_dummy        t t t t t )
  ( FTCDBLK      dummy        FTCDBLK_dummy    t t t t t )
  ( ODBLK        dummy        ODBLK_dummy      t t t t t )
  ( POBLK        dummy        POBLK_dummy      t t t t t )
  ( POBLK        drawinga     POBLK_drawinga   t t t t t )
  ( M0BLK        dummy        M0BLK_dummy      t t t t t )
  ( RFDMY        drawing      RFDMY_drawing    t t t t t )
  ( RFDMY        drawing1     RFDMY_drawing1   t t t t t )
  ( RFDMY        drawing3     RFDMY_drawing3   t t t t t )
  ( RFDMY        drawing4     RFDMY_drawing4   t t t t t )
  ( RFDMY        drawinga     RFDMY_drawinga   t t t t t )
  ( RFDMY        drawingb     RFDMY_drawingb   t t t t t )
  ( RFDMY        drawingc     RFDMY_drawingc   t t t t t )
  ( RFDMY        drawingd     RFDMY_drawingd   t t t t t )
  ( RFDMY        drawinge     RFDMY_drawinge   t t t t t )
  ( RFDMY        drawingf     RFDMY_drawingf   t t t t t )
  ( RFDMY        drawing7     RFDMY_drawing7   t t t t t )
  ( RFDMY        drawing8     RFDMY_drawing8   t t t t t )
  ( RFDMY        drawing9     RFDMY_drawing9   t t t t t )
  ( RFDMY        drawing5     RFDMY_drawing5   t t t t t )
  ( RFDMY        drawing6     RFDMY_drawing6   t t t t t )
  ( VIAEXCL      dummy        VIAEXCL_dummy    t t t t t )
  ( VIAEXCL      dummy1       VIAEXCL_dummy1   t t t t t )
  ( VIAEXCL      dummy2       VIAEXCL_dummy2   t t t t t )
  ( VIAEXCL      dummy3       VIAEXCL_dummy3   t t t t t )
  ( VIAEXCL      dummy4       VIAEXCL_dummy4   t t t t t )
  ( VIAEXCL      dummy5       VIAEXCL_dummy5   t t t t t )
  ( VIAEXCL      dummy6       VIAEXCL_dummy6   t t t t t )
  ( VIAEXCL      dummy7       VIAEXCL_dummy7   t t t t t )
  ( VIAEXCL      dummy8       VIAEXCL_dummy8   t t t t t )
  ( VIAEXCL      dummy9       VIAEXCL_dummy9   t t t t t )
  ( VIAEXCL      dummya       VIAEXCL_dummya   t t t t t )
  ( VIAEXCL      dummyb       VIAEXCL_dummyb   t t t t t )
  ( VIAEXCL      dummyc       VIAEXCL_dummyc   t t t t t )
  ( VIAEXCL      drawing      VIAEXCL_drawing  t t t t t )
  ( VAR          drawing      VAR_drawing      t t t t t )
  ( VAR          drawing1     VAR_drawing1     t t t t t )
  ( VAR          drawing2     VAR_drawing2     t t t t t )
  ( VAR          drawing3     VAR_drawing3     t t t t t )
  ( VAR          drawinga     VAR_drawinga     t t t t t )
  ( VAR          drawingb     VAR_drawingb     t t t t t )
  ( VAR          drawingc     VAR_drawingc     t t t t t )
  ( VAR          drawingd     VAR_drawingd     t t t t t )
  ( VAR          drawinge     VAR_drawinge     t t t t t )
  ( CI_CAP       drawing      CI_CAP_drawing   t t t t t )
  ( DSDDMY       drawing1     DSDDMY_drawing1  t t t t t )
  ( DSDDMY       drawing2     DSDDMY_drawing2  t t t t t )
  ( DSDDMY       drawing3     DSDDMY_drawing3  t t t t t )
  ( DSDDMY       drawing4     DSDDMY_drawing4  t t t t t )
  ( DSDDMY       drawing5     DSDDMY_drawing5  t t t t t )
  ( DSDDMY       drawing6     DSDDMY_drawing6  t t t t t )
  ( DSDDMY       drawing7     DSDDMY_drawing7  t t t t t )
  ( DSDDMY       drawing8     DSDDMY_drawing8  t t t t t )
  ( DSDDMY       drawing9     DSDDMY_drawing9  t t t t t )
  ( DSDDMY       test0        DSDDMY_test0     t t t t t )
  ( DSDDMY       test1        DSDDMY_test1     t t t t t )
  ( DSDDMY       test2        DSDDMY_test2     t t t t t )
  ( DSDDMY       test3        DSDDMY_test3     t t t t t )
  ( DSDDMY       test4        DSDDMY_test4     t t t t t )
  ( DSDDMY       test5        DSDDMY_test5     t t t t t )
  ( DSDDMY       test6        DSDDMY_test6     t t t t t )
  ( DSDDMY       test7        DSDDMY_test7     t t t t t )
  ( DSDDMY       test8        DSDDMY_test8     t t t t t )
  ( DSDDMY       test9        DSDDMY_test9     t t t t t )
  ( MOMDMY       drawing      MOMDMY_drawing   t t t t t )
  ( MOMDMY       drawing1     MOMDMY_drawing1  t t t t t )
  ( MOMDMY       drawing2     MOMDMY_drawing2  t t t t t )
  ( MOMDMY       drawing3     MOMDMY_drawing3  t t t t t )
  ( MOMDMY       drawing4     MOMDMY_drawing4  t t t t t )
  ( MOMDMY       drawing5     MOMDMY_drawing5  t t t t t )
  ( MOMDMY       drawing6     MOMDMY_drawing6  t t t t t )
  ( MOMDMY       drawing7     MOMDMY_drawing7  t t t t t )
  ( MOMDMY       drawing8     MOMDMY_drawing8  t t t t t )
  ( MOMDMY       drawing9     MOMDMY_drawing9  t t t t t )
  ( MOMDMY       drawinga     MOMDMY_drawinga  t t t t t )
  ( MOMDMY       drawingb     MOMDMY_drawingb  t t t t t )
  ( MOMDMY       drawingc     MOMDMY_drawingc  t t t t t )
  ( MOMDMY       dummy1       MOMDMY_dummy1    t t t t t )
  ( MOMDMY       dummy2       MOMDMY_dummy2    t t t t t )
  ( MOMDMY       dummy3       MOMDMY_dummy3    t t t t t )
  ( MOMDMY       dummy4       MOMDMY_dummy4    t t t t t )
  ( MOMDMY       dummy5       MOMDMY_dummy5    t t t t t )
  ( MOMDMY       dummy6       MOMDMY_dummy6    t t t t t )
  ( MOMDMY       dummy8       MOMDMY_dummy8    t t t t t )
  ( MOMDMY       dummy9       MOMDMY_dummy9    t t t t t )
  ( MOMDMY       dummya       MOMDMY_dummya    t t t t t )
  ( MOMDMY       dummyb       MOMDMY_dummyb    t t t t t )
  ( MOMDMY       dummyc       MOMDMY_dummyc    t t t t t )
  ( MOMDMY       test1        MOMDMY_test1     t t t t t )
  ( MOMDMY       test2        MOMDMY_test2     t t t t t )
  ( MOMDMY       test3        MOMDMY_test3     t t t t t )
  ( MOMDMY       test4        MOMDMY_test4     t t t t t )
  ( MOMDMY       test5        MOMDMY_test5     t t t t t )
  ( MOMDMY       test6        MOMDMY_test6     t t t t t )
  ( MOMDMY       test7        MOMDMY_test7     t t t t t )
  ( MOMDMY       test8        MOMDMY_test8     t t t t t )
  ( MOMDMY       test9        MOMDMY_test9     t t t t t )
  ( MOMDMY       testa        MOMDMY_testa     t t t t t )
  ( MOMDMY       testb        MOMDMY_testb     t t t t t )
  ( MOMDMY       testc        MOMDMY_testc     t t t t t )
  ( MOMDMY       dummyf       MOMDMY_dummyf    t t t t t )
  ( MOMDMY       dummyg       MOMDMY_dummyg    t t t t t )
  ( MOMDMY       dummyh       MOMDMY_dummyh    t t t t t )
  ( MOMDMY       test0        MOMDMY_test0     t t t t t )
  ( PDK          drawing      PDK_drawing      t t t t t )
  ( PDK          dummy        PDK_dummy        t t t t t )
  ( AP           prob         AP_prob          t t t t t )
  ( OD           test1        OD_test1         t t t t t )
  ( OD           test2        OD_test2         t t t t t )
  ( OD           test3        OD_test3         t t t t t )
  ( OD           test4        OD_test4         t t t t t )
  ( OD           test5        OD_test5         t t t t t )
  ( OD           test6        OD_test6         t t t t t )
  ( OD           test7        OD_test7         t t t t t )
  ( OD           test8        OD_test8         t t t t t )
  ( OD           test9        OD_test9         t t t t t )
  ( OD           testa        OD_testa         t t t t t )
  ( PO           test0        PO_test0         t t t t t )
  ( PO           test1        PO_test1         t t t t t )
  ( PO           test2        PO_test2         t t t t t )
  ( PO           test3        PO_test3         t t t t t )
  ( PO           test4        PO_test4         t t t t t )
  ( PO           test5        PO_test5         t t t t t )
  ( PO           test6        PO_test6         t t t t t )
  ( PO           test7        PO_test7         t t t t t )
  ( PO           test8        PO_test8         t t t t t )
  ( PO           test9        PO_test9         t t t t t )
  ( PO           testa        PO_testa         t t t t t )
  ( CO           test1        CO_test1         t t t t t )
  ( CO           test2        CO_test2         t t t t t )
  ( CO           test3        CO_test3         t t t t t )
  ( CO           test4        CO_test4         t t t t t )
  ( CO           test5        CO_test5         t t t t t )
  ( CO           test6        CO_test6         t t t t t )
  ( CO           test7        CO_test7         t t t t t )
  ( CO           test8        CO_test8         t t t t t )
  ( CO           test9        CO_test9         t t t t t )
  ( CO           testa        CO_testa         t t t t t )
  ( CO           testb        CO_testb         t t t t t )
  ( CO           testc        CO_testc         t t t t t )
  ( CO           drawinga     CO_drawinga      t t t t t )
  ( LDDBLK       drawing      LDDBLK_drawing   t t t t t )
  ( TCLO         test1        TCLO_test1       t t t t t )
  ( TCLO         test2        TCLO_test2       t t t t t )
  ( TCLO         test3        TCLO_test3       t t t t t )
  ( TCLO         test4        TCLO_test4       t t t t t )
  ( TCLO         test5        TCLO_test5       t t t t t )
  ( TCLO         test6        TCLO_test6       t t t t t )
  ( TCLO         test7        TCLO_test7       t t t t t )
  ( TCLO         test8        TCLO_test8       t t t t t )
  ( TCLO         test9        TCLO_test9       t t t t t )
  ( TCLO         testa        TCLO_testa       t t t t t )
  ( TCLO         dummy1       TCLO_dummy1      t t t t t )
  ( TCLO         dummy2       TCLO_dummy2      t t t t t )
  ( TCLO         dummy3       TCLO_dummy3      t t t t t )
  ( TCLO         dummy4       TCLO_dummy4      t t t t t )
  ( TCLO         dummy5       TCLO_dummy5      t t t t t )
  ( TCLO         dummy6       TCLO_dummy6      t t t t t )
  ( TCLO         dummy7       TCLO_dummy7      t t t t t )
  ( TCLO         dummy8       TCLO_dummy8      t t t t t )
  ( TCLO         dummy9       TCLO_dummy9      t t t t t )
  ( TCLO         dummya       TCLO_dummya      t t t t t )
  ( BJTC         drawing      BJTC_drawing     t t t t t )
  ( POS          plus1        POS_plus1        t t t t t )
  ( POS          plus2        POS_plus2        t t t t t )
  ( POS          plus3        POS_plus3        t t t t t )
  ( POS          drawing1     POS_drawing1     t t t t t )
  ( POS          drawing2     POS_drawing2     t t t t t )
  ( POS          drawing3     POS_drawing3     t t t t t )
  ( POS          dummy1       POS_dummy1       t t t t t )
  ( POS          dummy2       POS_dummy2       t t t t t )
  ( POS          dummy5       POS_dummy5       t t t t t )
  ( POS          test2        POS_test2        t t t t t )
  ( POS          test3        POS_test3        t t t t t )
  ( POS          dummya       POS_dummya       t t t t t )
  ( POS          dummyb       POS_dummyb       t t t t t )
  ( POS          dummyd       POS_dummyd       t t t t t )
  ( R_rule       guideline    R_rule_guideline t t t t t )
  ( R_rule       require      R_rule_require   t t t t t )
  ( R_rule       recommend    R_rule_recommend t t t t t )
  ( R_rule       analog       R_rule_analog    t t t t t )
  ( ex_R_rule    guideline    ex_R_rule_guideline t t t t t )
  ( ex_R_rule    require      ex_R_rule_require t t t t t )
  ( ex_R_rule    recommend    ex_R_rule_recommend t t t t t )
  ( ex_R_rule    analog       ex_R_rule_analog t t t t t )
  ( ODRZ         dummy        ODRZ_dummy       t t t t t )
  ( LVSDMY       dummy1       LVSDMY_dummy1    t t t t t )
  ( LVSDMY       dummy2       LVSDMY_dummy2    t t t t t )
  ( LVSDMY       dummy3       LVSDMY_dummy3    t t t t t )
  ( LVSDMY       dummy4       LVSDMY_dummy4    t t t t t )
  ( LVSDMY       dummy5       LVSDMY_dummy5    t t t t t )
  ( HVD          drawing      HVD_drawing      t t t t t )
  ( HVD          n_a          HVD_n_a          t t t t t )
  ( HVD          p_a          HVD_p_a          t t t t t )
  ( HVD          test0        HVD_test0        t t t t t )
  ( EHVT_N       drawing      EHVT_N_drawing   t t t t t )
  ( EHVT_P       drawing      EHVT_P_drawing   t t t t t )
  ( PV_P         drawing      PV_P_drawing     t t t t t )
  ( PV_N         drawing      PV_N_drawing     t t t t t )
  ( EDRAM        drawing      EDRAM_drawing    t t t t t )
  ( DECAPDMY     drawing      DECAPDMY_drawing t t t t t )
  ( VTL_N_18     drawing      VTL_N_18_drawing t t t t t )
  ( VT_N         drawing1     VT_N_drawing1    t t t t t )
  ( VT_N         drawing2     VT_N_drawing2    t t t t t )
  ( LUPWDMY      drawing      LUPWDMY_drawing  t t t t t )
  ( LUPWDMY      drawing1     LUPWDMY_drawing1 t t t t t )
  ( Layer1       drawing1     Layer1_drawing1  t t t t t )
  ( Layer1       drawing2     Layer1_drawing2  t t t t t )
  ( RAM          drawing1     RAM_drawing1     t t t t t )
  ( RAM          drawing2     RAM_drawing2     t t t t t )
  ( VDDDMY       drawing      VDDDMY_drawing   t t t t t )
  ( VSSDMY       drawing      VSSDMY_drawing   t t t t t )
  ( SENDMY       drawing      SENDMY_drawing   t t t t t )
  ( SENDMY       drawinga     SENDMY_drawinga  t t t t t )
  ( SENDMY       drawingb     SENDMY_drawingb  t t t t t )
  ( RES200       drawing      RES200_drawing   t t t t t )
  ( LOWMEDN      drawing      LOWMEDN_drawing  t t t t t )
  ( PADDMY       drawing      PADDMY_drawing   t t t t t )
  ( UHVT_N       drawing      UHVT_N_drawing   t t t t t )
  ( UHVT_P       drawing      UHVT_P_drawing   t t t t t )
  ( MRAM         drawing      MRAM_drawing     t t t t t )
  ( MRAM         drawing1     MRAM_drawing1    t t t t t )
  ( MRAM         drawing2     MRAM_drawing2    t t t t t )
  ( MRAM         drawing3     MRAM_drawing3    t t t t t )
  ( MRAM         drawing6     MRAM_drawing6    t t t t t )
  ( MRAM         drawing9     MRAM_drawing9    t t t t t )
  ( MRAM         drawinga     MRAM_drawinga    t t t t t )
  ( MRAM         drawingb     MRAM_drawingb    t t t t t )
  ( MRAM         drawingc     MRAM_drawingc    t t t t t )
  ( MRAM         drawingd     MRAM_drawingd    t t t t t )
  ( MRAM         drawinge     MRAM_drawinge    t t t t t )
  ( MRAM         drawingf     MRAM_drawingf    t t t t t )
  ( MRAM         dummya       MRAM_dummya      t t t t t )
  ( MRAM         dummyb       MRAM_dummyb      t t t t t )
  ( MRAM         dummyc       MRAM_dummyc      t t t t t )
  ( MRAM         test1        MRAM_test1       t t t t t )
  ( MRAM         test2        MRAM_test2       t t t t t )
  ( MRAM         test3        MRAM_test3       t t t t t )
  ( MRAM         test4        MRAM_test4       t t t t t )
  ( MRAM         test5        MRAM_test5       t t t t t )
  ( MRAM         test6        MRAM_test6       t t t t t )
  ( MRAM         test7        MRAM_test7       t t t t t )
  ( MRAM         test8        MRAM_test8       t t t t t )
  ( MRDMY        drawing      MRDMY_drawing    t t t t t )
  ( MRDMY        dummy1       MRDMY_dummy1     t t t t t )
  ( MRDMY        dummy2       MRDMY_dummy2     t t t t t )
  ( MRDMY        dummy3       MRDMY_dummy3     t t t t t )
  ( MRDMY        dummy4       MRDMY_dummy4     t t t t t )
  ( MRDMY        dummy5       MRDMY_dummy5     t t t t t )
  ( MRDMY        dummy6       MRDMY_dummy6     t t t t t )
  ( HIA_DUMMY    drawing      HIA_DUMMY_drawing t t t t t )
  ( TSV          drawing      TSV_drawing      t t t t t )
  ( TSV          drawinga     TSV_drawinga     t t t t t )
  ( BTSV         drawing      BTSV_drawing     t t t t t )
  ( BTSV         drawing1     BTSV_drawing1    t t t t t )
  ( BTSV         drawing2     BTSV_drawing2    t t t t t )
  ( BTSV         drawing3     BTSV_drawing3    t t t t t )
  ( BTSV         drawing4     BTSV_drawing4    t t t t t )
  ( M1           BSL          M1_BSL           t t t t t )
  ( CB2          BSL          CB2_BSL          t t t t t )
  ( LMARK        BSL          LMARK_BSL        t t t t t )
  ( UBM          BSL          UBM_BSL          t t t t t )
  ( CAPDMY       drawing      CAPDMY_drawing   t t t t t )
  ( DGATE        drawing      DGATE_drawing    t t t t t )
  ( DGATE        drawing1     DGATE_drawing1   t t t t t )
  ( M1           BSD          M1_BSD           t t t t t )
  ( AP           BSL          AP_BSL           t t t t t )
  ( AP           BSP          AP_BSP           t t t t t )
  ( RV           BSL          RV_BSL           t t t t t )
  ( M1           BSP          M1_BSP           t t t t t )
  ( CBD          BSL          CBD_BSL          t t t t t )
  ( TSV          pin          TSV_pin          t t t t t )
  ( TSV          dummy        TSV_dummy        t t t t t )
  ( ANVT         drawing      ANVT_drawing     t t t t t )
  ( AVT          drawing      AVT_drawing      t t t t t )
  ( SUPER_AVT    drawing      SUPER_AVT_drawing t t t t t )
  ( IODMY        dummy1       IODMY_dummy1     t t t t t )
  ( SCL          drawing      SCL_drawing      t t t t t )
  ( SCL2         drawing      SCL2_drawing     t t t t t )
  ( BSV          drawing      BSV_drawing      t t t t t )
  ( SCL          pin          SCL_pin          t t t t t )
  ( HBL_TOP      drawing      HBL_TOP_drawing  t t t t t )
  ( HBL_TOP      drawing1     HBL_TOP_drawing1 t t t t t )
  ( HBL_TOP      dummy1       HBL_TOP_dummy1   t t t t t )
  ( HBL_TOP      dummy2       HBL_TOP_dummy2   t t t t t )
  ( HBL_BOT      drawing      HBL_BOT_drawing  t t t t t )
  ( HBL_BOT      dummy1       HBL_BOT_dummy1   t t t t t )
  ( HBL_BLK      drawing      HBL_BLK_drawing  t t t t t )
  ( HBC_TOP      drawing      HBC_TOP_drawing  t t t t t )
  ( HBC_TOP      drawing1     HBC_TOP_drawing1 t t t t t )
  ( HBC_BOT      drawing      HBC_BOT_drawing  t t t t t )
  ( IMSOR        dummy6       IMSOR_dummy6     t t t t t )
  ( IMSOR4       dummy7       IMSOR4_dummy7    t t t t t )
  ( CBB          drawing      CBB_drawing      t t t t t )
  ( BDCT         drawing      BDCT_drawing     t t t t t )
  ( SCPADDMY     drawing      SCPADDMY_drawing t t t t t )
  ( BMZ          drawing      BMZ_drawing      t t t t t )
  ( BMZ          dummy1       BMZ_dummy1       t t t t t )
  ( BMZ          pin          BMZ_pin          t t t t t )
  ( BVZ          drawing      BVZ_drawing      t t t t t )
  ( BMZ2         drawing      BMZ2_drawing     t t t t t )
  ( BMZ2         dummy1       BMZ2_dummy1      t t t t t )
  ( BMZ2         pin          BMZ2_pin         t t t t t )
  ( BVZ2         drawing      BVZ2_drawing     t t t t t )
  ( RRAM         drawing6     RRAM_drawing6    t t t t t )
  ( RRAM         drawing7     RRAM_drawing7    t t t t t )
  ( RRAM         drawing9     RRAM_drawing9    t t t t t )
  ( RRAM         dummy6       RRAM_dummy6      t t t t t )
  ( CBRAM        drawing1     CBRAM_drawing1   t t t t t )
  ( CBRAM        drawing2     CBRAM_drawing2   t t t t t )
  ( CBRAM        drawing3     CBRAM_drawing3   t t t t t )
  ( CBRAM        drawing4     CBRAM_drawing4   t t t t t )
  ( CBRAM        drawing5     CBRAM_drawing5   t t t t t )
  ( CBRAM        drawing7     CBRAM_drawing7   t t t t t )
  ( CBRAM        drawing8     CBRAM_drawing8   t t t t t )
  ( CBRAM        drawing9     CBRAM_drawing9   t t t t t )
  ( CBRAM        drawinga     CBRAM_drawinga   t t t t t )
  ( CBRAM        drawing      CBRAM_drawing    t t t t t )
  ( CBRAM        drawingb     CBRAM_drawingb   t t t t t )
  ( CBRAM        drawingc     CBRAM_drawingc   t t t t t )
  ( CBRAM        drawingd     CBRAM_drawingd   t t t t t )
  ( CBRAM        drawinge     CBRAM_drawinge   t t t t t )
  ( CBRAM        drawingf     CBRAM_drawingf   t t t t t )
  ( CBRAM        drawingh     CBRAM_drawingh   t t t t t )
  ( CBRAM        rule1        CBRAM_rule1      t t t t t )
  ( FEDRAM       drawing      FEDRAM_drawing   t t t t t )
  ( MATCHING_MOS drawing      MATCHING_MOS_drawing t t t t t )
  ( PODE         blocking     PODE_blocking    t t t t t )
  ( WAIVER       drawing      WAIVER_drawing   t t t t t )
  ( WAIVER       drawing1     WAIVER_drawing1  t t t t t )
  ( WAIVER       drawing2     WAIVER_drawing2  t t t t t )
  ( WAIVER       drawing3     WAIVER_drawing3  t t t t t )
  ( WAIVER       drawing4     WAIVER_drawing4  t t t t t )
  ( WAIVER       drawing5     WAIVER_drawing5  t t t t t )
  ( WAIVER       drawing6     WAIVER_drawing6  t t t t t )
  ( WAIVER       drawing7     WAIVER_drawing7  t t t t t )
  ( WAIVER       drawing8     WAIVER_drawing8  t t t t t )
  ( CELLBLK      drawing      CELLBLK_drawing  t t t t t )
  ( CELLADD      drawing      CELLADD_drawing  t t t t t )
  ( chipBoundary drawing      chipBoundary_drawing t t t t t )
  ( RPO_DIODE    drawing      RPO_DIODE_drawing t t t t t )
  ( TGO_IO       drawing      TGO_IO_drawing   t t t t t )
  ( HV           drawing      HV_drawing       t t t t t )
  ( HV           drawinga     HV_drawinga      t t t t t )
 ) ;techDisplays

 techLayerProperties(
 ;( PropName               Layer1 [ Layer2 ]            PropValue )
 ;( --------               ------ ----------            --------- )
  ( areaCapacitance        M1                             2.000000e-04 )
  ( edgeCapacitance        M1                             8.290000e-05 )
  ( height                 M1                             0.365 )
  ( sheetResistance        M1                             0.407000 )
  ( thickness              M1                             0.09 )
  ( areaCapacitance        M2                             3.128570e-04 )
  ( edgeCapacitance        M2                             7.440000e-05 )
  ( height                 M2                             0.465 )
  ( sheetResistance        M2                             0.428000 )
  ( thickness              M2                             0.09 )
  ( areaCapacitance        M3                             3.128570e-04 )
  ( edgeCapacitance        M3                             7.440000e-05 )
  ( height                 M3                             0.565 )
  ( sheetResistance        M3                             0.428000 )
  ( thickness              M3                             0.09 )
  ( areaCapacitance        M4                             3.128570e-04 )
  ( edgeCapacitance        M4                             7.440000e-05 )
  ( height                 M4                             0.665 )
  ( sheetResistance        M4                             0.428000 )
  ( thickness              M4                             0.09 )
  ( areaCapacitance        M5                             3.128570e-04 )
  ( edgeCapacitance        M5                             7.440000e-05 )
  ( height                 M5                             0.765 )
  ( sheetResistance        M5                             0.428000 )
  ( thickness              M5                             0.09 )
  ( areaCapacitance        M6                             3.128570e-04 )
  ( edgeCapacitance        M6                             7.440000e-05 )
  ( height                 M6                             0.865 )
  ( sheetResistance        M6                             0.428000 )
  ( thickness              M6                             0.09 )
  ( areaCapacitance        M7                             3.128570e-04 )
  ( edgeCapacitance        M7                             7.440000e-05 )
  ( height                 M7                             0.965 )
  ( sheetResistance        M7                             0.428000 )
  ( thickness              M7                             0.09 )
  ( areaCapacitance        M8                             6.025000e-05 )
  ( edgeCapacitance        M8                             9.300000e-05 )
  ( height                 M8                             1.065 )
  ( sheetResistance        M8                             0.022000 )
  ( thickness              M8                             0.85 )
  ( areaCapacitance        M9                             6.025000e-05 )
  ( edgeCapacitance        M9                             9.300000e-05 )
  ( height                 M9                             1.925 )
  ( sheetResistance        M9                             0.022000 )
  ( thickness              M9                             0.85 )
  ( areaCapacitance        AP                             6.000000e-05 )
  ( edgeCapacitance        AP                             5.910000e-05 )
  ( height                 AP                             2.785 )
  ( sheetResistance        AP                             0.021000 )
  ( thickness              AP                             2.8 )
 ) ;techLayerProperties

 techDerivedLayers(
 ;( DerivedLayerName          #          composition  )
 ;( ----------------          ------     ------------ )
  ( ndiff                     10000      ( OD         'and    NP        ))
  ( NPLUS_ACTIVE              10010      ( ndiff      'not    NW        ))
  ( pdiff                     10020      ( OD         'and    PP        ))
  ( PPLUS_ACTIVE              10030      ( pdiff      'and    NW        ))
  ( ACTIVE                    10040      ( PPLUS_ACTIVE 'or     NPLUS_ACTIVE))
  ( NPLUS_OD                  10050      ( ndiff      'not    DNW       ))
  ( NW_STRAP                  10060      ( NPLUS_OD   'and    NW        ))
  ( PPLUS_OD                  10070      ( pdiff      'not    DNW       ))
  ( PW_STRAP                  10080      ( PPLUS_OD   'not    NW        ))
  ( STRAP                     10090      ( NW_STRAP   'or     PW_STRAP  ))
  ( BUTTED_STRAP              10100      ( STRAP      'touching  ACTIVE    ))
  ( FIELD_PO                  10120      ( PO         'not    OD        ))
  ( GATE                      10130      ( PO         'and    OD        ))
  ( od2_tmp1                  10140      ( OD_15      'or     OD_18     ))
  ( od2_tmp2                  10150      ( od2_tmp1   'or     OD_25     ))
  ( OD2                       10160      ( od2_tmp2   'or     OD_33     ))
  ( NW1V                      10170      ( NW         'avoiding  OD2       ))
  ( NW2V                      10180      ( NW         'touching  OD2       ))
  ( rnw                       10190      ( NW         'touching  NWDMY     ))
  ( NWROD                     10200      ( rnw        'touching  RPO       ))
  ( NWRSTI                    10210      ( rnw        'avoiding  RPO       ))
  ( bjtdmy_sresd              10220      ( BJTDMY     'or     SR_ESD    ))
  ( diffCont                  10230      ( CO         'and    OD        ))
  ( gate_core_nesd1           10240      ( SDI        'or     SR_ESD    ))
  ( gate_core_nvcar1          10250      ( NT_N       'or     VAR       ))
  ( gate_od2                  10260      ( GATE       'and    OD2       ))
  ( gate_var                  10270      ( GATE       'and    VAR       ))
  ( implants                  10280      ( PP         'or     NP        ))
  ( nplus_activeod2           10290      ( NPLUS_ACTIVE 'touching  OD2       ))
  ( nplus_ndnw                10300      ( NPLUS_ACTIVE 'not    DNW       ))
  ( np_nwdmy                  10310      ( NP         'touching  NWDMY     ))
  ( nwells                    10320      ( NW         'or     DNW       ))
  ( nw_nod                    10330      ( NW         'avoiding  OD        ))
  ( nwrsti_np                 10340      ( NP         'touching  NWRSTI    ))
  ( nwrsti_od                 10350      ( OD         'touching  NWRSTI    ))
  ( od_nnt_n                  10360      ( OD         'not    NT_N      ))
  ( od_nwdmy                  10370      ( OD         'and    NWDMY     ))
  ( od_od2                    10380      ( OD         'and    OD2       ))
  ( od_po                     10390      ( OD         'touching  PO        ))
  ( polyCont                  10400      ( CO         'and    PO        ))
  ( po_od2                    10410      ( PO         'and    OD2       ))
  ( pplus_activeod2           10420      ( PPLUS_ACTIVE 'touching  OD2       ))
  ( pplus_npo                 10430      ( PPLUS_ACTIVE 'avoiding  PO        ))
  ( pwell1                    10440      ( DNW        'not    NW        ))
  ( rod                       10450      ( OD         'and    RPDMY     ))
  ( rpoly                     10460      ( PO         'and    RPDMY     ))
  ( gate_core                 10470      ( GATE       'not    OD2       ))
  ( gate_12                   10480      ( GATE       'and    OD_12     ))
  ( gate_15                   10490      ( GATE       'and    OD_15     ))
  ( gate_18                   10500      ( GATE       'and    OD_18     ))
  ( gate_25                   10510      ( GATE       'and    OD_25     ))
  ( gate_33                   10520      ( GATE       'and    OD_33     ))
  ( ngate                     10530      ( GATE       'not    NW        ))
  ( ngate_core                10540      ( ngate      'not    OD2       ))
  ( ngate_12                  10550      ( ngate      'and    OD_12     ))
  ( ngate_15                  10560      ( ngate      'and    OD_15     ))
  ( ngate_18                  10570      ( ngate      'and    OD_18     ))
  ( ngate_25                  10580      ( ngate      'and    OD_25     ))
  ( ngate_33                  10590      ( ngate      'and    OD_33     ))
  ( ngate_na                  10600      ( ngate      'and    NT_N      ))
  ( ngate_na12                10610      ( ngate_12   'and    NT_N      ))
  ( ngate_na15                10620      ( ngate_15   'and    NT_N      ))
  ( ngate_na18                10630      ( ngate_18   'and    NT_N      ))
  ( ngate_na25                10640      ( ngate_25   'and    NT_N      ))
  ( ngate_na33                10650      ( ngate_33   'and    NT_N      ))
  ( ngate_lvt                 10660      ( ngate_core 'and    VTL_N     ))
  ( ngate_hvt                 10670      ( ngate_core 'and    VTH_N     ))
  ( pgate                     10680      ( GATE       'and    NW        ))
  ( pgate_core                10690      ( pgate      'not    OD2       ))
  ( pgate_12                  10700      ( pgate      'and    OD_12     ))
  ( pgate_15                  10710      ( pgate      'and    OD_15     ))
  ( pgate_18                  10720      ( pgate      'and    OD_18     ))
  ( pgate_25                  10730      ( pgate      'and    OD_25     ))
  ( pgate_33                  10740      ( pgate      'and    OD_33     ))
  ( pgate_lvt                 10750      ( pgate_core 'and    VTL_P     ))
  ( pgate_hvt                 10760      ( pgate_core 'and    VTH_P     ))
  ( ndiff_core                10770      ( ndiff      'not    OD2       ))
  ( ndiff_na                  10780      ( ndiff      'and    NT_N      ))
  ( pdiff_core                10790      ( pdiff      'not    OD2       ))
  ( diff_core                 10800      ( ndiff_core 'or     pdiff_core))
  ( gate_core_nvcar           10810      ( gate_core  'not    gate_core_nvcar1))
  ( gate_core_nesd            10820      ( gate_core_nvcar 'not    gate_core_nesd1))
  ( gate_core_od2var          10830      ( gate_od2   'and    VAR       ))
  ( gate_core_od2var_nrfdmy   10831      ( gate_core_od2var 'not    RFDMY     ))
  ( gate_core_od2var_rfdmy    10832      ( gate_core_od2var 'and    RFDMY     ))
  ( gate_core_var             10840      ( gate_core  'and    VAR       ))
  ( gate_core_var_nrfdmy      10841      ( gate_core_var 'not    RFDMY     ))
  ( gate_core_var_rfdmy       10842      ( gate_core_var 'and    RFDMY     ))
  ( hvGate                    10850      ( gate_18    'or     gate_25   ))
  ( ngate_var                 10860      ( ngate      'and    VAR       ))
  ( pgate_var                 10870      ( pgate      'and    VAR       ))
  ( po_sdi_sr_esd             10880      ( PO         'and    gate_core_nesd1))
  ( pplus_npo_odw7            10890      ( pplus_npo  'not    bjtdmy_sresd))
  ( pwell                     10900      ( PW         'or     pwell1    ))
  ( rnod                      10910      ( rod        'and    NP        ))
  ( rnodwo                    10920      ( rnod       'and    RH        ))
  ( rnpoly                    10930      ( rpoly      'and    NP        ))
  ( rnpolywo                  10940      ( rnpoly     'and    RH        ))
  ( rpod                      10950      ( rod        'and    PP        ))
  ( rpodwo                    10960      ( rpod       'and    RH        ))
  ( rppoly                    10970      ( rpoly      'and    PP        ))
  ( rppolywo                  10980      ( rppoly     'and    RH        ))
  ( rw                        10990      ( pwell      'and    DNW       ))
  ( errLayer_od_imp           12000      ( OD         'not    implants  ))
  ( errLayer_dnwcut           12010      ( NPLUS_ACTIVE 'straddling  DNW       ))
  ( errLayer_nwrodo2a         12020      ( od_nwdmy   'and    implants  ))
  ( errLayer_nwrodo2b         12030      ( od_nwdmy   'and    VTH_N     ))
  ( errLayer_nwrodo2c         12040      ( od_nwdmy   'and    VTH_P     ))
  ( errLayer_nwrodo2d         12050      ( od_nwdmy   'and    VTL_N     ))
  ( errLayer_nwrodo2e         12060      ( od_nwdmy   'and    VTL_P     ))
  ( errLayer_nwrodo2f         12070      ( od_nwdmy   'and    VTUL_N    ))
  ( errLayer_nwrodo2g         12080      ( od_nwdmy   'and    VTUL_P    ))
  ( errLayer_nwrstio1a        12090      ( np_nwdmy   'and    PP        ))
  ( errLayer_nwrstio1b        12100      ( np_nwdmy   'and    VTH_P     ))
  ( errLayer_nwrstio1c        12110      ( np_nwdmy   'and    VTL_P     ))
  ( errLayer_nwrstio1d        12120      ( np_nwdmy   'and    VTUL_P    ))
  ( errLayer_ntnR1            12130      ( NT_N       'and    nwells    ))
  ( errLayer_ntnR3            12140      ( pgate      'and    NT_N      ))
  ( errLayer_vthnR1a          12150      ( VTH_N      'and    PPLUS_OD  ))
  ( errLayer_vthnR1b          12160      ( VTH_N      'and    VTH_P     ))
  ( errLayer_vthnR1c          12170      ( VTH_N      'and    VTL_N     ))
  ( errLayer_vthnR1d          12180      ( VTH_N      'and    VTL_P     ))
  ( errLayer_vthnR1e          12190      ( VTH_N      'and    VTUL_N    ))
  ( errLayer_vthnR1f          12200      ( VTH_N      'and    VTUL_P    ))
  ( errLayer_vthnR1g          12210      ( VTH_N      'and    NT_N      ))
  ( errLayer_vthnR1h          12220      ( VTH_N      'and    OD2       ))
  ( errLayer_vthpR1a          12230      ( VTH_P      'and    NPLUS_OD  ))
  ( errLayer_vthpR1b          12240      ( VTH_P      'and    VTL_N     ))
  ( errLayer_vthpR1c          12250      ( VTH_P      'and    VTL_P     ))
  ( errLayer_vthpR1d          12260      ( VTH_P      'and    VTUL_N    ))
  ( errLayer_vthpR1e          12270      ( VTH_P      'and    VTUL_P    ))
  ( errLayer_vthpR1f          12280      ( VTH_P      'and    NT_N      ))
  ( errLayer_vthpR1g          12290      ( VTH_P      'and    OD2       ))
  ( errLayer_vtlnR1a          12300      ( VTL_N      'and    PPLUS_OD  ))
  ( errLayer_vtlnR1b          12310      ( VTL_N      'and    VTL_P     ))
  ( errLayer_vtlnR1c          12320      ( VTL_N      'and    VTUL_N    ))
  ( errLayer_vtlnR1d          12330      ( VTL_N      'and    VTUL_P    ))
  ( errLayer_vtlnR1e          12340      ( VTL_N      'and    NT_N      ))
  ( errLayer_vtlnR1f          12350      ( VTL_N      'and    OD2       ))
  ( errLayer_vtlpR1a          12360      ( VTL_P      'and    NPLUS_OD  ))
  ( errLayer_vtlpR1b          12370      ( VTL_P      'and    VTUL_N    ))
  ( errLayer_vtlpR1c          12380      ( VTL_P      'and    VTUL_P    ))
  ( errLayer_vtlpR1d          12390      ( VTL_P      'and    NT_N      ))
  ( errLayer_vtlpR1e          12400      ( VTL_P      'and    OD2       ))
  ( errLayer_vtulnR1a         12410      ( VTUL_N     'and    PPLUS_OD  ))
  ( errLayer_vtulnR1b         12420      ( VTUL_N     'and    VTUL_P    ))
  ( errLayer_vtulnR1c         12430      ( VTUL_N     'and    NT_N      ))
  ( errLayer_vtulnR1d         12440      ( VTUL_N     'and    OD2       ))
  ( errLayer_vtulpR1a         12450      ( VTUL_P     'and    NPLUS_OD  ))
  ( errLayer_vtulpR1b         12460      ( VTUL_P     'and    NT_N      ))
  ( errLayer_vtulpR1c         12470      ( VTUL_P     'and    OD2       ))
  ( errLayer_pp_np            12480      ( PP         'and    NP        ))
  ( errLayer_po_imp           12490      ( PO         'not    implants  ))
  ( errLayer_varR2a           12500      ( VAR        'and    VTL_N     ))
  ( errLayer_varR2b           12510      ( VAR        'and    VTL_P     ))
  ( errLayer_varR2c           12520      ( VAR        'and    VTH_N     ))
  ( errLayer_varR2d           12530      ( VAR        'and    VTH_P     ))
  ( errLayer_varR2e           12540      ( VAR        'and    VTUL_N    ))
  ( errLayer_varR2f           12550      ( VAR        'and    VTUL_P    ))
  ( errLayer_varR2g           12560      ( VAR        'and    NT_N      ))
  ( errLayer_varR2h           12570      ( VAR        'and    RPO       ))
  ( errLayer_varR3            12580      ( PP         'and    pgate_var ))
  ( errLayer_varR6            12590      ( NP         'and    ngate_var ))
  ( errLayer_co_rpo           12600      ( CO         'and    RPO       ))
  ( errLayer_co_M1            12610      ( CO         'not    M1        ))
  ( errLayer_nwrodo2h         12620      ( od_nwdmy   'and    eVTL_N    ))
  ( errLayer_nwrodo2i         12630      ( od_nwdmy   'and    eVTL_P    ))
  ( errLayer_nwrodo2j         12640      ( od_nwdmy   'and    UHVT_N    ))
  ( errLayer_nwrodo2k         12650      ( od_nwdmy   'and    UHVT_P    ))
  ( errLayer_nwrodo2l         12660      ( od_nwdmy   'and    EHVT_N    ))
  ( errLayer_nwrodo2m         12670      ( od_nwdmy   'and    EHVT_P    ))
  ( errLayer_nwrstio1e        12680      ( np_nwdmy   'and    eVTL_P    ))
  ( errLayer_nwrstio1f        12690      ( np_nwdmy   'and    UHVT_P    ))
  ( errLayer_nwrstio1g        12700      ( np_nwdmy   'and    EHVT_P    ))
  ( errLayer_vthnR1i          12710      ( VTH_N      'and    eVTL_N    ))
  ( errLayer_vthnR1j          12720      ( VTH_N      'and    eVTL_P    ))
  ( errLayer_vthnR1k          12730      ( VTH_N      'and    UHVT_N    ))
  ( errLayer_vthnR1l          12740      ( VTH_N      'and    UHVT_P    ))
  ( errLayer_vthnR1m          12750      ( VTH_N      'and    EHVT_N    ))
  ( errLayer_vthnR1n          12760      ( VTH_N      'and    EHVT_P    ))
  ( errLayer_vthpR1h          12770      ( VTH_P      'and    eVTL_N    ))
  ( errLayer_vthpR1i          12780      ( VTH_P      'and    eVTL_P    ))
  ( errLayer_vthpR1j          12790      ( VTH_P      'and    UHVT_N    ))
  ( errLayer_vthpR1k          12800      ( VTH_P      'and    UHVT_P    ))
  ( errLayer_vthpR1l          12810      ( VTH_P      'and    EHVT_N    ))
  ( errLayer_vthpR1m          12820      ( VTH_P      'and    EHVT_P    ))
  ( errLayer_vtlnR1g          12830      ( VTL_N      'and    eVTL_N    ))
  ( errLayer_vtlnR1h          12840      ( VTL_N      'and    eVTL_P    ))
  ( errLayer_vtlnR1i          12850      ( VTL_N      'and    UHVT_N    ))
  ( errLayer_vtlnR1j          12860      ( VTL_N      'and    UHVT_P    ))
  ( errLayer_vtlnR1k          12870      ( VTL_N      'and    EHVT_N    ))
  ( errLayer_vtlnR1l          12880      ( VTL_N      'and    EHVT_P    ))
  ( errLayer_vtlpR1f          12890      ( VTL_P      'and    eVTL_N    ))
  ( errLayer_vtlpR1g          12900      ( VTL_P      'and    eVTL_P    ))
  ( errLayer_vtlpR1h          12910      ( VTL_P      'and    UHVT_N    ))
  ( errLayer_vtlpR1i          12920      ( VTL_P      'and    UHVT_P    ))
  ( errLayer_vtlpR1j          12930      ( VTL_P      'and    EHVT_N    ))
  ( errLayer_vtlpR1k          12940      ( VTL_P      'and    EHVT_P    ))
  ( errLayer_vtulnR1e         12950      ( VTUL_N     'and    eVTL_N    ))
  ( errLayer_vtulnR1f         12960      ( VTUL_N     'and    eVTL_P    ))
  ( errLayer_vtulnR1g         12970      ( VTUL_N     'and    UHVT_N    ))
  ( errLayer_vtulnR1h         12980      ( VTUL_N     'and    UHVT_P    ))
  ( errLayer_vtulnR1i         12990      ( VTUL_N     'and    EHVT_N    ))
  ( errLayer_vtulnR1j         13000      ( VTUL_N     'and    EHVT_P    ))
  ( errLayer_vtulpR1d         13010      ( VTUL_P     'and    eVTL_N    ))
  ( errLayer_vtulpR1e         13020      ( VTUL_P     'and    eVTL_P    ))
  ( errLayer_vtulpR1f         13030      ( VTUL_P     'and    UHVT_N    ))
  ( errLayer_vtulpR1g         13040      ( VTUL_P     'and    UHVT_P    ))
  ( errLayer_vtulpR1h         13050      ( VTUL_P     'and    EHVT_N    ))
  ( errLayer_vtulpR1i         13060      ( VTUL_P     'and    EHVT_P    ))
  ( errLayer_varR2i           13070      ( VAR        'and    eVTL_N    ))
  ( errLayer_varR2j           13080      ( VAR        'and    eVTL_P    ))
  ( errLayer_varR2k           13090      ( VAR        'and    UHVT_N    ))
  ( errLayer_varR2l           13100      ( VAR        'and    UHVT_P    ))
  ( errLayer_varR2m           13110      ( VAR        'and    EHVT_N    ))
  ( errLayer_varR2n           13120      ( VAR        'and    EHVT_P    ))
  ( errLayer_uhvtnR1a         13130      ( UHVT_N     'and    PPLUS_OD  ))
  ( errLayer_uhvtnR1b         13140      ( UHVT_N     'and    UHVT_P    ))
  ( errLayer_uhvtnR1c         13150      ( UHVT_N     'and    EHVT_N    ))
  ( errLayer_uhvtnR1d         13160      ( UHVT_N     'and    EHVT_P    ))
  ( errLayer_uhvtnR1e         13170      ( UHVT_N     'and    eVTL_N    ))
  ( errLayer_uhvtnR1f         13180      ( UHVT_N     'and    eVTL_P    ))
  ( errLayer_uhvtnR1g         13190      ( UHVT_N     'and    NT_N      ))
  ( errLayer_uhvtnR1h         13200      ( UHVT_N     'and    OD2       ))
  ( errLayer_uhvtpR1a         13210      ( UHVT_P     'and    NPLUS_OD  ))
  ( errLayer_uhvtpR1b         13220      ( UHVT_P     'and    EHVT_N    ))
  ( errLayer_uhvtpR1c         13230      ( UHVT_P     'and    EHVT_P    ))
  ( errLayer_uhvtpR1d         13240      ( UHVT_P     'and    eVTL_N    ))
  ( errLayer_uhvtpR1e         13250      ( UHVT_P     'and    eVTL_P    ))
  ( errLayer_uhvtpR1f         13260      ( UHVT_P     'and    NT_N      ))
  ( errLayer_uhvtpR1g         13270      ( UHVT_P     'and    OD2       ))
  ( errLayer_ehvtnR1a         13280      ( EHVT_N     'and    PPLUS_OD  ))
  ( errLayer_ehvtnR1b         13290      ( EHVT_N     'and    EHVT_P    ))
  ( errLayer_ehvtnR1c         13300      ( EHVT_N     'and    eVTL_N    ))
  ( errLayer_ehvtnR1d         13310      ( EHVT_N     'and    eVTL_P    ))
  ( errLayer_ehvtnR1e         13320      ( EHVT_N     'and    NT_N      ))
  ( errLayer_ehvtnR1f         13330      ( EHVT_N     'and    OD2       ))
  ( errLayer_ehvtpR1a         13340      ( EHVT_P     'and    NPLUS_OD  ))
  ( errLayer_ehvtpR1b         13350      ( EHVT_P     'and    eVTL_N    ))
  ( errLayer_ehvtpR1c         13360      ( EHVT_P     'and    eVTL_P    ))
  ( errLayer_ehvtpR1d         13370      ( EHVT_P     'and    NT_N      ))
  ( errLayer_ehvtpR1e         13380      ( EHVT_P     'and    OD2       ))
  ( errLayer_evtlnR1a         13390      ( eVTL_N     'and    PPLUS_OD  ))
  ( errLayer_evtlnR1b         13400      ( eVTL_N     'and    eVTL_P    ))
  ( errLayer_evtlnR1c         13410      ( eVTL_N     'and    NT_N      ))
  ( errLayer_evtlnR1d         13420      ( eVTL_N     'and    OD2       ))
  ( errLayer_evtlpR1a         13430      ( eVTL_P     'and    NPLUS_OD  ))
  ( errLayer_evtlpR1b         13440      ( eVTL_P     'and    NT_N      ))
  ( errLayer_evtlpR1c         13450      ( eVTL_P     'and    OD2       ))
  ( DMY_SCH                   13460      ( Layer1     'select  drawing2  ))
  ( PO_not_DMY_SCH            13470      ( PO         'not    DMY_SCH   ))
  ( PO_and_DMY_SCH            13480      ( PO         'and    DMY_SCH   ))
  ( VTH_N_not_DMY_SCH         13490      ( VTH_N      'not    DMY_SCH   ))
  ( VTH_N_and_DMY_SCH         13500      ( VTH_N      'and    DMY_SCH   ))
  ( VTH_P_not_DMY_SCH         13510      ( VTH_P      'not    DMY_SCH   ))
  ( VTH_P_and_DMY_SCH         13520      ( VTH_P      'and    DMY_SCH   ))
  ( VTL_N_not_DMY_SCH         13530      ( VTL_N      'not    DMY_SCH   ))
  ( VTL_N_and_DMY_SCH         13540      ( VTL_N      'and    DMY_SCH   ))
  ( VTL_P_not_DMY_SCH         13550      ( VTL_P      'not    DMY_SCH   ))
  ( VTL_P_and_DMY_SCH         13560      ( VTL_P      'and    DMY_SCH   ))
  ( UHVT_N_not_DMY_SCH        13570      ( UHVT_N     'not    DMY_SCH   ))
  ( UHVT_N_and_DMY_SCH        13580      ( UHVT_N     'and    DMY_SCH   ))
  ( UHVT_P_not_DMY_SCH        13590      ( UHVT_P     'not    DMY_SCH   ))
  ( UHVT_P_and_DMY_SCH        13600      ( UHVT_P     'and    DMY_SCH   ))
  ( VTUL_N_not_DMY_SCH        13610      ( VTUL_N     'not    DMY_SCH   ))
  ( VTUL_N_and_DMY_SCH        13620      ( VTUL_N     'and    DMY_SCH   ))
  ( VTUL_P_not_DMY_SCH        13630      ( VTUL_P     'not    DMY_SCH   ))
  ( VTUL_P_and_DMY_SCH        13640      ( VTUL_P     'and    DMY_SCH   ))
  ( EHVT_N_not_DMY_SCH        13650      ( EHVT_N     'not    DMY_SCH   ))
  ( EHVT_N_and_DMY_SCH        13660      ( EHVT_N     'and    DMY_SCH   ))
  ( EHVT_P_not_DMY_SCH        13670      ( EHVT_P     'not    DMY_SCH   ))
  ( EHVT_P_and_DMY_SCH        13680      ( EHVT_P     'and    DMY_SCH   ))
  ( eVTL_N_not_DMY_SCH        13690      ( eVTL_N     'not    DMY_SCH   ))
  ( eVTL_N_and_DMY_SCH        13700      ( eVTL_N     'and    DMY_SCH   ))
  ( eVTL_P_not_DMY_SCH        13710      ( eVTL_P     'not    DMY_SCH   ))
  ( eVTL_P_and_DMY_SCH        13720      ( eVTL_P     'and    DMY_SCH   ))
  ( errLayer_VIAx_r7_VIA1M1   13730      ( VIA1       'not    M1        ))
  ( errLayer_VIAx_r7_VIA1M2   13731      ( VIA1       'not    M2        ))
  ( errLayer_VIAx_r7_VIA2M2   13732      ( VIA2       'not    M2        ))
  ( errLayer_VIAx_r7_VIA2M3   13733      ( VIA2       'not    M3        ))
  ( errLayer_VIAx_r7_VIA3M3   13734      ( VIA3       'not    M3        ))
  ( errLayer_VIAx_r7_VIA3M4   13735      ( VIA3       'not    M4        ))
  ( errLayer_VIAx_r7_VIA4M4   13736      ( VIA4       'not    M4        ))
  ( errLayer_VIAx_r7_VIA4M5   13737      ( VIA4       'not    M5        ))
  ( errLayer_VIAx_r7_VIA5M5   13738      ( VIA5       'not    M5        ))
  ( errLayer_VIAx_r7_VIA5M6   13739      ( VIA5       'not    M6        ))
  ( errLayer_VIAx_r7_VIA6M6   13740      ( VIA6       'not    M6        ))
  ( errLayer_VIAx_r7_VIA6M7   13741      ( VIA6       'not    M7        ))
  ( errLayer_VIAz_r4_VIA7M7   13742      ( VIA7       'not    M7        ))
  ( errLayer_VIAz_r4_VIA7M8   13743      ( VIA7       'not    M8        ))
  ( errLayer_VIAz_r4_VIA8M8   13744      ( VIA8       'not    M8        ))
  ( errLayer_VIAz_r4_VIA8M9   13745      ( VIA8       'not    M9        ))
 ) ;techDerivedLayers

) ;layerDefinitions


;********************************
; LAYER RULES
;********************************
layerRules(

 equivalentLayers(
 ;( list of layers )
 ;( -------------- )
  ( ("CB2" "drawing")	("CB2_FC" "drawing")	 )
  ( ("CB2" "drawing1")	("CB2_WB" "drawing1")	 )
 ) ;equivalentLayers

 functions(
 ;( layer                       function        [maskNumber])
 ;( -----                       --------        ------------)
  ( PDK                      	"pwell"     	1            )
  ( NW                       	"nwell"     	2            )
  ( OD                       	"diff"      	3            )
  ( OD_12                    	"recognition"	4            )
  ( OD_18                    	"recognition"	5            )
  ( OD_25                    	"recognition"	6            )
  ( OD_33                    	"recognition"	7            )
  ( PO                       	"poly"      	8            )
  ( PP                       	"pplus"     	9            )
  ( NP                       	"nplus"     	10           )
  ( CO                       	"cut"       	11           )
  ( M1                       	"metal"     	12           )
  ( VIA1                     	"cut"       	13           )
  ( M2                       	"metal"     	14           )
  ( VIA2                     	"cut"       	15           )
  ( M3                       	"metal"     	16           )
  ( VIA3                     	"cut"       	17           )
  ( M4                       	"metal"     	18           )
  ( VIA4                     	"cut"       	19           )
  ( M5                       	"metal"     	20           )
  ( VIA5                     	"cut"       	21           )
  ( M6                       	"metal"     	22           )
  ( VIA6                     	"cut"       	23           )
  ( M7                       	"metal"     	24           )
  ( VIA7                     	"cut"       	25           )
  ( M8                       	"metal"     	26           )
  ( VIA8                     	"cut"       	27           )
  ( M9                       	"metal"     	28           )
  ( RV                       	"cut"       	29           )
  ( AP                       	"metal"     	30           )
 ) ;functions

 routingDirections(
 ;( layer                       direction     )
 ;( -----                       ---------     )
  ( PO                       	"none"       )
  ( M1                       	"horizontal" )
  ( M2                       	"vertical"   )
  ( M3                       	"horizontal" )
  ( M4                       	"vertical"   )
  ( M5                       	"horizontal" )
  ( M6                       	"vertical"   )
  ( M7                       	"horizontal" )
  ( M8                       	"vertical"   )
  ( M9                       	"horizontal" )
  ( AP                       	"vertical"   )
 ) ;routingDirections

 stampLabelLayers(
 ;( textLayer   layers        )
 ;( ---------   ----------------------------------        )
  ( ("PO" "pin")	PO         )
  ( ("M1" "pin")	M1         )
  ( ("M2" "pin")	M2         )
  ( ("M3" "pin")	M3         )
  ( ("M4" "pin")	M4         )
  ( ("M5" "pin")	M5         )
  ( ("M6" "pin")	M6         )
  ( ("M7" "pin")	M7         )
  ( ("M8" "pin")	M8         )
  ( ("M9" "pin")	M9         )
  ( ("AP" "pin")	AP         )
 ) ;stampLabelLayers

 currentDensityTables(
 ;( rule                	layer1    
 ;  (( index1Definitions	[index2Definitions]) [defaultValue] )
 ;  (table))
 ;( ----------------------------------------------------------------------)
  ( "peakACCurrentDensity"	"M1"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	70.74839
	(500.0 0.09)	73.27512
	(500.0 0.135)	37.05868
	(500.0 0.45)	37.64825
	(500.0 0.9)	37.77459
	(500.0 1.8)	37.83775
	(500.0 4.05)	37.87285
    )
  )
  ( "avgACCurrentDensity"	"M1"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M1"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	17.47352
	(500.0 0.09)	15.71398
	(500.0 0.135)	14.56968
	(500.0 0.45)	11.88078
	(500.0 0.9)	11.00501
	(500.0 1.8)	10.50124
	(500.0 4.05)	10.19823
    )
  )
  ( "avgDCCurrentDensity"	"M1"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M2"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M2"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M2"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	9.123323
	(500.0 0.09)	8.283339
	(500.0 0.135)	7.73606
	(500.0 0.45)	6.46344
	(500.0 0.9)	6.055773
	(500.0 1.8)	5.823409
	(500.0 4.05)	5.684512
    )
  )
  ( "avgDCCurrentDensity"	"M2"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M3"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M3"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M3"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	8.832119
	(500.0 0.09)	7.803326
	(500.0 0.135)	7.133588
	(500.0 0.45)	5.521506
	(500.0 0.9)	4.975651
	(500.0 1.8)	4.654273
	(500.0 4.05)	4.457723
    )
  )
  ( "avgDCCurrentDensity"	"M3"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M4"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M4"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M4"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	8.69546
	(500.0 0.09)	7.582195
	(500.0 0.135)	6.854934
	(500.0 0.45)	5.065452
	(500.0 0.9)	4.436161
	(500.0 1.8)	4.05605
	(500.0 4.05)	3.818898
    )
  )
  ( "avgDCCurrentDensity"	"M4"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M5"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M5"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M5"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	8.636347
	(500.0 0.09)	7.472521
	(500.0 0.135)	6.710018
	(500.0 0.45)	4.805843
	(500.0 0.9)	4.117744
	(500.0 1.8)	3.693471
	(500.0 4.05)	3.424119
    )
  )
  ( "avgDCCurrentDensity"	"M5"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M6"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M6"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M6"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	8.596164
	(500.0 0.09)	7.399856
	(500.0 0.135)	6.614335
	(500.0 0.45)	4.631802
	(500.0 0.9)	3.900541
	(500.0 1.8)	3.441973
	(500.0 4.05)	3.146355
    )
  )
  ( "avgDCCurrentDensity"	"M6"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M7"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	32.68153
	(500.0 0.09)	33.84873
	(500.0 0.135)	17.1189
	(500.0 0.45)	17.39124
	(500.0 0.9)	17.4496
	(500.0 1.8)	17.47878
	(500.0 4.05)	17.495
    )
  )
  ( "avgACCurrentDensity"	"M7"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	0.9296
	(500.0 0.09)	0.9628
	(500.0 0.135)	0.973867
	(500.0 0.45)	0.98936
	(500.0 0.9)	0.99268
	(500.0 1.8)	0.99434
	(500.0 4.05)	0.995262
    )
  )
  ( "rmsACCurrentDensity"	"M7"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.045)	8.555793
	(500.0 0.09)	7.338482
	(500.0 0.135)	6.537809
	(500.0 0.45)	4.500934
	(500.0 0.9)	3.737496
	(500.0 1.8)	3.251938
	(500.0 4.05)	2.93464
    )
  )
  ( "avgDCCurrentDensity"	"M7"
    (("width" nil nil))
    (
	0.045	0.9296
	0.09	0.9628
	0.135	0.973867
	0.45	0.98936
	0.9	0.99268
	1.8	0.99434
	4.05	0.995262
    )
  )
  ( "peakACCurrentDensity"	"M8"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	77.60104
	(500.0 0.9)	80.3399
	(500.0 1.8)	81.25285
	(500.0 3.6)	81.70933
	(500.0 7.2)	81.93757
	(500.0 10.8)	82.01365
    )
  )
  ( "avgACCurrentDensity"	"M8"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	8.545333
	(500.0 0.9)	8.846933
	(500.0 1.8)	8.947467
	(500.0 3.6)	8.997733
	(500.0 7.2)	9.022867
	(500.0 10.8)	9.031244
    )
  )
  ( "rmsACCurrentDensity"	"M8"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	13.97741
	(500.0 0.9)	10.83223
	(500.0 1.8)	9.325076
	(500.0 3.6)	8.419219
	(500.0 7.2)	7.913203
	(500.0 10.8)	7.73497
    )
  )
  ( "avgDCCurrentDensity"	"M8"
    (("width" nil nil))
    (
	0.36	8.545333
	0.9	8.846933
	1.8	8.947467
	3.6	8.997733
	7.2	9.022867
	10.8	9.031244
    )
  )
  ( "peakACCurrentDensity"	"M9"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	77.60104
	(500.0 0.9)	80.3399
	(500.0 1.8)	81.25285
	(500.0 3.6)	81.70933
	(500.0 7.2)	81.93757
	(500.0 10.8)	82.01365
    )
  )
  ( "avgACCurrentDensity"	"M9"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	8.545333
	(500.0 0.9)	8.846933
	(500.0 1.8)	8.947467
	(500.0 3.6)	8.997733
	(500.0 7.2)	9.022867
	(500.0 10.8)	9.031244
    )
  )
  ( "rmsACCurrentDensity"	"M9"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 0.36)	13.6373
	(500.0 0.9)	10.32148
	(500.0 1.8)	8.697182
	(500.0 3.6)	7.700847
	(500.0 7.2)	7.134731
	(500.0 10.8)	6.933277
    )
  )
  ( "avgDCCurrentDensity"	"M9"
    (("width" nil nil))
    (
	0.36	8.545333
	0.9	8.846933
	1.8	8.947467
	3.6	8.997733
	7.2	9.022867
	10.8	9.031244
    )
  )
  ( "avgACCurrentDensity"	"VIA1"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA1"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA2"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA2"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA3"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA3"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA4"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA4"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA5"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA5"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA6"
    (("frequency" nil nil "cutArea" nil nil))
    (
	(500.0 2.5)	20.64198
	(500.0 6.5)	15.87844
    )
  )
  ( "avgDCCurrentDensity"	"VIA6"
    (("cutArea" nil nil))
    (
	2.5	20.64198
	6.5	15.87844
    )
  )
  ( "avgACCurrentDensity"	"VIA7"
    (("frequency" nil nil))
    (
	500.0	9.364998
    )
  )
  ( "avgACCurrentDensity"	"VIA8"
    (("frequency" nil nil))
    (
	500.0	29.31146
    )
  )
  ( "peakACCurrentDensity"	"AP"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 1.8)	158.3919
	(500.0 4.5)	158.3919
	(500.0 7.2)	158.3919
	(500.0 13.5)	158.3919
	(500.0 18.0)	158.3919
	(500.0 31.5)	158.3919
    )
  )
  ( "avgACCurrentDensity"	"AP"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 1.8)	5.79
	(500.0 4.5)	5.79
	(500.0 7.2)	5.79
	(500.0 13.5)	5.79
	(500.0 18.0)	5.79
	(500.0 31.5)	5.79
    )
  )
  ( "rmsACCurrentDensity"	"AP"
    (("frequency" nil nil "width" nil nil))
    (
	(500.0 1.8)	7.919596
	(500.0 4.5)	6.307773
	(500.0 7.2)	5.835666
	(500.0 13.5)	5.440221
	(500.0 18.0)	5.321842
	(500.0 31.5)	5.165656
    )
  )
  ( "avgDCCurrentDensity"	"AP"
    (("width" nil nil))
    (
	1.8	5.79
	4.5	5.79
	7.2	5.79
	13.5	5.79
	18.0	5.79
	31.5	5.79
    )
  )
  ( "avgACCurrentDensity"	"RV"
    (("frequency" nil nil))
    (
	500.0	1.666667
    )
  )
 ) ;currentDensityTables

 cutClasses(
 ;( layerName    )
 ;(   (cutClassName                                        (width length)) )
 ;( ---------------------------------------------------------------------- )
  (VIA1        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
  (VIA2        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
  (VIA3        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
  (VIA4        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
  (VIA5        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
  (VIA6        
      (square           'numCuts       1      (0.05 0.05))
      (rect             'numCuts       2      (0.05 0.13))
  )
 ) ;cutClasses

) ;layerRules


;********************************
; VIADEFS
;********************************
viaDefs(

 standardViaDefs(
 ;( viaDefName	layer1	layer2	(cutLayer cutWidth cutHeight [resistancePerCut]) 
 ;   (cutRows	cutCol	(cutSpace)	[(l_cutPattern)]) 
 ;   (layer1Enc) (layer2Enc)	(layer1Offset)	(layer2Offset)	(origOffset) 
 ;   [implant1	 (implant1Enc)	[implant2	(implant2Enc) [well/substrate]]]) 
 ;( -------------------------------------------------------------------------- ) 
  ( M1_PO       	PO          M1          	("CO" 0.04 0.04)
     (1 1 (0.085 0.085))
     (0.02 0.02)	(0.02 0.02)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M1_OD       	OD          M1          	("CO" 0.04 0.04)
     (1 1 (0.085 0.085))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M1_NW       	OD          M1          	("CO" 0.04 0.04)
     (1 1 (0.085 0.085))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     NP          	(0.03 0.03)	NW          	(0.085 0.085)	NW             
  )
  ( M1_SUB      	OD          M1          	("CO" 0.04 0.04)
     (1 1 (0.085 0.085))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
     PP          	(0.03 0.03)	PDK         	(0.0 0.0)
  )
  ( M2_M1       	M1          M2          	("VIA1" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M3_M2       	M2          M3          	("VIA2" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M4_M3       	M3          M4          	("VIA3" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M5_M4       	M4          M5          	("VIA4" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M6_M5       	M5          M6          	("VIA5" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M7_M6       	M6          M7          	("VIA6" 0.05 0.05)
     (1 1 (0.08 0.08))
     (0.03 0.03)	(0.03 0.03)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M8_M7       	M7          M8          	("VIA7" 0.36 0.36)
     (1 1 (0.54 0.54))
     (0.08 0.08)	(0.08 0.08)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( M9_M8       	M8          M9          	("VIA8" 0.36 0.36)
     (1 1 (0.54 0.54))
     (0.08 0.08)	(0.08 0.08)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( AP_M9_A     	M9          AP          	("RV" 2.0 2.0)
     (1 1 (2.0 2.0))
     (0.5 0.5)	(0.5 0.5)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( AP_M9_B     	M9          AP          	("RV" 3.0 3.0)
     (1 1 (2.0 2.0))
     (0.5 0.5)	(0.5 0.5)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
 ) ;standardViaDefs

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
;  ( AP_M9c_B   tsmcN28    AP_M9c_B   layout     M9         AP         0.0)
;  ( AP_M9c_A   tsmcN28    AP_M9c_A   layout     M9         AP         0.0)
;  ( M9_M8c_O   tsmcN28    M9_M8c_O   layout     M8         M9         0.0)
;  ( M9_M8c     tsmcN28    M9_M8c     layout     M8         M9         0.0)
;  ( M8_M7c_O   tsmcN28    M8_M7c_O   layout     M7         M8         0.0)
;  ( M8_M7c     tsmcN28    M8_M7c     layout     M7         M8         0.0)
;  ( M7_M6l2_O  tsmcN28    M7_M6l2_O  layout     M6         M7         0.0)
;  ( M7_M6l1_O  tsmcN28    M7_M6l1_O  layout     M6         M7         0.0)
;  ( M7_M6l2    tsmcN28    M7_M6l2    layout     M6         M7         0.0)
;  ( M7_M6l1    tsmcN28    M7_M6l1    layout     M6         M7         0.0)
;  ( M7_M6a_O   tsmcN28    M7_M6a_O   layout     M6         M7         0.0)
;  ( M7_M6a     tsmcN28    M7_M6a     layout     M6         M7         0.0)
;  ( M7_M6c_O   tsmcN28    M7_M6c_O   layout     M6         M7         0.0)
;  ( M7_M6c     tsmcN28    M7_M6c     layout     M6         M7         0.0)
;  ( M7_M6_2cut_p3  tsmcN28 M7_M6_2cut_p3 layout M6 M7 0.0)
;  ( M7_M6_2cut_p2_2  tsmcN28 M7_M6_2cut_p2_2 layout M6 M7 0.0)
;  ( M7_M6_2cut_p2_1  tsmcN28 M7_M6_2cut_p2_1 layout M6 M7 0.0)
;  ( M7_M6_2cut_p1_2  tsmcN28 M7_M6_2cut_p1_2 layout M6 M7 0.0)
;  ( M7_M6_2cut_p1_1  tsmcN28 M7_M6_2cut_p1_1 layout M6 M7 0.0)
;  ( M7_M6_PBS        tsmcN28 M7_M6_PBS       layout M6 M7 0.0)
;  ( M7_M6_PBD        tsmcN28 M7_M6_PBD       layout M6 M7 0.0)
;  ( M7_M6_FBS        tsmcN28 M7_M6_FBS       layout M6 M7 0.0)
;  ( M7_M6_FBD        tsmcN28 M7_M6_FBD       layout M6 M7 0.0)
;  ( M7_M6_FAT        tsmcN28 M7_M6_FAT       layout M6 M7 0.0)
;  ( M7_M6_PBSU       tsmcN28 M7_M6_PBSU      layout M6 M7 0.0)
;  ( M7_M6_PBSB       tsmcN28 M7_M6_PBSB      layout M6 M7 0.0)
;  ( M7_M6_FBS25  tsmcN28 M7_M6_FBS25 layout M6 M7 0.0)
;  ( M7_M6_PBDE   tsmcN28 M7_M6_PBDE  layout M6 M7 0.0)
;  ( M7_M6_PBDU   tsmcN28 M7_M6_PBDU  layout M6 M7 0.0)
;  ( M7_M6_PBDB   tsmcN28 M7_M6_PBDB  layout M6 M7 0.0)
;  ( M7_M6_FBD30  tsmcN28 M7_M6_FBD30 layout M6 M7 0.0)
;  ( M7_M6_FBD20  tsmcN28 M7_M6_FBD20 layout M6 M7 0.0)
;  ( M6_M5l2_O    tsmcN28 M6_M5l2_O   layout M5 M6 0.0)
;  ( M6_M5l1_O    tsmcN28 M6_M5l1_O   layout M5 M6 0.0)
;  ( M6_M5l2      tsmcN28 M6_M5l2     layout M5 M6 0.0)
;  ( M6_M5l1      tsmcN28 M6_M5l1     layout M5 M6 0.0)
;  ( M6_M5a_O     tsmcN28 M6_M5a_O    layout M5 M6 0.0)
;  ( M6_M5a       tsmcN28 M6_M5a      layout M5 M6 0.0)
;  ( M6_M5c_O     tsmcN28 M6_M5c_O    layout M5 M6 0.0)
;  ( M6_M5c       tsmcN28 M6_M5c      layout M5 M6 0.0)
;  ( M6_M5_2cut_p3  tsmcN28 M6_M5_2cut_p3 layout M5 M6 0.0)
;  ( M6_M5_2cut_p2_2  tsmcN28 M6_M5_2cut_p2_2 layout M5 M6 0.0)
;  ( M6_M5_2cut_p2_1  tsmcN28 M6_M5_2cut_p2_1 layout M5 M6 0.0)
;  ( M6_M5_2cut_p1_2  tsmcN28 M6_M5_2cut_p1_2 layout M5 M6 0.0)
;  ( M6_M5_2cut_p1_1  tsmcN28 M6_M5_2cut_p1_1 layout M5 M6 0.0)
;  ( M6_M5_PBS        tsmcN28 M6_M5_PBS       layout M5 M6 0.0)
;  ( M6_M5_PBD        tsmcN28 M6_M5_PBD       layout M5 M6 0.0)
;  ( M6_M5_FBS        tsmcN28 M6_M5_FBS       layout M5 M6 0.0)
;  ( M6_M5_FBD        tsmcN28 M6_M5_FBD       layout M5 M6 0.0)
;  ( M6_M5_FAT        tsmcN28 M6_M5_FAT       layout M5 M6 0.0)
;  ( M6_M5_PBSU       tsmcN28 M6_M5_PBSU      layout M5 M6 0.0)
;  ( M6_M5_PBSB       tsmcN28 M6_M5_PBSB      layout M5 M6 0.0)
;  ( M6_M5_FBS25  tsmcN28 M6_M5_FBS25 layout M5 M6 0.0)
;  ( M6_M5_PBDE   tsmcN28 M6_M5_PBDE  layout M5 M6 0.0)
;  ( M6_M5_PBDU   tsmcN28 M6_M5_PBDU  layout M5 M6 0.0)
;  ( M6_M5_PBDB   tsmcN28 M6_M5_PBDB  layout M5 M6 0.0)
;  ( M6_M5_FBD30  tsmcN28 M6_M5_FBD30 layout M5 M6 0.0)
;  ( M6_M5_FBD20  tsmcN28 M6_M5_FBD20 layout M5 M6 0.0)
;  ( M5_M4l2_O    tsmcN28 M5_M4l2_O   layout M4 M5 0.0)
;  ( M5_M4l1_O    tsmcN28 M5_M4l1_O   layout M4 M5 0.0)
;  ( M5_M4l2      tsmcN28 M5_M4l2     layout M4 M5 0.0)
;  ( M5_M4l1      tsmcN28 M5_M4l1     layout M4 M5 0.0)
;  ( M5_M4a_O     tsmcN28 M5_M4a_O    layout M4 M5 0.0)
;  ( M5_M4a       tsmcN28 M5_M4a      layout M4 M5 0.0)
;  ( M5_M4c_O     tsmcN28 M5_M4c_O    layout M4 M5 0.0)
;  ( M5_M4c       tsmcN28 M5_M4c      layout M4 M5 0.0)
;  ( M5_M4_2cut_p3  tsmcN28 M5_M4_2cut_p3 layout M4 M5 0.0)
;  ( M5_M4_2cut_p2_2  tsmcN28 M5_M4_2cut_p2_2 layout M4 M5 0.0)
;  ( M5_M4_2cut_p2_1  tsmcN28 M5_M4_2cut_p2_1 layout M4 M5 0.0)
;  ( M5_M4_2cut_p1_2  tsmcN28 M5_M4_2cut_p1_2 layout M4 M5 0.0)
;  ( M5_M4_2cut_p1_1  tsmcN28 M5_M4_2cut_p1_1 layout M4 M5 0.0)
;  ( M5_M4_PBS        tsmcN28 M5_M4_PBS       layout M4 M5 0.0)
;  ( M5_M4_PBD        tsmcN28 M5_M4_PBD       layout M4 M5 0.0)
;  ( M5_M4_FBS        tsmcN28 M5_M4_FBS       layout M4 M5 0.0)
;  ( M5_M4_FBD        tsmcN28 M5_M4_FBD       layout M4 M5 0.0)
;  ( M5_M4_FAT        tsmcN28 M5_M4_FAT       layout M4 M5 0.0)
;  ( M5_M4_PBSU       tsmcN28 M5_M4_PBSU      layout M4 M5 0.0)
;  ( M5_M4_PBSB       tsmcN28 M5_M4_PBSB      layout M4 M5 0.0)
;  ( M5_M4_FBS25  tsmcN28 M5_M4_FBS25 layout M4 M5 0.0)
;  ( M5_M4_PBDE   tsmcN28 M5_M4_PBDE  layout M4 M5 0.0)
;  ( M5_M4_PBDU   tsmcN28 M5_M4_PBDU  layout M4 M5 0.0)
;  ( M5_M4_PBDB   tsmcN28 M5_M4_PBDB  layout M4 M5 0.0)
;  ( M5_M4_FBD30  tsmcN28 M5_M4_FBD30 layout M4 M5 0.0)
;  ( M5_M4_FBD20  tsmcN28 M5_M4_FBD20 layout M4 M5 0.0)
;  ( M4_M3l2_O    tsmcN28 M4_M3l2_O   layout M3 M4 0.0)
;  ( M4_M3l1_O    tsmcN28 M4_M3l1_O   layout M3 M4 0.0)
;  ( M4_M3l2      tsmcN28 M4_M3l2     layout M3 M4 0.0)
;  ( M4_M3l1      tsmcN28 M4_M3l1     layout M3 M4 0.0)
;  ( M4_M3a_O     tsmcN28 M4_M3a_O    layout M3 M4 0.0)
;  ( M4_M3a       tsmcN28 M4_M3a      layout M3 M4 0.0)
;  ( M4_M3c_O     tsmcN28 M4_M3c_O    layout M3 M4 0.0)
;  ( M4_M3c       tsmcN28 M4_M3c      layout M3 M4 0.0)
;  ( M4_M3_2cut_p3  tsmcN28 M4_M3_2cut_p3 layout M3 M4 0.0)
;  ( M4_M3_2cut_p2_2  tsmcN28 M4_M3_2cut_p2_2 layout M3 M4 0.0)
;  ( M4_M3_2cut_p2_1  tsmcN28 M4_M3_2cut_p2_1 layout M3 M4 0.0)
;  ( M4_M3_2cut_p1_2  tsmcN28 M4_M3_2cut_p1_2 layout M3 M4 0.0)
;  ( M4_M3_2cut_p1_1  tsmcN28 M4_M3_2cut_p1_1 layout M3 M4 0.0)
;  ( M4_M3_PBS        tsmcN28 M4_M3_PBS       layout M3 M4 0.0)
;  ( M4_M3_PBD        tsmcN28 M4_M3_PBD       layout M3 M4 0.0)
;  ( M4_M3_FBS        tsmcN28 M4_M3_FBS       layout M3 M4 0.0)
;  ( M4_M3_FBD        tsmcN28 M4_M3_FBD       layout M3 M4 0.0)
;  ( M4_M3_FAT        tsmcN28 M4_M3_FAT       layout M3 M4 0.0)
;  ( M4_M3_PBSU       tsmcN28 M4_M3_PBSU      layout M3 M4 0.0)
;  ( M4_M3_PBSB       tsmcN28 M4_M3_PBSB      layout M3 M4 0.0)
;  ( M4_M3_FBS25  tsmcN28 M4_M3_FBS25 layout M3 M4 0.0)
;  ( M4_M3_PBDE   tsmcN28 M4_M3_PBDE  layout M3 M4 0.0)
;  ( M4_M3_PBDU   tsmcN28 M4_M3_PBDU  layout M3 M4 0.0)
;  ( M4_M3_PBDB   tsmcN28 M4_M3_PBDB  layout M3 M4 0.0)
;  ( M4_M3_FBD30  tsmcN28 M4_M3_FBD30 layout M3 M4 0.0)
;  ( M4_M3_FBD20  tsmcN28 M4_M3_FBD20 layout M3 M4 0.0)
;  ( M3_M2l2_O    tsmcN28 M3_M2l2_O   layout M2 M3 0.0)
;  ( M3_M2l1_O    tsmcN28 M3_M2l1_O   layout M2 M3 0.0)
;  ( M3_M2l2      tsmcN28 M3_M2l2     layout M2 M3 0.0)
;  ( M3_M2l1      tsmcN28 M3_M2l1     layout M2 M3 0.0)
;  ( M3_M2a_O     tsmcN28 M3_M2a_O    layout M2 M3 0.0)
;  ( M3_M2a       tsmcN28 M3_M2a      layout M2 M3 0.0)
;  ( M3_M2c_O     tsmcN28 M3_M2c_O    layout M2 M3 0.0)
;  ( M3_M2c       tsmcN28 M3_M2c      layout M2 M3 0.0)
;  ( M3_M2_2cut_p3  tsmcN28 M3_M2_2cut_p3 layout M2 M3 0.0)
;  ( M3_M2_2cut_p2_2  tsmcN28 M3_M2_2cut_p2_2 layout M2 M3 0.0)
;  ( M3_M2_2cut_p2_1  tsmcN28 M3_M2_2cut_p2_1 layout M2 M3 0.0)
;  ( M3_M2_2cut_p1_2  tsmcN28 M3_M2_2cut_p1_2 layout M2 M3 0.0)
;  ( M3_M2_2cut_p1_1  tsmcN28 M3_M2_2cut_p1_1 layout M2 M3 0.0)
;  ( M3_M2_PBS        tsmcN28 M3_M2_PBS       layout M2 M3 0.0)
;  ( M3_M2_PBD        tsmcN28 M3_M2_PBD       layout M2 M3 0.0)
;  ( M3_M2_FBS        tsmcN28 M3_M2_FBS       layout M2 M3 0.0)
;  ( M3_M2_FBD        tsmcN28 M3_M2_FBD       layout M2 M3 0.0)
;  ( M3_M2_FAT        tsmcN28 M3_M2_FAT       layout M2 M3 0.0)
;  ( M3_M2_PBSU       tsmcN28 M3_M2_PBSU      layout M2 M3 0.0)
;  ( M3_M2_PBSB       tsmcN28 M3_M2_PBSB      layout M2 M3 0.0)
;  ( M3_M2_FBS25  tsmcN28 M3_M2_FBS25 layout M2 M3 0.0)
;  ( M3_M2_PBDE   tsmcN28 M3_M2_PBDE  layout M2 M3 0.0)
;  ( M3_M2_PBDU   tsmcN28 M3_M2_PBDU  layout M2 M3 0.0)
;  ( M3_M2_PBDB   tsmcN28 M3_M2_PBDB  layout M2 M3 0.0)
;  ( M3_M2_FBD30  tsmcN28 M3_M2_FBD30 layout M2 M3 0.0)
;  ( M3_M2_FBD20  tsmcN28 M3_M2_FBD20 layout M2 M3 0.0)
;  ( M2_M1l2_O    tsmcN28 M2_M1l2_O   layout M1 M2 0.0)
;  ( M2_M1l1_O    tsmcN28 M2_M1l1_O   layout M1 M2 0.0)
;  ( M2_M1l2      tsmcN28 M2_M1l2     layout M1 M2 0.0)
;  ( M2_M1l1      tsmcN28 M2_M1l1     layout M1 M2 0.0)
;  ( M2_M1a_O     tsmcN28 M2_M1a_O    layout M1 M2 0.0)
;  ( M2_M1a       tsmcN28 M2_M1a      layout M1 M2 0.0)
;  ( M2_M1c_O     tsmcN28 M2_M1c_O    layout M1 M2 0.0)
;  ( M2_M1c       tsmcN28 M2_M1c      layout M1 M2 0.0)
;  ( M2_M1_2cut_p3  tsmcN28 M2_M1_2cut_p3 layout M1 M2 0.0)
;  ( M2_M1_2cut_p2_2  tsmcN28 M2_M1_2cut_p2_2 layout M1 M2 0.0)
;  ( M2_M1_2cut_p2_1  tsmcN28 M2_M1_2cut_p2_1 layout M1 M2 0.0)
;  ( M2_M1_2cut_p1_2  tsmcN28 M2_M1_2cut_p1_2 layout M1 M2 0.0)
;  ( M2_M1_2cut_p1_1  tsmcN28 M2_M1_2cut_p1_1 layout M1 M2 0.0)
;  ( M2_M1_PBS        tsmcN28 M2_M1_PBS       layout M1 M2 0.0)
;  ( M2_M1_PBD        tsmcN28 M2_M1_PBD       layout M1 M2 0.0)
;  ( M2_M1_FBS        tsmcN28 M2_M1_FBS       layout M1 M2 0.0)
;  ( M2_M1_FBD        tsmcN28 M2_M1_FBD       layout M1 M2 0.0)
;  ( M2_M1_FAT        tsmcN28 M2_M1_FAT       layout M1 M2 0.0)
;  ( M2_M1_PBSU       tsmcN28 M2_M1_PBSU      layout M1 M2 0.0)
;  ( M2_M1_PBSB       tsmcN28 M2_M1_PBSB      layout M1 M2 0.0)
;  ( M2_M1_FBS25  tsmcN28 M2_M1_FBS25 layout M1 M2 0.0)
;  ( M2_M1_PBDE   tsmcN28 M2_M1_PBDE  layout M1 M2 0.0)
;  ( M2_M1_PBDU   tsmcN28 M2_M1_PBDU  layout M1 M2 0.0)
;  ( M2_M1_PBDB   tsmcN28 M2_M1_PBDB  layout M1 M2 0.0)
;  ( M2_M1_FBD30  tsmcN28 M2_M1_FBD30 layout M1 M2 0.0)
;  ( M2_M1_FBD20  tsmcN28 M2_M1_FBD20 layout M1 M2 0.0)
;  ( M1_PODc_O    tsmcN28 M1_PODc_O   layout OD M1 0.0)
;  ( M1_PODc      tsmcN28 M1_PODc     layout OD M1 0.0)
;  ( M1_NODc_O    tsmcN28 M1_NODc_O   layout OD M1 0.0)
;  ( M1_NODc      tsmcN28 M1_NODc     layout OD M1 0.0)
;  ( M1_PPOd_O    tsmcN28 M1_PPOd_O   layout PO M1 0.0)
;  ( M1_PPOd      tsmcN28 M1_PPOd     layout PO M1 0.0)
;  ( M1_NPOd_O    tsmcN28 M1_NPOd_O   layout PO M1 0.0)
;  ( M1_NPOd      tsmcN28 M1_NPOd     layout PO M1 0.0)
;  ( M1_PPOc_O    tsmcN28 M1_PPOc_O   layout PO M1 0.0)
;  ( M1_PPOc      tsmcN28 M1_PPOc     layout PO M1 0.0)
;  ( M1_NPOc_O    tsmcN28 M1_NPOc_O   layout PO M1 0.0)
;  ( M1_NPOc      tsmcN28 M1_NPOc     layout PO M1 0.0)
 ) ;customViaDefs

) ;viaDefs



;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "virtuosoDefaultSetup"	nil

    interconnect(
     ( validLayers   (OD  PO  M1  M2  M3  M4  M5  M6  M7  M8  M9  AP  ) )
     ( validVias     (M1_OD  M1_PO  M2_M1  M3_M2  M4_M3  M5_M4  M6_M5  M7_M6  M8_M7  M9_M8  AP_M9_A  AP_M9_B  ) )
    ) ;interconnect
  ) ;virtuosoDefaultSetup

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "virtuosoDefaultExtractorSetup"	nil

    interconnect(
     ( validLayers  ( ( NW  drawing) ( OD  drawing) ( OD  pin) ( OD  net) ( NP  drawing) ( PP  drawing) ( PO  drawing) ( PO  pin) ( PO  net) ( CO  drawing) ( CO  pin) ( M1  drawing) ( M1  pin) ( M1  net) ( VIA1  drawing) ( VIA1  pin) ( M2  drawing) ( M2  pin) ( M2  net) ( VIA2  drawing) ( VIA2  pin) ( M3  drawing) ( M3  pin) ( M3  net) ( VIA3  drawing) ( VIA3  pin) ( M4  drawing) ( M4  pin) ( M4  net) ( VIA4  drawing) ( VIA4  pin) ( M5  drawing) ( M5  pin) ( M5  net) ( VIA5  drawing) ( VIA5  pin) ( M6  drawing) ( M6  pin) ( M6  net) ( VIA6  drawing) ( VIA6  pin) ( M7  drawing) ( M7  pin) ( M7  net) ( VIA7  drawing) ( VIA7  pin) ( M8  drawing) ( M8  pin) ( M8  net) ( VIA8  drawing) ( VIA8  pin) ( M9  drawing) ( M9  pin) ( M9  net) ( RV  drawing) ( RV  pin) ( RV  net) ( AP  drawing) ( AP  pin) ( AP  net) ( PDK  drawing) ) )
     ( validVias     (M1_SUB  M1_NW  M1_OD  M1_PO  M2_M1  M3_M2  M4_M3  M5_M4  M6_M5  M7_M6  M8_M7  M9_M8  AP_M9_A  AP_M9_B  ) )
    ) ;interconnect
  ) ;virtuosoDefaultExtractorSetup

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "VLMDefaultSetup"	nil

    interconnect(
     ( validLayers   (OD  PO  M1  M2  M3  M4  M5  M6  M7  M8  M9  AP  ) )
     ( validVias     (M1_OD  M1_PO  M2_M1  M3_M2  M4_M3  M5_M4  M6_M5  M7_M6  M8_M7  M9_M8  AP_M9_A  AP_M9_B  ) )
    ) ;interconnect
  ) ;VLMDefaultSetup

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "LEFDefaultRouteSpec_tsmcN28"	nil    "LEFDefaultRouteSpec"

    interconnect(
     ( validLayers   (M1  M2  M3  M4  M5  M6  M7  M8  M9  AP  ) )
     ( validVias     (M2_M1  M3_M2  M4_M3  M5_M4  M6_M5  M7_M6  M8_M7  M9_M8  AP_M9_A  AP_M9_B  ) )
    ) ;interconnect

    routingGrids(
     ( verticalPitch              "M1"	0.1 )
     ( horizontalPitch            "M1"	0.1 )
     ( verticalOffset             "M1"	0.05 )
     ( horizontalOffset           "M1"	0.05 )
     ( verticalPitch              "M2"	0.1 )
     ( horizontalPitch            "M2"	0.1 )
     ( verticalOffset             "M2"	0.05 )
     ( horizontalOffset           "M2"	0.05 )
     ( verticalPitch              "M3"	0.1 )
     ( horizontalPitch            "M3"	0.1 )
     ( verticalOffset             "M3"	0.05 )
     ( horizontalOffset           "M3"	0.05 )
     ( verticalPitch              "M4"	0.1 )
     ( horizontalPitch            "M4"	0.1 )
     ( verticalOffset             "M4"	0.05 )
     ( horizontalOffset           "M4"	0.05 )
     ( verticalPitch              "M5"	0.1 )
     ( horizontalPitch            "M5"	0.1 )
     ( verticalOffset             "M5"	0.05 )
     ( horizontalOffset           "M5"	0.05 )
     ( verticalPitch              "M6"	0.1 )
     ( horizontalPitch            "M6"	0.1 )
     ( verticalOffset             "M6"	0.05 )
     ( horizontalOffset           "M6"	0.05 )
     ( verticalPitch              "M7"	0.1 )
     ( horizontalPitch            "M7"	0.1 )
     ( verticalOffset             "M7"	0.05 )
     ( horizontalOffset           "M7"	0.05 )
     ( verticalPitch              "M8"	0.8 )
     ( horizontalPitch            "M8"	0.8 )
     ( verticalOffset             "M8"	0.4 )
     ( horizontalOffset           "M8"	0.4 )
     ( verticalPitch              "M9"	0.8 )
     ( horizontalPitch            "M9"	0.8 )
     ( verticalOffset             "M9"	0.4 )
     ( horizontalOffset           "M9"	0.4 )
     ( verticalPitch              "AP"	4.0 )
     ( horizontalPitch            "AP"	4.0 )
     ( verticalOffset             "AP"	2.0 )
     ( horizontalOffset           "AP"	2.0 )
    ) ;routingGrids

    placementGrids(
     ( horizontalPitch            0.1 )
     ( verticalPitch              0.1 )
    ) ;placementGrids
  ) ;LEFDefaultRouteSpec_tsmcN28

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minOppExtensionCG"	nil    nil    'or

    orderedSpacings(
     ( minOppExtension            "OD"	"CO"		(0.005 0.03)  'ref  "CO.EN.1, CO.EN.2" )
     ( minOppExtension            "M7"	"VIA7"		(0.02 0.08)  'ref  "VIAz.EN.1, VIAz.EN.2" )
     ( minOppExtension            "M8"	"VIA7"		(0.02 0.08)  'ref  "Mz.EN.1, Mz.EN.2" )
     ( minOppExtension            "M8"	"VIA8"		(0.02 0.08)  'ref  "VIAz.EN.1, VIAz.EN.2" )
     ( minOppExtension            "M9"	"VIA8"		(0.02 0.08)  'ref  "Mz.EN.1, Mz.EN.2" )
    ) ;orderedSpacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minOppExtension           "PO"	"CO"	
	(( "width"   nil  nil  )  )
	 (
	   0.0       ( (-0.005 0.05) (-0.005 0.05) )
	   0.04      ( (0.0 0.05) (0.0 0.05) )
	   0.091     ( (0.0 0.02) (0.015 0.015) )
	)  'ref  "CO.EN.3, CO.EN.4, CO.EN.5, CO.EN.6, CO.EN.7"
     )
     ( minOppExtension           "M1"	"CO"	
	(( "width"   nil  nil  )  )
	 (
	   0.0       ( (0.0 0.02) (0.015 0.015) )
	   0.701     ( (0.0 0.03) (0.0 0.03) )
	)  'ref  "M1.EN.1, M1.EN.2, M1.EN.3, M1.EN.6"
     )
     ( minOppExtension           "M1"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M1"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M1"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M2"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M2"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M2"	"VIA1"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
     ( minOppExtension           "M2"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M2"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M2"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M3"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M3"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M3"	"VIA2"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
     ( minOppExtension           "M3"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M3"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M3"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M4"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M4"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M4"	"VIA3"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
     ( minOppExtension           "M4"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M4"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M4"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M5"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M5"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M5"	"VIA4"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
     ( minOppExtension           "M5"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M5"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M5"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M6"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M6"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M6"	"VIA5"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
     ( minOppExtension           "M6"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "VIAx.EN.1, VIAx.EN.2, VIAx.EN.3"
     )
     ( minOppExtension           "M6"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "VIAx.EN.6, VIAx.EN.8"
     )
     ( minOppExtension           "M6"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "VIAx.EN.5, VIAx.EN.7, VIAx.EN.3"
     )
     ( minOppExtension           "M7"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  0.05	 )
	 (
	   0.0       ( (0.0 0.03) (0.02 0.02) )
	)  'ref  "Mx.EN.1, Mx.EN.2, Mx.EN.3"
     )
     ( minOppExtension           "M7"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	'endSide	 )
	 (
	   0.0       ( (0.04 0.0) )
	)  'ref  "Mx.EN.6, Mx.EN.8"
     )
     ( minOppExtension           "M7"	"VIA6"	
	(( "width"   nil  nil  ) 'cutClass  (0.05 0.13)	 )
	 (
	   0.0       ( (0.03 0.01) (0.02 0.02) )
	)  'ref  "Mx.EN.5, Mx.EN.7, Mx.EN.3"
     )
    ) ;spacingTables
  ) ;minOppExtensionCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minExtensionEdgeCG"	nil    nil    'and

    spacings(
     ( minExtensionEdge           "M1"	"VIA1"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "VIAx.EN.12" )
     ( minExtensionEdge           "M1"	"VIA1"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "VIAx.EN.12" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "VIAx.EN.9" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "VIAx.EN.10" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "VIAx.EN.11" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "VIAx.EN.12" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "VIAx.EN.9" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "VIAx.EN.10" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "VIAx.EN.11" )
     ( minExtensionEdge           "M2"	"VIA1"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "VIAx.EN.12" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M2"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M3"	"VIA2"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M3"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M4"	"VIA3"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M4"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M5"	"VIA4"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M5"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M6"	"VIA5"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M6"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  0.05	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  0.05	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  0.05	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  0.05	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.051	'paraLength  0.1	'exceptTwoEdges	'within  0.06	0.005  'ref  "Mx.EN.9" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.056	'paraLength  0.1	'within  0.065	0.005  'ref  "Mx.EN.10" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.07	'paraLength  0.1	'within  0.1	0.01  'ref  "Mx.EN.11" )
     ( minExtensionEdge           "M7"	"VIA6"		'cutClass  (0.05 0.13)	'width  0.161	'paraLength  0.1	'within  0.13	0.015  'ref  "Mx.EN.12" )
    ) ;spacings
  ) ;minExtensionEdgeCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minEndOfLineSpacingCG"	nil    nil    'and

    spacings(
     ( minEndOfLineSpacing        "M1"	(0.07 0.025 0.06)  'ref  "M1.S.7" )
     ( minEndOfLineSpacing        "M1"	'width  0.07	'distance  0.025	'paraEdgeCount  1	'paraEdgeSpace  0.12	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.07  'ref  "M1.S.8" )
     ( minEndOfLineSpacing        "M2"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M2"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M2"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M3"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M3"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M3"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M4"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M4"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M4"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M5"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M5"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M5"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M6"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M6"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M6"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M7"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	0.07  'ref  "Mx.S.7, Mx.S.12" )
     ( minEndOfLineSpacing        "M7"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	'encloseDistance  0.05	'cutToMetalSpace  0.145	'below	'allCuts	0.1  'ref  "Mx.S.8" )
     ( minEndOfLineSpacing        "M7"	'width  0.07	'distance  0.025	'endToEndSpace  0.08	'paraEdgeCount  1	'paraEdgeSpace  0.115	'paraEdgeWithin  0.07	'subtractWidth	'paraMinLength  0.05	0.08  'ref  "Mx.S.8" )
    ) ;spacings
  ) ;minEndOfLineSpacingCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minProtrusionNumCutCG"	nil    nil    'and

    spacings(
     ( minProtrusionNumCut        "VIA1"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA1"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA1"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA2"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA2"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA2"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA3"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA3"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA3"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA4"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA4"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA4"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA5"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA5"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA5"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA6"	(1.651 0.18 0.18 2)  'ref  "VIAx.R.4" )
     ( minProtrusionNumCut        "VIA6"	(4.001 1.0 1.0 2)  'ref  "VIAx.R.5" )
     ( minProtrusionNumCut        "VIA6"	(10.001 5.0 1.5 2)  'ref  "VIAx.R.6" )
     ( minProtrusionNumCut        "VIA7"	(5.001 10.0 3.0 2)  'ref  "VIAz.R.3" )
     ( minProtrusionNumCut        "VIA8"	(5.001 10.0 3.0 2)  'ref  "VIAz.R.3" )
    ) ;spacings
  ) ;minProtrusionNumCutCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minEdgeAdjacentLengthCG"	nil    nil    'and

    spacings(
     ( minEdgeAdjacentLength      "OD"	'maxLength  0.04	0.04  'ref  "G.4" )
     ( minEdgeAdjacentLength      "OD_15"	'maxLength  0.32	0.32  'ref  "G.4" )
     ( minEdgeAdjacentLength      "OD_18"	'maxLength  0.32	0.32  'ref  "G.4" )
     ( minEdgeAdjacentLength      "OD_25"	'maxLength  0.32	0.32  'ref  "G.4" )
     ( minEdgeAdjacentLength      "PO"	'maxLength  0.03	0.03  'ref  "G.4" )
     ( minEdgeAdjacentLength      "NW"	'maxLength  0.24	0.24  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTL_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTH_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTUL_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "eVTL_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "UHVT_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "EHVT_N"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTL_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTH_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VTUL_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "eVTL_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "UHVT_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "EHVT_P"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "NP"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "PP"	'maxLength  0.16	0.16  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M1"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M1"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M2"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M2"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M3"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M3"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M4"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M4"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M5"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M5"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M6"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M6"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M7"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "M7"	'maxLength  0.05	'edgeCount  1	'convexCorner	0.065  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA1"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA2"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA3"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA4"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA5"	'maxLength  0.05	0.05  'ref  "G.4" )
     ( minEdgeAdjacentLength      "VIA6"	'maxLength  0.05	0.05  'ref  "G.4" )
    ) ;spacings
  ) ;minEdgeAdjacentLengthCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minPolyWidthCG"	nil    nil    'and

    spacings(
     ( minWidth                   "PO"	'horizontal	0.03  'ref  "PO.W.1" )
     ( minWidth                   "PO"	'vertical	0.08  'ref  "PO.W.2" )
    ) ;spacings
  ) ;minPolyWidthCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "minCOSpacingCG"	nil    nil    'or

    spacings(
     ( minViaSpacing              "CO"	'sameNet	0.07  'ref  "CO.S.1" )
     ( viaSpacing                 "CO"	(3 0.09 0.085)  'ref  "CO.S.2" )
     ( minViaSpacing              "CO"	0.08  'ref  "CO.S.3" )
    ) ;spacings
  ) ;minCOSpacingCG

 ;( group	[override]	[definition]	[operator] )
 ;( -----	----------	------------	---------- )
  ( "foundry"	nil
	memberConstraintGroups(
 	; listed in order of precedence
 	; -----------------------------
       "minProtrusionSpacingCG" "minOppExtensionCG" "minExtensionEdgeCG" "minEndOfLineSpacingCG" "minProtrusionNumCutCG" "minEdgeAdjacentLengthCG" "minPolyWidthCG" "minCOSpacingCG" "fromLEFCG"
	); memberConstraintGroups

    interconnect(
     ( errorLayer    errLayer_nwrodo2a  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2b  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2c  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2d  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2e  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2f  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2g  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrstio1a  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_nwrstio1b  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_nwrstio1c  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_nwrstio1d  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_ntnR1  'ref  "NT_N.R.1" )
     ( errorLayer    errLayer_ntnR3  'ref  "NT_N.R.3" )
     ( errorLayer    errLayer_vthnR1a  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1b  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1c  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1d  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1e  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1f  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1g  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1h  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthpR1a  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1b  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1c  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1d  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1e  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1f  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1g  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vtlnR1a  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1b  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1c  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1d  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1e  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1f  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlpR1a  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1b  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1c  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1d  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1e  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtulnR1a  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1b  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1c  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1d  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulpR1a  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1b  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1c  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_pp_np  'ref  "PP.R.3, NP.R.3" )
     ( errorLayer    errLayer_po_imp  'ref  "PP.R.5, NP.R.5" )
     ( errorLayer    errLayer_varR2a  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2b  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2c  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2d  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2e  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2f  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2g  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2h  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR3  'ref  "VAR.R.3" )
     ( errorLayer    errLayer_varR6  'ref  "VAR.R.6" )
     ( errorLayer    errLayer_co_rpo  'ref  "CO.R.1" )
     ( errorLayer    errLayer_co_M1  'ref  "CO.R.3" )
     ( errorLayer    errLayer_nwrodo2h  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2i  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2j  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2k  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2l  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrodo2m  'ref  "NWROD.O.2" )
     ( errorLayer    errLayer_nwrstio1e  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_nwrstio1f  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_nwrstio1g  'ref  "NWRSTI.O.1" )
     ( errorLayer    errLayer_vthnR1i  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1j  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1k  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1l  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1m  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthnR1n  'ref  "VTH_N.R.1" )
     ( errorLayer    errLayer_vthpR1h  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1i  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1j  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1k  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1l  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vthpR1m  'ref  "VTH_P.R.1" )
     ( errorLayer    errLayer_vtlnR1g  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1h  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1i  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1j  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1k  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlnR1l  'ref  "VTL_N.R.1" )
     ( errorLayer    errLayer_vtlpR1f  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1g  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1h  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1i  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1j  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtlpR1k  'ref  "VTL_P.R.1" )
     ( errorLayer    errLayer_vtulnR1e  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1f  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1g  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1h  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1i  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulnR1j  'ref  "VTUL_N.R.1" )
     ( errorLayer    errLayer_vtulpR1d  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1e  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1f  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1g  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1h  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_vtulpR1i  'ref  "VTUL_P.R.1" )
     ( errorLayer    errLayer_varR2i  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2j  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2k  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2l  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2m  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_varR2n  'ref  "VAR.R.2" )
     ( errorLayer    errLayer_uhvtnR1a  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1b  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1c  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1d  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1e  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1f  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1g  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtnR1h  'ref  "UHVT_N.R.1" )
     ( errorLayer    errLayer_uhvtpR1a  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1b  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1c  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1d  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1e  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1f  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_uhvtpR1g  'ref  "UHVT_P.R.1" )
     ( errorLayer    errLayer_ehvtnR1a  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtnR1b  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtnR1c  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtnR1d  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtnR1e  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtnR1f  'ref  "eHVT_N.R.1" )
     ( errorLayer    errLayer_ehvtpR1a  'ref  "eHVT_P.R.1" )
     ( errorLayer    errLayer_ehvtpR1b  'ref  "eHVT_P.R.1" )
     ( errorLayer    errLayer_ehvtpR1c  'ref  "eHVT_P.R.1" )
     ( errorLayer    errLayer_ehvtpR1d  'ref  "eHVT_P.R.1" )
     ( errorLayer    errLayer_ehvtpR1e  'ref  "eHVT_P.R.1" )
     ( errorLayer    errLayer_evtlnR1a  'ref  "EVTL_N.R.1" )
     ( errorLayer    errLayer_evtlnR1b  'ref  "EVTL_N.R.1" )
     ( errorLayer    errLayer_evtlnR1c  'ref  "EVTL_N.R.1" )
     ( errorLayer    errLayer_evtlnR1d  'ref  "EVTL_N.R.1" )
     ( errorLayer    errLayer_evtlpR1a  'ref  "EVTL_P.R.1" )
     ( errorLayer    errLayer_evtlpR1b  'ref  "EVTL_P.R.1" )
     ( errorLayer    errLayer_evtlpR1c  'ref  "EVTL_P.R.1" )
     ( errorLayer    errLayer_VIAx_r7_VIA1M1  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA1M2  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA2M2  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA2M3  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA3M3  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA3M4  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA4M4  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA4M5  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA5M5  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA5M6  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA6M6  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAx_r7_VIA6M7  'ref  "VIAx.R.7" )
     ( errorLayer    errLayer_VIAz_r4_VIA7M7  'ref  "VIAz.R.4" )
     ( errorLayer    errLayer_VIAz_r4_VIA7M8  'ref  "VIAz.R.4" )
     ( errorLayer    errLayer_VIAz_r4_VIA8M8  'ref  "VIAz.R.4" )
     ( errorLayer    errLayer_VIAz_r4_VIA8M9  'ref  "VIAz.R.4" )
    ) ;interconnect

    spacings(
     ( minWidth                   "PDK"	0.24  'ref  "NW.W.1" )
     ( minSpacing                 "PDK"	0.24  'ref  "NW.S.1" )
     ( minWidth                   "NW"	0.24  'ref  "NW.W.1" )
     ( minSpacing                 "NW"	0.24  'ref  "NW.S.1" )
     ( minSpacing                 "PDK"	"NW"		0.24  'ref  "NW.S.1" )
     ( minSpacing                 "NW"	"PW_STRAP"		0.065  'ref  "NW.S.5" )
     ( minSpacing                 "NW"	"NPLUS_ACTIVE"		0.065  'ref  "NW.S.6" )
     ( minSpacing                 "NW"	"nw_nod"		0.3  'ref  "NW.S.9" )
     ( minWidth                   "DNW"	3.0  'ref  "DNW.W.1" )
     ( minSpacing                 "DNW"	3.5  'ref  "DNW.S.1" )
     ( minSpacing                 "NW"	"DNW"		2.5  'ref  "DNW.S.2" )
     ( minSpacing                 "nplus_ndnw"	"DNW"		1.65  'ref  "DNW.S.3" )
    ) ;spacings

    orderedSpacings(
     ( minOverlapDistance         "NW"	"DNW"		0.4  'ref  "DNW.O.1" )
    ) ;orderedSpacings

    spacings(
     ( minWidth                   "OD"	0.05  'ref  "OD.W.1" )
     ( minLength                  "gate_core_nvcar"	0.1  'ref  "OD.W.2" )
     ( maxLength                  "gate_core_nesd"	3.0  'ref  "OD.W.3, OD.W.4" )
     ( minLength                  "gate_od2"	0.27  'ref  "OD.W.5" )
     ( minDiagonalWidth           "OD"	0.4  'ref  "OD.W.6" )
     ( minSpacing                 "od_od2"	0.15  'ref  "OD.S.2" )
     ( minDiagonalSpacing         "OD"	0.17  'ref  "OD.S.4" )
     ( minSameNetSpacing          "OD"	0.13  'ref  "OD.S.5" )
     ( minSameNetSpacing          "od_po"	0.21  'ref  "OD.S.6" )
     ( minDiagonalEdgeLength      "OD"	0.3  'ref  "OD.L.2" )
     ( minArea                    "OD"	0.018  'ref  "OD.A.1" )
     ( minAreaEdgeLength          "OD"	'exceptMinSize  (0.1 0.3)	'exceptEdgeLength  0.13	0.035  'ref  "OD.A.2" )
     ( minHoleArea                "OD"	0.0288  'ref  "OD.A.4" )
     ( minArea                    "NW"	0.4  'ref  "NW.A.1" )
     ( minHoleArea                "NW"	0.4  'ref  "NW.A.6" )
    ) ;spacings

    orderedSpacings(
     ( minExtensionDistance       "RPO"	"NP"		0.4  'ref  "NWROD.O.1" )
     ( maxExtension               "RPO"	"NP"		0.4  'ref  "NWROD.O.1" )
    ) ;orderedSpacings

    spacings(
     ( minWidth                   "NT_N"	0.24  'ref  "NT_N.W.1" )
     ( minSpacing                 "NT_N"	0.24  'ref  "NT_N.S.1" )
     ( minSpacing                 "od_nnt_n"	"NT_N"		0.38  'ref  "NT_N.S.2" )
     ( minSpacing                 "NW"	"NT_N"		0.8  'ref  "NT_N.S.3" )
     ( minArea                    "NT_N"	0.4  'ref  "NT_N.A.1" )
     ( minHoleArea                "NT_N"	0.4  'ref  "NT_N.A.2" )
     ( minWidth                   "OD_15"	0.32  'ref  "OD2.W.1" )
     ( minWidth                   "OD_18"	0.32  'ref  "OD2.W.1" )
     ( minWidth                   "OD_25"	0.32  'ref  "OD2.W.1" )
     ( minSpacing                 "OD_15"	0.32  'ref  "OD2.S.1" )
     ( minSpacing                 "OD_18"	0.32  'ref  "OD2.S.1" )
     ( minSpacing                 "OD_25"	0.32  'ref  "OD2.S.1" )
    ) ;spacings

    orderedSpacings(
     ( minOverlapDistance         "NW"	"OD_15"		0.13  'ref  "OD2.O.1" )
     ( minOverlapDistance         "NW"	"OD_18"		0.13  'ref  "OD2.O.1" )
     ( minOverlapDistance         "NW"	"OD_25"		0.13  'ref  "OD2.O.1" )
     ( minOverlapDistance         "OD_15"	"NW"		0.13  'ref  "OD2.O.1" )
     ( minOverlapDistance         "OD_18"	"NW"		0.13  'ref  "OD2.O.1" )
     ( minOverlapDistance         "OD_25"	"NW"		0.13  'ref  "OD2.O.1" )
    ) ;orderedSpacings

    spacings(
     ( minArea                    "OD_15"	0.4  'ref  "OD2.A.1" )
     ( minArea                    "OD_18"	0.4  'ref  "OD2.A.1" )
     ( minArea                    "OD_25"	0.4  'ref  "OD2.A.1" )
     ( minHoleArea                "OD_15"	0.4  'ref  "OD2.A.2" )
     ( minHoleArea                "OD_18"	0.4  'ref  "OD2.A.2" )
     ( minHoleArea                "OD_25"	0.4  'ref  "OD2.A.2" )
     ( minSpacing                 "OD"	"OD_15"		0.13  'ref  "OD2.S.2" )
     ( minSpacing                 "OD"	"OD_18"		0.13  'ref  "OD2.S.2" )
     ( minSpacing                 "OD"	"OD_25"		0.13  'ref  "OD2.S.2" )
     ( minSpacing                 "PO"	"OD_15"		0.24  'ref  "OD2.S.3" )
     ( minSpacing                 "PO"	"OD_18"		0.24  'ref  "OD2.S.3" )
     ( minSpacing                 "PO"	"OD_25"		0.24  'ref  "OD2.S.3" )
     ( minSpacing                 "NW"	"OD_15"		0.24  'ref  "OD2.S.4" )
     ( minSpacing                 "NW"	"OD_18"		0.24  'ref  "OD2.S.4" )
     ( minSpacing                 "NW"	"OD_25"		0.24  'ref  "OD2.S.4" )
     ( maxWidth                   "PO"	2.0  'ref  "PO.W.7" )
     ( minSpacing                 "po_od2"	0.18  'ref  "PO.S.10" )
     ( minSpacing                 "OD"	"PO"		0.025  'ref  "PO.S.12" )
     ( minLength                  "PO"	0.26  'ref  "PO.L.2" )
     ( minArea                    "PO"	0.0115  'ref  "PO.A.1" )
     ( diagonalShapesAllowed      "PO"	nil  'ref  "PO.R.1" )
     ( minWidth                   "SR_ESD"	0.21  'ref  "SR_ESD.W.1" )
     ( minSpacing                 "SR_ESD"	0.21  'ref  "SR_ESD.S.1" )
     ( minWidth                   "VTH_N"	0.16  'ref  "VTH_N.W.1" )
     ( minWidth                   "VTH_P"	0.16  'ref  "VTH_P.W.1" )
     ( minWidth                   "VTL_N"	0.16  'ref  "VTL_N.W.1" )
     ( minWidth                   "VTL_P"	0.16  'ref  "VTL_P.W.1" )
     ( minWidth                   "VTUL_N"	0.16  'ref  "VTUL_N.W.1" )
     ( minWidth                   "VTUL_P"	0.16  'ref  "VTUL_P.W.1" )
     ( minWidth                   "eVTL_N"	0.16  'ref  "eVTL_N.W.1" )
     ( minWidth                   "eVTL_P"	0.16  'ref  "eVTL_P.W.1" )
     ( minWidth                   "UHVT_N"	0.16  'ref  "UHVT_N.W.1" )
     ( minWidth                   "UHVT_P"	0.16  'ref  "UHVT_P.W.1" )
     ( minWidth                   "EHVT_N"	0.16  'ref  "EHVT_N.W.1" )
     ( minWidth                   "EHVT_P"	0.16  'ref  "EHVT_P.W.1" )
     ( minSpacing                 "VTH_N"	0.16  'ref  "VTH_N.S.1" )
     ( minSpacing                 "VTH_P"	0.16  'ref  "VTH_P.S.1" )
     ( minSpacing                 "VTL_N"	0.16  'ref  "VTL_N.S.1" )
     ( minSpacing                 "VTL_P"	0.16  'ref  "VTL_P.S.1" )
     ( minSpacing                 "VTUL_N"	0.16  'ref  "VTUL_N.S.1" )
     ( minSpacing                 "VTUL_P"	0.16  'ref  "VTUL_P.S.1" )
     ( minSpacing                 "eVTL_N"	0.16  'ref  "eVTL_N.S.1" )
     ( minSpacing                 "eVTL_P"	0.16  'ref  "eVTL_P.S.1" )
     ( minSpacing                 "UHVT_N"	0.16  'ref  "UHVT_N.S.1" )
     ( minSpacing                 "UHVT_P"	0.16  'ref  "UHVT_P.S.1" )
     ( minSpacing                 "EHVT_N"	0.16  'ref  "EHVT_N.S.1" )
     ( minSpacing                 "EHVT_P"	0.16  'ref  "EHVT_P.S.1" )
     ( minSpacing                 "VTH_N"	"rnodwo"		0.15  'ref  "VTH_N.S.4" )
     ( minSpacing                 "VTH_N"	"rpodwo"		0.15  'ref  "VTH_N.S.4" )
     ( minSpacing                 "VTH_P"	"rnodwo"		0.15  'ref  "VTH_P.S.4" )
     ( minSpacing                 "VTH_P"	"rpodwo"		0.15  'ref  "VTH_P.S.4" )
     ( minSpacing                 "VTL_N"	"rnodwo"		0.15  'ref  "VTL_N.S.4" )
     ( minSpacing                 "VTL_N"	"rpodwo"		0.15  'ref  "VTL_N.S.4" )
     ( minSpacing                 "VTL_P"	"rnodwo"		0.15  'ref  "VTL_P.S.4" )
     ( minSpacing                 "VTL_P"	"rpodwo"		0.15  'ref  "VTL_P.S.4" )
     ( minSpacing                 "VTUL_N"	"rnodwo"		0.15  'ref  "VTUL_N.S.4" )
     ( minSpacing                 "VTUL_N"	"rpodwo"		0.15  'ref  "VTUL_N.S.4" )
     ( minSpacing                 "VTUL_P"	"rnodwo"		0.15  'ref  "VTUL_P.S.4" )
     ( minSpacing                 "VTUL_P"	"rpodwo"		0.15  'ref  "VTUL_P.S.4" )
     ( minSpacing                 "VTH_N"	"rnpolywo"		0.15  'ref  "VTH_N.S.4" )
     ( minSpacing                 "VTH_N"	"rppolywo"		0.15  'ref  "VTH_N.S.4" )
     ( minSpacing                 "VTH_P"	"rnpolywo"		0.15  'ref  "VTH_P.S.4" )
     ( minSpacing                 "VTH_P"	"rppolywo"		0.15  'ref  "VTH_P.S.4" )
     ( minSpacing                 "VTL_N"	"rnpolywo"		0.15  'ref  "VTL_N.S.4" )
     ( minSpacing                 "VTL_N"	"rppolywo"		0.15  'ref  "VTL_N.S.4" )
     ( minSpacing                 "VTL_P"	"rnpolywo"		0.15  'ref  "VTL_P.S.4" )
     ( minSpacing                 "VTL_P"	"rppolywo"		0.15  'ref  "VTL_P.S.4" )
     ( minSpacing                 "VTUL_N"	"rnpolywo"		0.15  'ref  "VTUL_N.S.4" )
     ( minSpacing                 "VTUL_N"	"rppolywo"		0.15  'ref  "VTUL_N.S.4" )
     ( minSpacing                 "VTUL_P"	"rnpolywo"		0.15  'ref  "VTUL_P.S.4" )
     ( minSpacing                 "VTUL_P"	"rppolywo"		0.15  'ref  "VTUL_P.S.4" )
     ( minSpacing                 "eVTL_N"	"rnpolywo"		0.15  'ref  "eVTL_N.S.4" )
     ( minSpacing                 "eVTL_N"	"rppolywo"		0.15  'ref  "eVTL_N.S.4" )
     ( minSpacing                 "eVTL_P"	"rnpolywo"		0.15  'ref  "eVTL_P.S.4" )
     ( minSpacing                 "eVTL_P"	"rppolywo"		0.15  'ref  "eVTL_P.S.4" )
     ( minSpacing                 "UHVT_N"	"rnpolywo"		0.15  'ref  "UHVT_N.S.4" )
     ( minSpacing                 "UHVT_N"	"rppolywo"		0.15  'ref  "UHVT_N.S.4" )
     ( minSpacing                 "UHVT_P"	"rnpolywo"		0.15  'ref  "UHVT_P.S.4" )
     ( minSpacing                 "UHVT_P"	"rppolywo"		0.15  'ref  "UHVT_P.S.4" )
     ( minSpacing                 "EHVT_N"	"rnpolywo"		0.15  'ref  "EHVT_N.S.4" )
     ( minSpacing                 "EHVT_N"	"rppolywo"		0.15  'ref  "EHVT_N.S.4" )
     ( minSpacing                 "EHVT_P"	"rnpolywo"		0.15  'ref  "EHVT_P.S.4" )
     ( minSpacing                 "EHVT_P"	"rppolywo"		0.15  'ref  "EHVT_P.S.4" )
     ( minDiagonalEdgeLength      "VTH_N"	0.5  'ref  "VTH_N.L.1" )
     ( minDiagonalEdgeLength      "VTH_P"	0.5  'ref  "VTH_P.L.1" )
     ( minDiagonalEdgeLength      "VTL_N"	0.5  'ref  "VTL_N.L.1" )
     ( minDiagonalEdgeLength      "VTL_P"	0.5  'ref  "VTL_P.L.1" )
     ( minDiagonalEdgeLength      "VTUL_N"	0.5  'ref  "VTUL_N.L.1" )
     ( minDiagonalEdgeLength      "VTUL_P"	0.5  'ref  "VTUL_P.L.1" )
     ( minDiagonalEdgeLength      "eVTL_N"	0.5  'ref  "eVTL_N.L.1" )
     ( minDiagonalEdgeLength      "eVTL_P"	0.5  'ref  "eVTL_P.L.1" )
     ( minDiagonalEdgeLength      "UHVT_N"	0.5  'ref  "UHVT_N.L.1" )
     ( minDiagonalEdgeLength      "UHVT_P"	0.5  'ref  "UHVT_P.L.1" )
     ( minDiagonalEdgeLength      "EHVT_N"	0.5  'ref  "EHVT_N.L.1" )
     ( minDiagonalEdgeLength      "EHVT_P"	0.5  'ref  "EHVT_P.L.1" )
     ( minArea                    "VTH_N_not_DMY_SCH"	0.108  'ref  "VTH_N.A.1" )
     ( minArea                    "VTH_P_not_DMY_SCH"	0.108  'ref  "VTH_P.A.1" )
     ( minArea                    "VTL_N_not_DMY_SCH"	0.108  'ref  "VTL_N.A.1" )
     ( minArea                    "VTL_P_not_DMY_SCH"	0.108  'ref  "VTL_P.A.1" )
     ( minArea                    "VTUL_N_not_DMY_SCH"	0.108  'ref  "VTUL_N.A.1" )
     ( minArea                    "VTUL_P_not_DMY_SCH"	0.108  'ref  "VTUL_P.A.1" )
     ( minArea                    "eVTL_N_not_DMY_SCH"	0.108  'ref  "eVTL_N.A.1" )
     ( minArea                    "eVTL_P_not_DMY_SCH"	0.108  'ref  "eVTL_P.A.1" )
     ( minArea                    "UHVT_N_not_DMY_SCH"	0.108  'ref  "UHVT_N.A.1" )
     ( minArea                    "UHVT_P_not_DMY_SCH"	0.108  'ref  "UHVT_P.A.1" )
     ( minArea                    "EHVT_N_not_DMY_SCH"	0.108  'ref  "EHVT_N.A.1" )
     ( minArea                    "EHVT_P_not_DMY_SCH"	0.108  'ref  "EHVT_P.A.1" )
     ( minHoleArea                "VTH_N_not_DMY_SCH"	0.108  'ref  "VTH_N.A.2" )
     ( minHoleArea                "VTH_P_not_DMY_SCH"	0.108  'ref  "VTH_P.A.2" )
     ( minHoleArea                "VTL_N_not_DMY_SCH"	0.108  'ref  "VTL_N.A.2" )
     ( minHoleArea                "VTL_P_not_DMY_SCH"	0.108  'ref  "VTL_P.A.2" )
     ( minHoleArea                "VTUL_N_not_DMY_SCH"	0.108  'ref  "VTUL_N.A.2" )
     ( minHoleArea                "VTUL_P_not_DMY_SCH"	0.108  'ref  "VTUL_P.A.2" )
     ( minHoleArea                "eVTL_N_not_DMY_SCH"	0.108  'ref  "eVTL_N.A.2" )
     ( minHoleArea                "eVTL_P_not_DMY_SCH"	0.108  'ref  "eVTL_P.A.2" )
     ( minHoleArea                "UHVT_N_not_DMY_SCH"	0.108  'ref  "UHVT_N.A.2" )
     ( minHoleArea                "UHVT_P_not_DMY_SCH"	0.108  'ref  "UHVT_P.A.2" )
     ( minHoleArea                "EHVT_N_not_DMY_SCH"	0.108  'ref  "EHVT_N.A.2" )
     ( minHoleArea                "EHVT_P_not_DMY_SCH"	0.108  'ref  "EHVT_P.A.2" )
     ( minArea                    "VTH_N_and_DMY_SCH"	0.0952  'ref  "VTH_N.A.1.1" )
     ( minArea                    "VTH_P_and_DMY_SCH"	0.0952  'ref  "VTH_P.A.1.1" )
     ( minArea                    "VTL_N_and_DMY_SCH"	0.0952  'ref  "VTL_N.A.1.1" )
     ( minArea                    "VTL_P_and_DMY_SCH"	0.0952  'ref  "VTL_P.A.1.1" )
     ( minArea                    "VTUL_N_and_DMY_SCH"	0.0952  'ref  "VTUL_N.A.1.1" )
     ( minArea                    "VTUL_P_and_DMY_SCH"	0.0952  'ref  "VTUL_P.A.1.1" )
     ( minArea                    "eVTL_N_and_DMY_SCH"	0.0952  'ref  "eVTL_N.A.1.1" )
     ( minArea                    "eVTL_P_and_DMY_SCH"	0.0952  'ref  "eVTL_P.A.1.1" )
     ( minArea                    "UHVT_N_and_DMY_SCH"	0.0952  'ref  "UHVT_N.A.1.1" )
     ( minArea                    "UHVT_P_and_DMY_SCH"	0.0952  'ref  "UHVT_P.A.1.1" )
     ( minArea                    "EHVT_N_and_DMY_SCH"	0.0952  'ref  "EHVT_N.A.1.1" )
     ( minArea                    "EHVT_P_and_DMY_SCH"	0.0952  'ref  "EHVT_P.A.1.1" )
     ( minHoleArea                "VTH_N_and_DMY_SCH"	0.0952  'ref  "VTH_N.A.2.1" )
     ( minHoleArea                "VTH_P_and_DMY_SCH"	0.0952  'ref  "VTH_P.A.2.1" )
     ( minHoleArea                "VTL_N_and_DMY_SCH"	0.0952  'ref  "VTL_N.A.2.1" )
     ( minHoleArea                "VTL_P_and_DMY_SCH"	0.0952  'ref  "VTL_P.A.2.1" )
     ( minHoleArea                "VTUL_N_and_DMY_SCH"	0.0952  'ref  "VTUL_N.A.2.1" )
     ( minHoleArea                "VTUL_P_and_DMY_SCH"	0.0952  'ref  "VTUL_P.A.2.1" )
     ( minHoleArea                "eVTL_N_and_DMY_SCH"	0.0952  'ref  "eVTL_N.A.2.1" )
     ( minHoleArea                "eVTL_P_and_DMY_SCH"	0.0952  'ref  "eVTL_P.A.2.1" )
     ( minWidth                   "PP"	0.16  'ref  "PP.W.1" )
     ( minSpacing                 "PP"	0.16  'ref  "PP.S.1" )
     ( minDiagonalEdgeLength      "PP"	0.5  'ref  "PP.L.1" )
     ( minArea                    "PP"	0.11  'ref  "PP.A.1" )
     ( minHoleArea                "PP"	0.108  'ref  "PP.A.3" )
     ( minSpacing                 "PP"	"rnodwo"		0.1  'ref  "PP.S.8" )
     ( minSpacing                 "PP"	"rnpolywo"		0.1  'ref  "PP.S.8" )
     ( minWidth                   "NP"	0.16  'ref  "NP.W.1" )
     ( minSpacing                 "NP"	0.16  'ref  "NP.S.1" )
     ( minDiagonalEdgeLength      "NP"	0.5  'ref  "NP.L.1" )
     ( minArea                    "NP"	0.11  'ref  "NP.A.1" )
     ( minHoleArea                "NP"	0.108  'ref  "NP.A.3" )
     ( minSpacing                 "NP"	"PP"		0.02  'ref  "NP.S.5, PP.S.5" )
     ( minSpacing                 "NP"	"rpodwo"		0.1  'ref  "NP.S.8" )
     ( minSpacing                 "NP"	"rppolywo"		0.1  'ref  "NP.S.8" )
     ( minWidth                   "RPO"	0.32  'ref  "RPO.W.1" )
     ( minSpacing                 "RPO"	0.32  'ref  "RPO.S.1" )
     ( minSpacing                 "OD"	"RPO"		0.22  'ref  "RPO.S.2" )
     ( minSpacing                 "CO"	"RPO"		0.14  'ref  "RPO.S.3" )
     ( minSpacing                 "RPO"	"GATE"		0.38  'ref  "RPO.S.4" )
     ( minSpacing                 "PO"	"RPO"		0.3  'ref  "RPO.S.5" )
     ( minArea                    "RPO"	0.9  'ref  "RPO.A.1" )
     ( minHoleArea                "RPO"	0.9  'ref  "RPO.A.2" )
     ( minWidth                   "gate_core_var_nrfdmy"	0.2  'ref  "VAR.W.2" )
     ( maxWidth                   "gate_core_var_nrfdmy"	1.0  'ref  "VAR.W.2" )
     ( minWidth                   "gate_core_var_rfdmy"	0.2  'ref  "VAR.W.2.1" )
     ( maxWidth                   "gate_core_var_rfdmy"	3.2  'ref  "VAR.W.2.1" )
     ( minWidth                   "gate_core_od2var_nrfdmy"	0.2  'ref  "VAR.W.3" )
     ( maxWidth                   "gate_core_od2var_nrfdmy"	2.0  'ref  "VAR.W.3" )
     ( minWidth                   "gate_core_od2var_rfdmy"	0.2  'ref  "VAR.W.3.1" )
     ( maxWidth                   "gate_core_od2var_rfdmy"	3.2  'ref  "VAR.W.3.1" )
     ( minLength                  "gate_var"	0.4  'ref  "VAR.W.4" )
     ( minSpacing                 "VAR"	"ACTIVE"		0.13  'ref  "VAR.S.1" )
     ( minWidth                   "CO"	0.04  'ref  "CO.W.1" )
     ( maxWidth                   "CO"	0.04  'ref  "CO.W.1" )
     ( minSpacing                 "diffCont"	"GATE"		0.03  'ref  "CO.S.4" )
     ( minSpacing                 "diffCont"	"gate_core"		0.04  'ref  "CO.S.5" )
     ( minSpacing                 "polyCont"	"OD"		0.035  'ref  "CO.S.6" )
     ( minSpacing                 "diffCont"	"hvGate"		0.07  'ref  "CO.S.7" )
     ( diagonalShapesAllowed      "CO"	nil  'ref  "CO.R.2" )
     ( minWidth                   "M1"	0.05  'ref  "M1.W.1" )
     ( minDiagonalWidth           "M1"	0.17  'ref  "M1.W.2" )
     ( maxWidth                   "M1"	4.5  'ref  "M1.W.3" )
     ( minDiagonalEdgeLength      "M1"	0.5  'ref  "M1.L.1" )
     ( minDiagonalSpacing         "M1"	0.17  'ref  "M1.S.9" )
     ( minArea                    "M1"	0.0115  'ref  "M1.A.1" )
     ( minAreaEdgeLength          "M1"	'exceptMinSize  (0.05 0.2)	'exceptEdgeLength  (0.13 0.2)	0.014  'ref  "M1.A.2" )
     ( minAreaEdgeLength          "M1"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.038  'ref  "M1.A.3" )
     ( minHoleArea                "M1"	0.2  'ref  "M1.A.4" )
     ( maxNumMinEdges             "M1"	(0.05 1)  'ref  "G.4" )
     ( minFillToShapeSpacing      "M1"	0.2  'ref  "DM1.S.2" )
     ( minWidth                   "M2"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M2"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M2"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M2"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M2"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M2"	0.014  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M2"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M2"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M3"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M3"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M3"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M3"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M3"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M3"	0.017  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M3"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M3"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M4"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M4"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M4"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M4"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M4"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M4"	0.017  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M4"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M4"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M5"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M5"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M5"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M5"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M5"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M5"	0.017  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M5"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M5"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M6"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M6"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M6"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M6"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M6"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M6"	0.017  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M6"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M6"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M7"	0.05  'ref  "Mx.W.1" )
     ( minDiagonalWidth           "M7"	0.4  'ref  "Mx.W.2" )
     ( maxWidth                   "M7"	4.5  'ref  "Mx.W.3" )
     ( minDiagonalSpacing         "M7"	0.4  'ref  "Mx.S.9" )
     ( minDiagonalEdgeLength      "M7"	0.5  'ref  "Mx.L.1" )
     ( minArea                    "M7"	0.017  'ref  "Mx.A.1, Mx.A.2" )
     ( minAreaEdgeLength          "M7"	'exceptMinSize  (0.05 0.13)	'exceptEdgeLength  0.13	0.044  'ref  "Mx.A.3" )
     ( minHoleArea                "M7"	0.2  'ref  "Mx.A.4" )
     ( minWidth                   "M8"	0.4  'ref  "Mz.W.1" )
     ( maxWidth                   "M8"	12.0  'ref  "Mz.W.2" )
     ( minArea                    "M8"	0.565  'ref  "Mz.A.1" )
     ( minHoleArea                "M8"	0.565  'ref  "Mz.A.2" )
     ( minWidth                   "M9"	0.4  'ref  "Mz.W.1" )
     ( maxWidth                   "M9"	12.0  'ref  "Mz.W.2" )
     ( minArea                    "M9"	0.565  'ref  "Mz.A.1" )
     ( minHoleArea                "M9"	0.565  'ref  "Mz.A.2" )
     ( minWidth                   "VIA1"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA1"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA1"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA2"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA2"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA2"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA3"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA3"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA3"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA4"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA4"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA4"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA5"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA5"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA5"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA6"	0.05  'ref  "VIAx.W.1" )
     ( maxWidth                   "VIA6"	0.13  'ref  "VIAx.L.2" )
     ( diagonalShapesAllowed      "VIA6"	nil  'ref  "VIAx.R.0" )
     ( minWidth                   "VIA7"	0.36  'ref  "VIAz.W.1" )
     ( maxWidth                   "VIA7"	0.36  'ref  "VIAz.W.1" )
     ( minSpacing                 "VIA7"	0.34  'ref  "VIAz.S.1" )
     ( viaSpacing                 "VIA7"	(3 0.56 0.54)  'ref  "VIAz.S.2" )
     ( diagonalShapesAllowed      "VIA7"	nil  'ref  "VIAz.R.1" )
     ( minWidth                   "VIA8"	0.36  'ref  "VIAz.W.1" )
     ( maxWidth                   "VIA8"	0.36  'ref  "VIAz.W.1" )
     ( minSpacing                 "VIA8"	0.34  'ref  "VIAz.S.1" )
     ( viaSpacing                 "VIA8"	(3 0.56 0.54)  'ref  "VIAz.S.2" )
     ( diagonalShapesAllowed      "VIA8"	nil  'ref  "VIAz.R.1" )
     ( allowedWidthRanges         "RV"	(2 3)  'ref  "RV.W.1" )
     ( minSpacing                 "RV"	2.0  'ref  "RV.S.1" )
     ( diagonalShapesAllowed      "RV"	nil  'ref  "RV.R.1" )
     ( minWidth                   "AP"	2.0  'ref  "AP.W.1" )
     ( maxWidth                   "AP"	35.0  'ref  "AP.W.2" )
     ( minSpacing                 "AP"	2.0  'ref  "AP.S.1" )
    ) ;spacings

    orderedSpacings(
     ( minOppExtension            "DNW"	"NPLUS_ACTIVE"		(0.465 0.465)  'ref  "DNW.EN.1" )
     ( minOppExtension            "NW"	"NW_STRAP"		(0.065 0.065)  'ref  "NW.EN.1" )
     ( minOppExtension            "NW"	"PPLUS_ACTIVE"		(0.065 0.105)  'ref  "NW.EN.2, NW.EN.3" )
     ( minOppExtension            "nwrsti_np"	"OD"		(0.4 0.4)  'ref  "NWRSTI.EN.1" )
     ( minOppExtension            "nwrsti_od"	"CO"		(0.3 0.3)  'ref  "NWRSTI.EN.2" )
     ( minOppExtension            "NT_N"	"ndiff"		(0.16 0.16)  'ref  "NT_N.EN.1" )
     ( minExtensionDistance       "PO"	"ndiff_na"		0.24  'ref  "NT_N.EX.1" )
     ( minExtensionDistance       "NW"	"OD_15"		0.24  'coincidentAllowed  'ref  "OD2.EX.1" )
     ( minExtensionDistance       "NW"	"OD_18"		0.24  'coincidentAllowed  'ref  "OD2.EX.1" )
     ( minExtensionDistance       "NW"	"OD_25"		0.24  'coincidentAllowed  'ref  "OD2.EX.1" )
     ( minExtensionDistance       "OD_15"	"NW"		0.24  'coincidentAllowed  'ref  "OD2.EX.2" )
     ( minExtensionDistance       "OD_18"	"NW"		0.24  'coincidentAllowed  'ref  "OD2.EX.2" )
     ( minExtensionDistance       "OD_25"	"NW"		0.24  'coincidentAllowed  'ref  "OD2.EX.2" )
     ( minOppExtension            "OD_15"	"ACTIVE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minOppExtension            "OD_18"	"ACTIVE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minOppExtension            "OD_25"	"ACTIVE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minOppExtension            "OD_15"	"GATE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minOppExtension            "OD_18"	"GATE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minOppExtension            "OD_25"	"GATE"		(0.13 0.13)  'ref  "OD2.EX.3" )
     ( minExtensionDistance       "PO"	"OD"		0.08  'ref  "PO.EX.1" )
     ( minExtensionDistance       "OD"	"PO"		0.075  'ref  "PO.EX.2" )
     ( minExtensionDistance       "OD"	"po_sdi_sr_esd"		0.095  'ref  "PO.EX.4" )
     ( minOppExtension            "PP"	"PO"		(0.065 0.065)  'ref  "PP.EN.1" )
     ( minExtensionDistance       "PP"	"PPLUS_ACTIVE"		0.065  'ref  "PP.EX.1" )
     ( minExtensionDistance       "PP"	"PW_STRAP"		0.02  'ref  "PP.EX.2" )
     ( minOppExtension            "NP"	"PO"		(0.065 0.065)  'ref  "NP.EN.1" )
     ( minExtensionDistance       "NP"	"NPLUS_ACTIVE"		0.065  'ref  "NP.EX.1" )
     ( minExtensionDistance       "NP"	"NW_STRAP"		0.02  'ref  "NP.EX.2" )
     ( minExtensionDistance       "RPO"	"OD"		0.22  'ref  "RPO.EX.1" )
     ( minExtensionDistance       "RPO"	"PO"		0.22  'ref  "RPO.EX.1" )
     ( minExtensionDistance       "OD"	"RPO"		0.22  'ref  "RPO.EX.4" )
     ( minOppExtension            "VAR"	"OD"		(0.16 0.16)  'ref  "VAR.EN.1" )
     ( minTouchingDirEnclosure    "VTH_N"	"GATE"	"OD"		0.115  'ref  "VTH_N.EN.1" )
     ( minTouchingDirEnclosure    "VTH_N"	"GATE"	"PO"		0.065  'ref  "VTH_N.EN.2" )
     ( minTouchingDirEnclosure    "VTH_P"	"GATE"	"OD"		0.115  'ref  "VTH_P.EN.1" )
     ( minTouchingDirEnclosure    "VTH_P"	"GATE"	"PO"		0.065  'ref  "VTH_P.EN.2" )
     ( minTouchingDirEnclosure    "VTL_N"	"GATE"	"OD"		0.115  'ref  "VTL_N.EN.1" )
     ( minTouchingDirEnclosure    "VTL_N"	"GATE"	"PO"		0.065  'ref  "VTL_N.EN.2" )
     ( minTouchingDirEnclosure    "VTL_P"	"GATE"	"OD"		0.115  'ref  "VTL_P.EN.1" )
     ( minTouchingDirEnclosure    "VTL_P"	"GATE"	"PO"		0.065  'ref  "VTL_P.EN.2" )
     ( minTouchingDirEnclosure    "VTUL_N"	"GATE"	"OD"		0.115  'ref  "VTUL_N.EN.1" )
     ( minTouchingDirEnclosure    "VTUL_N"	"GATE"	"PO"		0.065  'ref  "VTUL_N.EN.2" )
     ( minTouchingDirEnclosure    "VTUL_P"	"GATE"	"OD"		0.115  'ref  "VTUL_P.EN.1" )
     ( minTouchingDirEnclosure    "VTUL_P"	"GATE"	"PO"		0.065  'ref  "VTUL_P.EN.2" )
     ( minTouchingDirEnclosure    "eVTL_N"	"GATE"	"OD"		0.115  'ref  "eVTL_N.EN.1" )
     ( minTouchingDirEnclosure    "eVTL_N"	"GATE"	"PO"		0.065  'ref  "eVTL_N.EN.2" )
     ( minTouchingDirEnclosure    "eVTL_P"	"GATE"	"OD"		0.115  'ref  "eVTL_P.EN.1" )
     ( minTouchingDirEnclosure    "eVTL_P"	"GATE"	"PO"		0.065  'ref  "eVTL_P.EN.2" )
     ( minTouchingDirEnclosure    "UHVT_N"	"GATE"	"OD"		0.115  'ref  "UHVT_N.EN.1" )
     ( minTouchingDirEnclosure    "UHVT_N"	"GATE"	"PO"		0.065  'ref  "UHVT_N.EN.2" )
     ( minTouchingDirEnclosure    "UHVT_P"	"GATE"	"OD"		0.115  'ref  "UHVT_P.EN.1" )
     ( minTouchingDirEnclosure    "UHVT_P"	"GATE"	"PO"		0.065  'ref  "UHVT_P.EN.2" )
     ( minTouchingDirEnclosure    "EHVT_N"	"GATE"	"OD"		0.115  'ref  "EHVT_N.EN.1" )
     ( minTouchingDirEnclosure    "EHVT_N"	"GATE"	"PO"		0.065  'ref  "EHVT_N.EN.2" )
     ( minTouchingDirEnclosure    "EHVT_P"	"GATE"	"OD"		0.115  'ref  "EHVT_P.EN.1" )
     ( minTouchingDirEnclosure    "EHVT_P"	"GATE"	"PO"		0.065  'ref  "EHVT_P.EN.2" )
     ( minOppExtension            "M9"	"RV"		(0.5 0.5)  'ref  "RV.EN.1" )
     ( minOppExtension            "AP"	"RV"		(0.5 0.5)  'ref  "AP.EN.1" )
    ) ;orderedSpacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                "OD"	
	(( "width" nil nil )	 )
         (
            0.0       0.07      
            0.091     0.08      
         )  'ref  "OD.S.1, OD.S.3"
     )
     ( minSpacing                "PO"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.08 )
	(
	   (0.0       	0.0       )	0.08      
	   (0.03      	0.091     )	0.1       
	   (0.091     	0.091     )	0.12      
	)  'ref  "PO.S.3, PO.S.17, PO.S.18"
     )
     ( minSpacing                "M1"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.101     	0.221     )	0.06      
	   (0.101     	0.471     )	0.06      
	   (0.101     	0.631     )	0.06      
	   (0.101     	1.501     )	0.06      
	   (0.181     	0.221     )	0.1       
	   (0.181     	0.471     )	0.1       
	   (0.181     	0.631     )	0.1       
	   (0.181     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "M1.S.1, M1.S.2, M1.S.3, M1.S.4, M1.S.5, M1.S.6"
     )
     ( minSpacing                "M2"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M3"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M4"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M5"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M6"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M7"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.05 )
	(
	   (0.0       	0.0       )	0.05      
	   (0.091     	0.221     )	0.06      
	   (0.091     	0.471     )	0.06      
	   (0.091     	0.631     )	0.06      
	   (0.091     	1.501     )	0.06      
	   (0.131     	0.221     )	0.08      
	   (0.131     	0.471     )	0.08      
	   (0.131     	0.631     )	0.08      
	   (0.131     	1.501     )	0.08      
	   (0.161     	0.221     )	0.1       
	   (0.161     	0.471     )	0.1       
	   (0.161     	0.631     )	0.1       
	   (0.161     	1.501     )	0.1       
	   (0.471     	0.221     )	0.1       
	   (0.471     	0.471     )	0.13      
	   (0.471     	0.631     )	0.13      
	   (0.471     	1.501     )	0.13      
	   (0.631     	0.221     )	0.1       
	   (0.631     	0.471     )	0.13      
	   (0.631     	0.631     )	0.15      
	   (0.631     	1.501     )	0.15      
	   (1.501     	0.221     )	0.1       
	   (1.501     	0.471     )	0.13      
	   (1.501     	0.631     )	0.15      
	   (1.501     	1.501     )	0.5       
	)  'ref  "Mx.S.1, Mx.S.2, Mx.S.3, Mx.S.4, Mx.S.5, Mx.S.6, Mx.S.13"
     )
     ( minSpacing                "M8"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.4 )
	(
	   (0.0       	0.0       )	0.4       
	   (1.501     	1.501     )	0.5       
	   (1.501     	4.501     )	0.5       
	   (4.501     	1.501     )	0.5       
	   (4.501     	4.501     )	1.5       
	)  'ref  "Mz.S.1, Mz.S.2, Mz.S.3"
     )
     ( minSpacing                "M9"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	0.4 )
	(
	   (0.0       	0.0       )	0.4       
	   (1.501     	1.501     )	0.5       
	   (1.501     	4.501     )	0.5       
	   (4.501     	1.501     )	0.5       
	   (4.501     	4.501     )	1.5       
	)  'ref  "Mz.S.1, Mz.S.2, Mz.S.3"
     )
     ( minNumCut                 "VIA1"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA2"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA3"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA4"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA5"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA6"	
	(( "width" nil nil )	'distanceWithin  0.101	 )
         (
            0.0       1         
            0.181     2         
            0.441     4         
         )  'ref  "VIAx.R.2, VIAx.R.3"
     )
     ( minNumCut                 "VIA7"	
	(( "width" nil nil )	'distanceWithin  1.701	 )
         (
            0.0       1         
            1.801     2         
         )  'ref  "VIAz.R.2"
     )
     ( minNumCut                 "VIA8"	
	(( "width" nil nil )	'distanceWithin  1.701	 )
         (
            0.0       1         
            1.801     2         
         )  'ref  "VIAz.R.2"
     )
     ( minCutClassSpacing        "VIA1"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA1"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA2"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA2"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA3"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA3"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA4"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA4"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA5"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA5"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA6"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.04	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.07      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.07      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.075     
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.075     
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.07      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.07      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.075     
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.075     
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.075     
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.075     
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.075     
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.075     
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
     ( minCutClassSpacing        "VIA6"	
	(( "cutClass"   ("square" ("rect" 'longEdge) ("rect" 'shortEdge))  nil 
	   "cutClass"   nil  nil  )	'paraOverlap  -0.039	 )
	(
	   (("square" 'shortEdge)     ("square" 'shortEdge)    )	0.08      
	   (("square" 'shortEdge)     ("square" 'longEdge)     )	0.08      
	   (("square" 'shortEdge)     ("rect" 'longEdge)       )	0.08      
	   (("square" 'shortEdge)     ("rect" 'shortEdge)      )	0.08      
	   (("square" 'longEdge)      ("square" 'shortEdge)    )	0.08      
	   (("square" 'longEdge)      ("square" 'longEdge)     )	0.08      
	   (("square" 'longEdge)      ("rect" 'longEdge)       )	0.08      
	   (("square" 'longEdge)      ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'longEdge)        ("square" 'shortEdge)    )	0.08      
	   (("rect" 'longEdge)        ("square" 'longEdge)     )	0.08      
	   (("rect" 'longEdge)        ("rect" 'longEdge)       )	0.08      
	   (("rect" 'longEdge)        ("rect" 'shortEdge)      )	0.08      
	   (("rect" 'shortEdge)       ("square" 'shortEdge)    )	0.08      
	   (("rect" 'shortEdge)       ("square" 'longEdge)     )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'longEdge)       )	0.08      
	   (("rect" 'shortEdge)       ("rect" 'shortEdge)      )	0.08      
	)  'manhattan  'ref  "VIAx.S.1, VIAx.S.3, VIAx.S.4, VIAx.S.5"
     )
    ) ;spacingTables

    antennaModels(
    ;( model )
    ;( ----- )
     ( "default"
       antenna(
	( areaRatio          "VIA1"     0.0 )
	( diffAreaRatio      "VIA1"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA2"     0.0 )
	( diffAreaRatio      "VIA2"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA3"     0.0 )
	( diffAreaRatio      "VIA3"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA4"     0.0 )
	( diffAreaRatio      "VIA4"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA5"     0.0 )
	( diffAreaRatio      "VIA5"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA6"     0.0 )
	( diffAreaRatio      "VIA6"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA7"     0.0 )
	( diffAreaRatio      "VIA7"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA8"     0.0 )
	( diffAreaRatio      "VIA8"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "M9"     0.0 )
	( diffAreaRatio      "M9"
	   (
	      ( 0.0 5000.0 )
	      ( 2.5e-05 50000.2 )
	      ( 0.2 51600.0 )
	      ( 0.5 54000.0 )
	      ( 1.0 58000.0 )
	      ( 1.5 62000.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "RV"     0.0 )
	( diffAreaRatio      "RV"
	   (
	      ( 0.0 200.0 )
	      ( 2.5e-05 400.0021 )
	      ( 0.2 416.6 )
	      ( 0.5 441.5 )
	      ( 1.0 483.0 )
	      ( 1.5 524.5 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "AP"       0.0 'side )
	( diffAreaRatio      "AP"
	   (
	      ( 0.0 2000.0 )
	      ( 2.5e-05 30000.2 )
	      ( 0.2 31600.0 )
	      ( 0.5 34000.0 )
	      ( 1.0 38000.0 )
	      ( 1.5 42000.0 )
	   ) 
	'side )
       ) ;antenna
       cumPerLayerAntenna(
	( areaRatio          "M9"     5000.0 )
       ) ;cumPerLayerAntenna
       cumulativeMetalAntenna(
	( areaRatio               0.0 )
	( diffAreaRatio
	   (
	      ( 0.0 5000.0 )
	      ( 2.5e-05 43000.01 )
	      ( 0.2 43091.2 )
	      ( 0.5 43228.0 )
	      ( 1.0 43456.0 )
	      ( 1.5 43684.0 )
	   ) 
	)
       ) ;cumulativeMetalAntenna
       cumulativeViaAntenna(
	( areaRatio               0.0 )
	( diffAreaRatio
	   (
	      ( 0.0 900.0 )
	      ( 2.5e-05 900.0052 )
	      ( 0.2 942.0 )
	      ( 0.5 1005.0 )
	      ( 1.0 1110.0 )
	      ( 1.5 1215.0 )
	   ) 
	)
       ) ;cumulativeViaAntenna
     ) ;default
     ( "second"
       antenna(
	( areaRatio          "VIA1"     0.0 )
	( diffAreaRatio      "VIA1"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA2"     0.0 )
	( diffAreaRatio      "VIA2"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA3"     0.0 )
	( diffAreaRatio      "VIA3"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA4"     0.0 )
	( diffAreaRatio      "VIA4"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA5"     0.0 )
	( diffAreaRatio      "VIA5"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA6"     0.0 )
	( diffAreaRatio      "VIA6"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA7"     0.0 )
	( diffAreaRatio      "VIA7"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "VIA8"     0.0 )
	( diffAreaRatio      "VIA8"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 99999.0 )
	      ( 0.2 99999.0 )
	      ( 0.5 99999.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "M9"     0.0 )
	( diffAreaRatio      "M9"
	   (
	      ( 0.0 1000.0 )
	      ( 2.5e-05 50000.2 )
	      ( 0.2 51600.0 )
	      ( 0.5 54000.0 )
	      ( 1.0 58000.0 )
	      ( 1.5 62000.0 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "RV"     0.0 )
	( diffAreaRatio      "RV"
	   (
	      ( 0.0 20.0 )
	      ( 2.5e-05 400.0021 )
	      ( 0.2 416.6 )
	      ( 0.5 441.5 )
	      ( 1.0 483.0 )
	      ( 1.5 524.5 )
	   ) 
	)
       ) ;antenna
       antenna(
	( areaRatio          "AP"       0.0 'side )
	( diffAreaRatio      "AP"
	   (
	      ( 0.0 1000.0 )
	      ( 2.5e-05 30000.2 )
	      ( 0.2 31600.0 )
	      ( 0.5 34000.0 )
	      ( 1.0 38000.0 )
	      ( 1.5 42000.0 )
	   ) 
	'side )
       ) ;antenna
       cumPerLayerAntenna(
	( areaRatio          "M9"     1000.0 )
       ) ;cumPerLayerAntenna
       cumulativeMetalAntenna(
	( areaRatio               0.0 )
	( diffAreaRatio
	   (
	      ( 0.0 1000.0 )
	      ( 2.5e-05 43000.01 )
	      ( 0.2 43091.2 )
	      ( 0.5 43228.0 )
	      ( 1.0 43456.0 )
	      ( 1.5 43684.0 )
	   ) 
	)
       ) ;cumulativeMetalAntenna
       cumulativeViaAntenna(
	( areaRatio               0.0 )
	( diffAreaRatio
	   (
	      ( 0.0 50.0 )
	      ( 2.5e-05 900.0052 )
	      ( 0.2 942.0 )
	      ( 0.5 1005.0 )
	      ( 1.0 1110.0 )
	      ( 1.5 1215.0 )
	   ) 
	)
       ) ;cumulativeViaAntenna
     ) ;second
    ) ;antennaModels
  ) ;foundry
) ;constraintGroups


;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

cdsViaDevice(
; (name cutLayer cutPurpose layer1 purpose1 layer2 purpose2
;  row column origin stackedVias cutLayerW cutLayerL xCutSpacing yCutSpacing
;  layer1XDirOverride layer1YDirOverride layer2XDirOverride layer2YDirOverride
;  layer1Dir layer2Dir
;  layer1XDefOverride layer1YDefOverride layer2XDefOverride layer2YDefOverride
;  implantLayer1 implantLayer2 diffSpacing abutClass)

  (AP_M9c_B RV drawing M9 drawing AP drawing
  1 1 centerCenter t 3 3 _def_ _def_
  _def_ _def_ _def_ _def_
  "xy" "xy"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (AP_M9c_A RV drawing M9 drawing AP drawing
  1 1 centerCenter t 2 2 _def_ _def_
  _def_ _def_ _def_ _def_
  "xy" "xy"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M9_M8c_O VIA8 drawing M8 drawing M9 drawing
  1 1 centerCenter t _def_ _def_ 0.54 0.54
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.08 0.02
  nil
  nil
  0.08 "")

  (M9_M8c VIA8 drawing M8 drawing M9 drawing
  1 1 centerCenter t _def_ _def_ 0.54 0.54
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M8_M7c_O VIA7 drawing M7 drawing M8 drawing
  1 1 centerCenter t _def_ _def_ 0.54 0.54
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.08 0.02
  nil
  nil
  0.08 "")

  (M8_M7c VIA7 drawing M7 drawing M8 drawing
  1 1 centerCenter t _def_ _def_ 0.54 0.54
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M7_M6l2_O VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M7_M6l1_O VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M7_M6l2 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M7_M6l1 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M7_M6a_O VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M7_M6a VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M7_M6c_O VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M7_M6c VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M7_M6_2cut_p3 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M7_M6_2cut_p2_2 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M7_M6_2cut_p2_1 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M7_M6_2cut_p1_2 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M7_M6_2cut_p1_1 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M7_M6_PBS VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M7_M6_PBD VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M7_M6_FBS VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M7_M6_FBD VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M7_M6_FAT VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M7_M6_PBSU VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M7_M6_PBSB VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M7_M6_FBS25 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M7_M6_PBDE VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M7_M6_PBDU VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M7_M6_PBDB VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M7_M6_FBD30 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M7_M6_FBD20 VIA6 drawing M6 drawing M7 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M6_M5l2_O VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M6_M5l1_O VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M6_M5l2 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M6_M5l1 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M6_M5a_O VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M6_M5a VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M6_M5c_O VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M6_M5c VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M6_M5_2cut_p3 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M6_M5_2cut_p2_2 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M6_M5_2cut_p2_1 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M6_M5_2cut_p1_2 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M6_M5_2cut_p1_1 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M6_M5_PBS VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M6_M5_PBD VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M6_M5_FBS VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M6_M5_FBD VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M6_M5_FAT VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M6_M5_PBSU VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M6_M5_PBSB VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M6_M5_FBS25 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M6_M5_PBDE VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M6_M5_PBDU VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M6_M5_PBDB VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M6_M5_FBD30 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M6_M5_FBD20 VIA5 drawing M5 drawing M6 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M5_M4l2_O VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M5_M4l1_O VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M5_M4l2 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M5_M4l1 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M5_M4a_O VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M5_M4a VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M5_M4c_O VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M5_M4c VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M5_M4_2cut_p3 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M5_M4_2cut_p2_2 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M5_M4_2cut_p2_1 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M5_M4_2cut_p1_2 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M5_M4_2cut_p1_1 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M5_M4_PBS VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M5_M4_PBD VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M5_M4_FBS VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M5_M4_FBD VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M5_M4_FAT VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M5_M4_PBSU VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M5_M4_PBSB VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M5_M4_FBS25 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M5_M4_PBDE VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M5_M4_PBDU VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M5_M4_PBDB VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M5_M4_FBD30 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M5_M4_FBD20 VIA4 drawing M4 drawing M5 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M4_M3l2_O VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M4_M3l1_O VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M4_M3l2 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M4_M3l1 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M4_M3a_O VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M4_M3a VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M4_M3c_O VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M4_M3c VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M4_M3_2cut_p3 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M4_M3_2cut_p2_2 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M4_M3_2cut_p2_1 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M4_M3_2cut_p1_2 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M4_M3_2cut_p1_1 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M4_M3_PBS VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M4_M3_PBD VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M4_M3_FBS VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M4_M3_FBD VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M4_M3_FAT VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M4_M3_PBSU VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M4_M3_PBSB VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M4_M3_FBS25 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M4_M3_PBDE VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M4_M3_PBDU VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M4_M3_PBDB VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M4_M3_FBD30 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M4_M3_FBD20 VIA3 drawing M3 drawing M4 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M3_M2l2_O VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M3_M2l1_O VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M3_M2l2 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M3_M2l1 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M3_M2a_O VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M3_M2a VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M3_M2c_O VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M3_M2c VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M3_M2_2cut_p3 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M3_M2_2cut_p2_2 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M3_M2_2cut_p2_1 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M3_M2_2cut_p1_2 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M3_M2_2cut_p1_1 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M3_M2_PBS VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M3_M2_PBD VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M3_M2_FBS VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M3_M2_FBD VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M3_M2_FAT VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M3_M2_PBSU VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M3_M2_PBSB VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M3_M2_FBS25 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M3_M2_PBDE VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M3_M2_PBDU VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M3_M2_PBDB VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M3_M2_FBD30 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M3_M2_FBD20 VIA2 drawing M2 drawing M3 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M2_M1l2_O VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 0.03 0.01
  nil
  nil
  0.08 "")

  (M2_M1l1_O VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 _def_ 0.04
  nil
  nil
  0.08 "")

  (M2_M1l2 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ 0.04 _def_ 0.04
  nil
  nil
  0.08 "")

  (M2_M1l1 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ 0.13 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  0.03 0.01 0.03 0.01
  nil
  nil
  0.08 "")

  (M2_M1a_O VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M2_M1a VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M2_M1c_O VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ 0.03 0
  nil
  nil
  0.08 "")

  (M2_M1c VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "Y" "X"
  _def_ _def_ _def_ _def_
  nil
  nil
  0.08 "")

  (M2_M1_2cut_p3 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.04 0
  nil
  nil
  0.08 "")

  (M2_M1_2cut_p2_2 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ 0.26 _def_
  "XY" "RB"
  0.01 _def_ 0.05 0
  nil
  nil
  0.08 "")

  (M2_M1_2cut_p2_1 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.155 0
  nil
  nil
  0.08 "")

  (M2_M1_2cut_p1_2 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.01 _def_
  nil
  nil
  0.08 "")

  (M2_M1_2cut_p1_1 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 0.01
  nil
  nil
  0.08 "")

  (M2_M1_PBS VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M2_M1_PBD VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.03 _def_
  nil
  nil
  0.08 "")

  (M2_M1_FBS VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M2_M1_FBD VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 _def_ 0.03 _def_
  nil
  nil
  0.08 "")

  (M2_M1_FAT VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.05 0 0.05 0
  nil
  nil
  0.08 "")

  (M2_M1_PBSU VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.03 0 0.025 0.01
  nil
  nil
  0.08 "")

  (M2_M1_PBSB VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.01 0.03 0
  nil
  nil
  0.08 "")

  (M2_M1_FBS25 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t _def_ _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.025 0.025 0.025 0.025
  nil
  nil
  0.08 "")

  (M2_M1_PBDE VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.04 0
  nil
  nil
  0.08 "")

  (M2_M1_PBDU VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.04 0 0.02 0.02
  nil
  nil
  0.08 "")

  (M2_M1_PBDB VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.04 0
  nil
  nil
  0.08 "")

  (M2_M1_FBD30 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.01 _def_ 0.01 _def_
  nil
  nil
  0.08 "")

  (M2_M1_FBD20 VIA1 drawing M1 drawing M2 drawing
  1 1 centerCenter t 0.13 _def_ 0.08 0.08
  _def_ _def_ _def_ _def_
  "XY" "XY"
  0.02 0.02 0.02 0.02
  nil
  nil
  0.08 "")

  (M1_PODc_O CO drawing OD drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0.03 0.005 0.005 _def_
  (
    ((PP drawing) 0.075)
  )
  nil
  0.085 "")

  (M1_PODc CO drawing OD drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ _def_ 0.005 _def_
  (
    ((PP drawing) 0.075)
  )
  nil
  0.085 "")

  (M1_NODc_O CO drawing OD drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0.03 0.005 0.005 _def_
  (
    ((NP drawing) 0.075)
  )
  nil
  0.085 "")

  (M1_NODc CO drawing OD drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ _def_ 0.005 _def_
  (
    ((NP drawing) 0.075)
  )
  nil
  0.085 "")

  (M1_PPOd_O CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ 0.02 0.02 0.005
  (
    ((PP drawing) 0.065)
  )
  nil
  0.085 "")

  (M1_PPOd CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ 0.02 0.005 _def_
  (
    ((PP drawing) 0.065)
  )
  nil
  0.085 "")

  (M1_NPOd_O CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ 0.02 0.02 0.005
  (
    ((NP drawing) 0.065)
  )
  nil
  0.08 "")

  (M1_NPOd CO drawing PO drawing M1 drawing
  1 1 CenterCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  _def_ 0.02 0.005 _def_
  (
    ((NP drawing) 0.065)
  )
  nil
  0.085 "")

  (M1_PPOc_O CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0 0.02 0.02 0.005
  (
    ((PP drawing) 0.065)
  )
  nil
  0.085 "")

  (M1_PPOc CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0 0.02 0.005 _def_
  (
    ((PP drawing) 0.065)
  )
  nil
  0.085 "")

  (M1_NPOc_O CO drawing PO drawing M1 drawing
  1 1 centerCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0 0.02 0.02 0.005
  (
    ((NP drawing) 0.065)
  )
  nil
  0.08 "")

  (M1_NPOc CO drawing PO drawing M1 drawing
  1 1 CenterCenter t _def_ _def_ 0.085 0.085
  _def_ _def_ _def_ _def_
  "XY" "X"
  0 0.02 0.005 _def_
  (
    ((NP drawing) 0.065)
  )
  nil
  0.085 "")
)




multipartPathTemplates(
; ( name [masterPath] [offsetSubpaths] [encSubPaths] [subRects] )
; 
;   masterPath:
;   (layer [width] [choppable] [endType] [beginExt] [endExt] [justify] [offset]
;   [connectivity])
; 
;   offsetSubpaths:
;   (layer [width] [choppable] [separation] [justification] [begOffset] [endOffset]
;   [connectivity])
; 
;   encSubPaths:
;   (layer [enclosure] [choppable] [begOffset] [endOffset]
;   [connectivity])
; 
;   subRects:
;   (layer [width] [length] [choppable] [separation] [justification] [space] [begOffset] [endOffset] [gap] 
;   [connectivity] [beginSegOffset] [endSegOffset])
; 
;   connectivity:
;   ([I/O type] [pin] [accDir] [dispPinName] [height] [ layer]
;    [layer] [justification] [font] [textOptions] [orientation]
;    [refHandle] [offset])
; 
; ( --------------------------------------------------------------------- )
  (NwellMPP 
    (("OD" "drawing")	(plus (times 2 0.03) 0.04)	nil	extend	nil	nil)
    nil
    ((("NP" "drawing")	(difference 0.0 0.03)	nil	0.0	0.0)
     (("M1" "drawing")	(difference 0.0 0.0)	t	0.0	0.0)
     (("NW" "drawing")	(difference 0.0 0.07)	nil	0.0	0.0)
    )
    ((("CO" "drawing")	0.04	0.04	t	0.0	center	0.085	0.0	0.0	distribute	nil	0.0	0.0)
    )
  )
  (PSubMPP 
    (("OD" "drawing")	(plus (times 2 0.03) 0.04)	nil	extend	nil	nil)
    nil
    ((("PP" "drawing")	(difference 0.0 0.03)	nil	0.0	0.0)
     (("M1" "drawing")	(difference 0.0 0.0)	t	0.0	0.0)
    )
    ((("CO" "drawing")	0.04	0.04	t	0.0	center	0.085	0.0	0.0	distribute	nil	0.0	0.0)
    )
  )
)  ;multipartPathTemplates




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Device Extraction Declaration
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch" "ngate_core" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_12" "ngate_12" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_15" "ngate_15" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_18" "ngate_18" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_25" "ngate_25" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_33" "ngate_33" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na" "ngate_na" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na12" "ngate_na12" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na15" "ngate_na15" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na18" "ngate_na18" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na25" "ngate_na25" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_na33" "ngate_na33" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_lvt" "ngate_lvt" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("nch_hvt" "ngate_hvt" "PO" "OD" "substrate")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch" "pgate_core" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_12" "pgate_12" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_15" "pgate_15" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_18" "pgate_18" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_25" "pgate_25" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_33" "pgate_33" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_lvt" "pgate_lvt" "PO" "OD" "NW")

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("pch_hvt" "pgate_hvt" "PO" "OD" "NW")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rnpoly" "rnpoly" "PO" "rnpolyl")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rppoly" "rppoly" "PO" "rppolyl")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rnpolywo" "rnpolywo" "PO")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rppolywo" "rppolywo" "PO")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rnod" "rnod" "OD" "rnodl")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rpod" "rpod" "OD" "rpodl")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rnodwo" "rnodwo" "OD")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rpodwo" "rpodwo" "OD")

;extractRES(deviceName  recLayer termLayer[spiceModel])
extractRES("rnwod" "rnw" "OD")


) ;devices
