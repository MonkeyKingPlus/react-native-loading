import { NativeModules } from 'react-native';
const LoadingModule = NativeModules.LoadingModule;

import {Platform} from 'react-native';

export  function show (str,cancel){
      LoadingModule.show(str,cancel);
};

export  function hidden (){
    LoadingModule.hidden();
};
