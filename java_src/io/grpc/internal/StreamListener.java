package io.grpc.internal;

import java.io.InputStream;
/* loaded from: classes4.dex */
public interface StreamListener {

    /* loaded from: classes4.dex */
    public interface MessageProducer {
        InputStream next();
    }

    void messagesAvailable(MessageProducer messageProducer);

    void onReady();
}
