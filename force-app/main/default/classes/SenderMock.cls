@isTest
public class SenderMock implements System.StubProvider {

    //https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_testing_stub_api.htm

    // String sendReturnValue;
// Can also use constructor to set the return when creating the mock
    // public SenderMock(String sendReturn){
    //     sendReturnValue = String.isBlank(sendReturn) ? '' : sendReturn;
    // }

    public Object handleMethodCall(Object stubbedObject, String stubbedMethodName,
                                  Type returnType, List<Type> listOfParamTypes, 
                                  List<String> listOfParamNames,
                                  List<Object> listOfArgs){
    switch on stubbedMethodName {
      when 'send' {
          //Send has one arg that is a boolean
          //This is more dynamic, as we could loop through the size of the arg list while relating it to the listOfParamTypes and listOfParamNames
          //We can use this to create default mocked versions of the classes to use.
          Boolean firstArg = (Boolean) listOfArgs.get(0);
          if(firstArg){
              return 'S';
          }
          else{
              return 'F';
          }
      }        
    }
    return 'catchall';
  }
}
