package org.telegram.p048ui.Components;

import org.telegram.p048ui.Components.EmojiView;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.EmojiView$21$$ExternalSyntheticLambda2 */
/* loaded from: classes6.dex */
public final /* synthetic */ class EmojiView$21$$ExternalSyntheticLambda2 implements RequestDelegate {
    public static final /* synthetic */ EmojiView$21$$ExternalSyntheticLambda2 INSTANCE = new EmojiView$21$$ExternalSyntheticLambda2();

    private /* synthetic */ EmojiView$21$$ExternalSyntheticLambda2() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        EmojiView.C453221.lambda$sendReorder$2(tLObject, tLRPC$TL_error);
    }
}
