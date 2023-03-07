package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$Updates;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda239 implements Comparator {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda239 INSTANCE = new MessagesController$$ExternalSyntheticLambda239();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda239() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$processChannelsUpdatesQueue$270;
        lambda$processChannelsUpdatesQueue$270 = MessagesController.lambda$processChannelsUpdatesQueue$270((TLRPC$Updates) obj, (TLRPC$Updates) obj2);
        return lambda$processChannelsUpdatesQueue$270;
    }
}
