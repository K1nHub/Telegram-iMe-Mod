package org.telegram.p043ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.TwoStepVerificationActivity$$ExternalSyntheticLambda37 */
/* loaded from: classes5.dex */
public final /* synthetic */ class TwoStepVerificationActivity$$ExternalSyntheticLambda37 implements RequestDelegate {
    public static final /* synthetic */ TwoStepVerificationActivity$$ExternalSyntheticLambda37 INSTANCE = new TwoStepVerificationActivity$$ExternalSyntheticLambda37();

    private /* synthetic */ TwoStepVerificationActivity$$ExternalSyntheticLambda37() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TwoStepVerificationActivity.lambda$checkSecretValues$28(tLObject, tLRPC$TL_error);
    }
}
