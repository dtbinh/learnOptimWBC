/* Include files */

#include "WBToolboxLibrary_sfun.h"
#include "WBToolboxLibrary_sfun_debug_macros.h"
#include "c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary.h"
#include "c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary.h"
#include "c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary.h"
#include "c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary.h"
#include "c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
uint32_T _WBToolboxLibraryMachineNumber_;

/* Function Declarations */

/* Function Definitions */
void WBToolboxLibrary_initializer(void)
{
}

void WBToolboxLibrary_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_WBToolboxLibrary_method_dispatcher(SimStruct *simstructPtr,
  unsigned int chartFileNumber, const char* specsCksum, int_T method, void *data)
{
  if (chartFileNumber==1) {
    if (!strcmp(specsCksum, "8EAxsT4XkBwuvlN9PQRf3D")) {
      c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary_method_dispatcher(simstructPtr,
        method, data);
      return 1;
    }

    if (!strcmp(specsCksum, "KUAKXEagfs8AeITP6Td37B")) {
      c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary_method_dispatcher(simstructPtr,
        method, data);
      return 1;
    }

    if (!strcmp(specsCksum, "SaIbQGVykbN93G6oZHOX8C")) {
      c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary_method_dispatcher(simstructPtr,
        method, data);
      return 1;
    }

    if (!strcmp(specsCksum, "ShVT4BxSmtBPnRwC5cMTHH")) {
      c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary_method_dispatcher(simstructPtr,
        method, data);
      return 1;
    }

    if (!strcmp(specsCksum, "nJzEs4bzwNB8XgjFfBu6J")) {
      c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_method_dispatcher(simstructPtr,
        method, data);
      return 1;
    }

    return 0;
  }

  return 0;
}

