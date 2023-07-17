package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.p043ui.Adapters.DialogsSearchAdapter;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesStorage$$ExternalSyntheticLambda219 implements Comparator {
    public static final /* synthetic */ MessagesStorage$$ExternalSyntheticLambda219 INSTANCE = new MessagesStorage$$ExternalSyntheticLambda219();

    private /* synthetic */ MessagesStorage$$ExternalSyntheticLambda219() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$localSearch$216;
        lambda$localSearch$216 = MessagesStorage.lambda$localSearch$216((DialogsSearchAdapter.DialogSearchResult) obj, (DialogsSearchAdapter.DialogSearchResult) obj2);
        return lambda$localSearch$216;
    }
}
