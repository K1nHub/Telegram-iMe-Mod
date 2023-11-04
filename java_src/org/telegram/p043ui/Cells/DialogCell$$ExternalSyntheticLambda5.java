package org.telegram.p043ui.Cells;

import org.telegram.messenger.MessageObject;
import p033j$.util.function.ToIntFunction;
/* renamed from: org.telegram.ui.Cells.DialogCell$$ExternalSyntheticLambda5 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogCell$$ExternalSyntheticLambda5 implements ToIntFunction {
    public static final /* synthetic */ DialogCell$$ExternalSyntheticLambda5 INSTANCE = new DialogCell$$ExternalSyntheticLambda5();

    private /* synthetic */ DialogCell$$ExternalSyntheticLambda5() {
    }

    @Override // p033j$.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((MessageObject) obj).getId();
    }
}
