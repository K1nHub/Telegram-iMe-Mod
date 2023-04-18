package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PaymentFormActivity$$ExternalSyntheticLambda65 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PaymentFormActivity$$ExternalSyntheticLambda65 implements RequestDelegate {
    public static final /* synthetic */ PaymentFormActivity$$ExternalSyntheticLambda65 INSTANCE = new PaymentFormActivity$$ExternalSyntheticLambda65();

    private /* synthetic */ PaymentFormActivity$$ExternalSyntheticLambda65() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PaymentFormActivity.lambda$sendForm$52(tLObject, tLRPC$TL_error);
    }
}
