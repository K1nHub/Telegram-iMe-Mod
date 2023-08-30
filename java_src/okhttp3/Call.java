package okhttp3;

import java.io.IOException;
/* compiled from: Call.kt */
/* loaded from: classes4.dex */
public interface Call extends Cloneable {

    /* compiled from: Call.kt */
    /* loaded from: classes4.dex */
    public interface Factory {
        Call newCall(Request request);
    }

    void cancel();

    void enqueue(Callback callback);

    Response execute() throws IOException;

    boolean isCanceled();

    Request request();
}
