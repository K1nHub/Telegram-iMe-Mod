package org.telegram.p043ui.Cells;

import java.util.Comparator;
import org.telegram.p043ui.Cells.ChatMessageCell;
/* renamed from: org.telegram.ui.Cells.ChatMessageCell$$ExternalSyntheticLambda14 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatMessageCell$$ExternalSyntheticLambda14 implements Comparator {
    public static final /* synthetic */ ChatMessageCell$$ExternalSyntheticLambda14 INSTANCE = new ChatMessageCell$$ExternalSyntheticLambda14();

    private /* synthetic */ ChatMessageCell$$ExternalSyntheticLambda14() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$setMessageContent$12;
        lambda$setMessageContent$12 = ChatMessageCell.lambda$setMessageContent$12((ChatMessageCell.PollButton) obj, (ChatMessageCell.PollButton) obj2);
        return lambda$setMessageContent$12;
    }
}
