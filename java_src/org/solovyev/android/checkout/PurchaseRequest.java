package org.solovyev.android.checkout;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
/* loaded from: classes6.dex */
final class PurchaseRequest extends Request<PendingIntent> {
    private final Bundle mExtraParams;
    private final String mPayload;
    private final String mProduct;
    private final String mSku;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.solovyev.android.checkout.Request
    public String getCacheKey() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseRequest(String str, String str2, String str3, Bundle bundle) {
        super(RequestType.PURCHASE, bundle != null ? 6 : 3);
        this.mProduct = str;
        this.mSku = str2;
        this.mPayload = str3;
        this.mExtraParams = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.solovyev.android.checkout.Request
    public void start(IInAppBillingService iInAppBillingService, String str) throws RemoteException, RequestException {
        String str2 = this.mPayload;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        Bundle bundle = this.mExtraParams;
        int i = this.mApiVersion;
        String str4 = this.mSku;
        String str5 = this.mProduct;
        Bundle buyIntentExtraParams = bundle != null ? iInAppBillingService.getBuyIntentExtraParams(i, str, str4, str5, str3, bundle) : iInAppBillingService.getBuyIntent(i, str, str4, str5, str3);
        if (handleError(buyIntentExtraParams)) {
            return;
        }
        onSuccess((PendingIntent) buyIntentExtraParams.getParcelable("BUY_INTENT"));
    }
}
