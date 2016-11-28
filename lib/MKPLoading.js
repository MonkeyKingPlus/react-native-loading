import { NativeModules } from 'react-native';
const LoadingModule = NativeModules.LoadingModule;

import {Platform} from 'react-native';

export  function show (str){
      LoadingModule.show(str);
};

export  function hidden (){
    LoadingModule.hidden();
};
