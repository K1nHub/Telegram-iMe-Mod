package org.solovyev.android.checkout;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class GetPurchasesRequest extends BasePurchasesRequest {
    private final PurchaseVerifier mVerifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetPurchasesRequest(String str, String str2, PurchaseVerifier purchaseVerifier) {
        super(RequestType.GET_PURCHASES, 3, str, str2);
        this.mVerifier = purchaseVerifier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetPurchasesRequest(GetPurchasesRequest getPurchasesRequest, String str) {
        super(getPurchasesRequest, str);
        this.mVerifier = getPurchasesRequest.mVerifier;
    }

    @Override // org.solovyev.android.checkout.BasePurchasesRequest
    protected void processPurchases(List<Purchase> list, String str) {
        VerificationListener verificationListener = new VerificationListener(this, this.mProduct, str);
        this.mVerifier.verify(list, verificationListener);
        if (verificationListener.mCalled) {
            return;
        }
        verificationListener.onError(10001, new IllegalStateException("Either onSuccess or onError methods must be called by PurchaseVerifier"));
    }

    @Override // org.solovyev.android.checkout.BasePurchasesRequest
    protected Bundle request(IInAppBillingService iInAppBillingService, String str) throws RemoteException {
        return iInAppBillingService.getPurchases(this.mApiVersion, str, this.mProduct, this.mContinuationToken);
    }

    /* loaded from: classes4.dex */
    private static class VerificationListener implements RequestListener<List<Purchase>> {
        private boolean mCalled;
        private final String mContinuationToken;
        private final Thread mOriginalThread = Thread.currentThread();
        private final String mProduct;
        private final Request<Purchases> mRequest;

        public VerificationListener(Request<Purchases> request, String str, String str2) {
            this.mRequest = request;
            this.mProduct = str;
            this.mContinuationToken = str2;
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onSuccess(List<Purchase> list) {
            Thread.currentThread();
            this.mCalled = true;
            this.mRequest.onSuccess(new Purchases(this.mProduct, list, this.mContinuationToken));
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception exc) {
            Thread.currentThread();
            this.mCalled = true;
            if (i == 10001) {
                this.mRequest.onError(exc);
            } else {
                this.mRequest.onError(i);
            }
        }
    }
}
