package com.google.android.gms.wallet.callback;

import com.google.android.gms.wallet.PaymentData;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
/* loaded from: classes4.dex */
public abstract class BasePaymentDataCallbacks {
    /* JADX INFO: Access modifiers changed from: protected */
    public void onPaymentAuthorized(PaymentData paymentData, OnCompleteListener<PaymentAuthorizationResult> onCompleteListener) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPaymentDataChanged(IntermediatePaymentData intermediatePaymentData, OnCompleteListener<PaymentDataRequestUpdate> onCompleteListener) {
    }
}
