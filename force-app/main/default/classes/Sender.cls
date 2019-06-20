public without sharing class Sender implements SenderInterface {
    public Sender() {

    }

    public string send(Boolean pass){
        if(pass){
            return 'Success';
        }
        else {
            return 'Fail';
        }
    }
}
