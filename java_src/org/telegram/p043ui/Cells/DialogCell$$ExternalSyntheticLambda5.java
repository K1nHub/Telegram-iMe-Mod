package org.telegram.p043ui.Cells;

import java.util.Comparator;
import org.telegram.messenger.MessageObject;
/* renamed from: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda5 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogCell$$ExternalSyntheticLambda5 implements Comparator {
    public static final /* synthetic */ DialogCell$$ExternalSyntheticLambda5 INSTANCE = new DialogCell$$ExternalSyntheticLambda5();

    private /* synthetic */ DialogCell$$ExternalSyntheticLambda5() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$updateMessageThumbs$6;
        lambda$updateMessageThumbs$6 = DialogCell.lambda$updateMessageThumbs$6((MessageObject) obj, (MessageObject) obj2);
        return lambda$updateMessageThumbs$6;
    }
}