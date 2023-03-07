package okhttp3;

import java.io.IOException;
/* compiled from: Interceptor.kt */
/* loaded from: classes4.dex */
public interface Interceptor {

    /* compiled from: Interceptor.kt */
    /* loaded from: classes4.dex */
    public interface Chain {
        Call call();

        Connection connection();

        Response proceed(Request request) throws IOException;

        Request request();
    }

    Response intercept(Chain chain) throws IOException;
}
