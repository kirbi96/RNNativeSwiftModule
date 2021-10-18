import React from 'react';
import {Button, SafeAreaView, View, NativeModules} from 'react-native';

const App = () => {
  return (
    <SafeAreaView style={{flex: 1}}>
      <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
        <Button
          onPress={() => NativeModules.StringModule.showMessage('123')}
          title={'Btn'}
        />
      </View>
    </SafeAreaView>
  );
};

export default App;
