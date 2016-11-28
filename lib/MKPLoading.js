import LoadingIOS from './MKPLoadingModuleIOS';
import LoadingAndroid from './MKPLoadingModuleAndroid';
import {Platform} from 'react-native';

export  function show (str){
    if(Platform.OS === 'android'){
        LoadingAndroid.show(str);
    }
    else  {
        LoadingIOS.show(str);
    }
};

export  function hidden (){
    if(Platform.OS === 'android'){
        LoadingAndroid.hidden();
    }
    else  {
        LoadingIOS.hidden();
    }
};
