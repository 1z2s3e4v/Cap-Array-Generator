#include "paramHdl.h"
#include "dm.h"
#include "parser.h"

using namespace std;

int main(int argc, char** argv){
    /*Preliminary Information*/
    cout << "     #############################################################" << endl;
    cout << "     #                                                           #" << endl;
    cout << "     #                         [VDA LAB]                         #" << endl;
    cout << "     #-----------------------------------------------------------#" << endl;
    cout << "     #                     Cap Array Generator                   #" << endl;
    cout << "     #                                                           #" << endl;
    cout << "     #############################################################" << endl;
    cout << endl;

    // Pointers 
    ParamHdl_C *pParamHdl;
    Parser_C *pParser;
    DmMgr_C *pDmMgr;
    
    // Random seed
    srand( time(NULL) );

    // start Recording
    clock_t start, end;
    start = clock();
    
    pParamHdl = new ParamHdl_C(argc,argv);
    // usage
    if(!pParamHdl->isCmdValid()){
        cout << "cmd Error.\n";
        pParamHdl->printHelp();
        return 0;
    }
    else if(pParamHdl->isHelpMode())
        pParamHdl->printHelp();
    else
        pParamHdl->printMode();

    // parse input file
    pParser = new Parser_C(pParamHdl);
    //pParser->print_info();
    if(!pParser->isParserOK()) return 0;
    pDmMgr = new DmMgr_C(pParser,start);
    pDmMgr->run();

    end = clock();
    printf("Execution Time: %f seconds\n", (double)(end-start)/CLOCKS_PER_SEC);
    delete pDmMgr;
    delete pParser;
    delete pParamHdl;
    return 0;
}