unsigned int sf_WBToolboxLibrary_process_check_sum_call( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[20];
  if (nrhs<1 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the checksum */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"sf_get_check_sum"))
    return 0;
  plhs[0] = mxCreateDoubleMatrix( 1,4,mxREAL);
  if (nrhs>2 && mxIsChar(prhs[1])) {
    mxGetString(prhs[1], commandName,sizeof(commandName)/sizeof(char));
    commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
    if (!strcmp(commandName,"library")) {
      char machineName[100];
      mxGetString(prhs[2], machineName,sizeof(machineName)/sizeof(char));
      machineName[(sizeof(machineName)/sizeof(char)-1)] = '\0';
      if (!strcmp(machineName,"WBToolboxLibrary")) {
        if (nrhs==3) {
          ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1471957645U);
          ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(4076168139U);
          ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(193342071U);
          ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1023958712U);
        } else if (nrhs==4) {
          unsigned int chartFileNumber;
          chartFileNumber = (unsigned int)mxGetScalar(prhs[3]);
          switch (chartFileNumber) {
           case 1:
            {
              extern void
                sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_check_sum
                (mxArray *plhs[]);
              sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_check_sum(plhs);
              break;
            }

           default:
            ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0.0);
            ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0.0);
            ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0.0);
            ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0.0);
          }
        } else {
          return 0;
        }
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  } else {
    return 0;
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_WBToolboxLibrary_autoinheritance_info( int nlhs, mxArray * plhs[],
  int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  char aiChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the autoinheritance_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_autoinheritance_info"))
    return 0;
  mxGetString(prhs[2], aiChksum,sizeof(aiChksum)/sizeof(char));
  aiChksum[(sizeof(aiChksum)/sizeof(char)-1)] = '\0';

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(aiChksum, "rN1iqiKcVCcUBBqDQ5E9TG") == 0) {
          extern mxArray
            *sf_c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary_get_autoinheritance_info
            (void);
          plhs[0] =
            sf_c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary_get_autoinheritance_info
            ();
          break;
        }

        if (strcmp(aiChksum, "YSRZu7RaPelcq07ZBAI1CC") == 0) {
          extern mxArray
            *sf_c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary_get_autoinheritance_info
            (void);
          plhs[0] =
            sf_c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary_get_autoinheritance_info
            ();
          break;
        }

        if (strcmp(aiChksum, "vhNe8nid1i2OA7agMFKZn") == 0) {
          extern mxArray
            *sf_c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary_get_autoinheritance_info
            (void);
          plhs[0] =
            sf_c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary_get_autoinheritance_info
            ();
          break;
        }

        if (strcmp(aiChksum, "dDUZvj1aongiRfVXZe2aCD") == 0) {
          extern mxArray
            *sf_c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary_get_autoinheritance_info
            (void);
          plhs[0] =
            sf_c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary_get_autoinheritance_info
            ();
          break;
        }

        if (strcmp(aiChksum, "WTZVj4KFVwsi8dGEeflH7G") == 0) {
          extern mxArray
            *sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_autoinheritance_info
            (void);
          plhs[0] =
            sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_autoinheritance_info
            ();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_WBToolboxLibrary_get_eml_resolved_functions_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[64];
  if (nrhs<2 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the get_eml_resolved_functions_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_eml_resolved_functions_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        extern const mxArray
          *sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_eml_resolved_functions_info
          (void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_get_eml_resolved_functions_info
          ();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_WBToolboxLibrary_third_party_uses_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the third_party_uses_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_third_party_uses_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "8EAxsT4XkBwuvlN9PQRf3D") == 0) {
          extern mxArray
            *sf_c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary_third_party_uses_info
            (void);
          plhs[0] =
            sf_c1_8EAxsT4XkBwuvlN9PQRf3D_WBToolboxLibrary_third_party_uses_info();
          break;
        }

        if (strcmp(tpChksum, "KUAKXEagfs8AeITP6Td37B") == 0) {
          extern mxArray
            *sf_c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary_third_party_uses_info
            (void);
          plhs[0] =
            sf_c1_KUAKXEagfs8AeITP6Td37B_WBToolboxLibrary_third_party_uses_info();
          break;
        }

        if (strcmp(tpChksum, "SaIbQGVykbN93G6oZHOX8C") == 0) {
          extern mxArray
            *sf_c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary_third_party_uses_info
            (void);
          plhs[0] =
            sf_c1_SaIbQGVykbN93G6oZHOX8C_WBToolboxLibrary_third_party_uses_info();
          break;
        }

        if (strcmp(tpChksum, "ShVT4BxSmtBPnRwC5cMTHH") == 0) {
          extern mxArray
            *sf_c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary_third_party_uses_info
            (void);
          plhs[0] =
            sf_c1_ShVT4BxSmtBPnRwC5cMTHH_WBToolboxLibrary_third_party_uses_info();
          break;
        }

        if (strcmp(tpChksum, "nJzEs4bzwNB8XgjFfBu6J") == 0) {
          extern mxArray
            *sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_third_party_uses_info
            (void);
          plhs[0] =
            sf_c1_nJzEs4bzwNB8XgjFfBu6J_WBToolboxLibrary_third_party_uses_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

void WBToolboxLibrary_debug_initialize(struct SfDebugInstanceStruct*
  debugInstance)
{
  _WBToolboxLibraryMachineNumber_ = sf_debug_initialize_machine(debugInstance,
    "WBToolboxLibrary","sfun",1,1,0,0,0);
  sf_debug_set_machine_event_thresholds(debugInstance,
    _WBToolboxLibraryMachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds(debugInstance,
    _WBToolboxLibraryMachineNumber_,0);
}

void WBToolboxLibrary_register_exported_symbols(SimStruct* S)
{
}

static mxArray* sRtwOptimizationInfoStruct= NULL;
mxArray* load_WBToolboxLibrary_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct==NULL) {
    sRtwOptimizationInfoStruct = sf_load_rtw_optimization_info(
      "WBToolboxLibrary", "torqueBalancing2012b");
    mexMakeArrayPersistent(sRtwOptimizationInfoStruct);
  }

  return(sRtwOptimizationInfoStruct);
}

void unload_WBToolboxLibrary_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct!=NULL) {
    mxDestroyArray(sRtwOptimizationInfoStruct);
    sRtwOptimizationInfoStruct = NULL;
  }
}
