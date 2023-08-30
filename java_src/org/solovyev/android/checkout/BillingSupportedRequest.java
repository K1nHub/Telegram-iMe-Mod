package org.solovyev.android.checkout;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class BillingSupportedRequest extends Request<Object> {
    private final Bundle mExtraParams;
    private final String mProduct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingSupportedRequest(String str, int i, Bundle bundle) {
        super(RequestType.BILLING_SUPPORTED, i);
        if (bundle != null) {
        }
        this.mProduct = str;
        this.mExtraParams = bundle;
    }

    @Override // org.solovyev.android.checkout.Request
    public void start(IInAppBillingService iInAppBillingService, String str) throws RemoteException {
        Bundle bundle = this.mExtraParams;
        if (handleError(bundle != null ? iInAppBillingService.isBillingSupportedExtraParams(this.mApiVersion, str, this.mProduct, bundle) : iInAppBillingService.isBillingSupported(this.mApiVersion, str, this.mProduct))) {
            return;
        }
        onSuccess(new Object());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.solovyev.android.checkout.Request
    public String getCacheKey() {
        if (this.mExtraParams != null) {
            return null;
        }
        if (this.mApiVersion == 3) {
            return this.mProduct;
        }
        return this.mProduct + "_" + this.mApiVersion;
    }
}
