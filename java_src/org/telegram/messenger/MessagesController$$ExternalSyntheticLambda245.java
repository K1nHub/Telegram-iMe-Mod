package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$Updates;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda245 implements Comparator {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda245 INSTANCE = new MessagesController$$ExternalSyntheticLambda245();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda245() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$processChannelsUpdatesQueue$278;
        lambda$processChannelsUpdatesQueue$278 = MessagesController.lambda$processChannelsUpdatesQueue$278((TLRPC$Updates) obj, (TLRPC$Updates) obj2);
        return lambda$processChannelsUpdatesQueue$278;
    }
}
