package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$Message;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesStorage$$ExternalSyntheticLambda218 implements Comparator {
    public static final /* synthetic */ MessagesStorage$$ExternalSyntheticLambda218 INSTANCE = new MessagesStorage$$ExternalSyntheticLambda218();

    private /* synthetic */ MessagesStorage$$ExternalSyntheticLambda218() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getMessagesInternal$138;
        lambda$getMessagesInternal$138 = MessagesStorage.lambda$getMessagesInternal$138((TLRPC$Message) obj, (TLRPC$Message) obj2);
        return lambda$getMessagesInternal$138;
    }
}
