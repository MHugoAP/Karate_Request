package karate.request.client;

import com.intuit.karate.junit5.Karate;

public class client {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/client_Consult_Get/client.feature").relativeTo(getClass());
    }
}