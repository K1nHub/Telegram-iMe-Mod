package org.telegram.p043ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda16 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PremiumPreviewFragment$$ExternalSyntheticLambda16 implements RequestDelegate {
    public static final /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda16 INSTANCE = new PremiumPreviewFragment$$ExternalSyntheticLambda16();

    private /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda16() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PremiumPreviewFragment.lambda$sentShowScreenStat$14(tLObject, tLRPC$TL_error);
    }
}
