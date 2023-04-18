package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda15 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PremiumPreviewFragment$$ExternalSyntheticLambda15 implements RequestDelegate {
    public static final /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda15 INSTANCE = new PremiumPreviewFragment$$ExternalSyntheticLambda15();

    private /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda15() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PremiumPreviewFragment.lambda$sentPremiumBuyCanceled$16(tLObject, tLRPC$TL_error);
    }
}
