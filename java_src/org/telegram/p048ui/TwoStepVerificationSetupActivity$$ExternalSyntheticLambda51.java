package org.telegram.p048ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51 */
/* loaded from: classes5.dex */
public final /* synthetic */ class TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51 implements RequestDelegate {
    public static final /* synthetic */ TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51 INSTANCE = new TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51();

    private /* synthetic */ TwoStepVerificationSetupActivity$$ExternalSyntheticLambda51() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TwoStepVerificationSetupActivity.lambda$createView$19(tLObject, tLRPC$TL_error);
    }
}
