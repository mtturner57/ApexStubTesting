@isTest
public class HandlerServiceTests {

    @isTest
    static void firstTest(){
        Sender senderMock = (Sender) Test.createStub(Sender.class, new SenderMock());
        HandlerService service = new HandlerService(senderMock);

        String expected = 'S';

        Test.startTest();

        String result = service.handleSend(true);

        Test.stopTest();

        System.assertEquals(expected, result);
    }

    @isTest
    static void secondTest(){
        Sender senderMock = (Sender) Test.createStub(Sender.class, new SenderMock());
        HandlerService service = new HandlerService(senderMock);
        
        String expected = 'F';

        Test.startTest();

        String result = service.handleSend(false);

        Test.stopTest();

        System.assertEquals(expected, result);
    }
}
