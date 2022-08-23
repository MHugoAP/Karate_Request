package karate.request.client;

import com.intuit.karate.junit5.Karate;

public class put {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/Put/put.feature").relativeTo(getClass());
    }
}