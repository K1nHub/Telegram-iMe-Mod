package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$Updates;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda247 implements Comparator {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda247 INSTANCE = new MessagesController$$ExternalSyntheticLambda247();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda247() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$processChannelsUpdatesQueue$279;
        lambda$processChannelsUpdatesQueue$279 = MessagesController.lambda$processChannelsUpdatesQueue$279((TLRPC$Updates) obj, (TLRPC$Updates) obj2);
        return lambda$processChannelsUpdatesQueue$279;
    }
}
