public with sharing class HandlerService {
    Sender s;
    
    public HandlerService(Sender senderService) {
        s = senderService != null ? senderService : new Sender();
    }

    public string handleSend(Boolean pass){
        return s.send(pass);
    }
}
