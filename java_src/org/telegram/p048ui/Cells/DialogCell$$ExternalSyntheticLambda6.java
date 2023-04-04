package org.telegram.p048ui.Cells;

import org.telegram.tgnet.TLRPC$TL_forumTopic;
import p035j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda6 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogCell$$ExternalSyntheticLambda6 implements ToIntFunction {
    public static final /* synthetic */ DialogCell$$ExternalSyntheticLambda6 INSTANCE = new DialogCell$$ExternalSyntheticLambda6();

    private /* synthetic */ DialogCell$$ExternalSyntheticLambda6() {
    }

    @Override // p035j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        int lambda$formatTopicsNames$0;
        lambda$formatTopicsNames$0 = DialogCell.lambda$formatTopicsNames$0((TLRPC$TL_forumTopic) obj);
        return lambda$formatTopicsNames$0;
    }
}
