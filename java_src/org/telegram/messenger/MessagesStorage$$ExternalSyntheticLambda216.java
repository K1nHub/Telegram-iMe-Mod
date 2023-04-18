package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.messenger.MessagesController;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesStorage$$ExternalSyntheticLambda216 implements Comparator {
    public static final /* synthetic */ MessagesStorage$$ExternalSyntheticLambda216 INSTANCE = new MessagesStorage$$ExternalSyntheticLambda216();

    private /* synthetic */ MessagesStorage$$ExternalSyntheticLambda216() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$loadDialogFilters$51;
        lambda$loadDialogFilters$51 = MessagesStorage.lambda$loadDialogFilters$51((MessagesController.DialogFilter) obj, (MessagesController.DialogFilter) obj2);
        return lambda$loadDialogFilters$51;
    }
}
