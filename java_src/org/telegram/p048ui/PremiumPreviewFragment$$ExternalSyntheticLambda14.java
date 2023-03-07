package org.telegram.p048ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PremiumPreviewFragment$$ExternalSyntheticLambda14 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PremiumPreviewFragment$$ExternalSyntheticLambda14 implements RequestDelegate {
    public static final /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda14 INSTANCE = new PremiumPreviewFragment$$ExternalSyntheticLambda14();

    private /* synthetic */ PremiumPreviewFragment$$ExternalSyntheticLambda14() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PremiumPreviewFragment.lambda$sentShowFeaturePreview$17(tLObject, tLRPC$TL_error);
    }
}
