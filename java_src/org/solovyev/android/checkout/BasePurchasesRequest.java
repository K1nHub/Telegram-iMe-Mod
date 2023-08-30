package org.solovyev.android.checkout;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import java.util.List;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class BasePurchasesRequest extends Request<Purchases> {
    protected final String mContinuationToken;
    protected final String mProduct;

    protected abstract void processPurchases(List<Purchase> list, String str);

    protected abstract Bundle request(IInAppBillingService iInAppBillingService, String str) throws RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    public BasePurchasesRequest(RequestType requestType, int i, String str, String str2) {
        super(requestType, i);
        this.mProduct = str;
        this.mContinuationToken = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasePurchasesRequest(BasePurchasesRequest basePurchasesRequest, String str) {
        super(basePurchasesRequest);
        this.mProduct = basePurchasesRequest.mProduct;
        this.mContinuationToken = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.solovyev.android.checkout.Request
    public final void start(IInAppBillingService iInAppBillingService, String str) throws RemoteException {
        Bundle request = request(iInAppBillingService, str);
        if (handleError(request)) {
            return;
        }
        try {
            String continuationTokenFromBundle = Purchases.getContinuationTokenFromBundle(request);
            List<Purchase> listFromBundle = Purchases.getListFromBundle(request);
            if (listFromBundle.isEmpty()) {
                onSuccess(new Purchases(this.mProduct, listFromBundle, continuationTokenFromBundle));
            } else {
                processPurchases(listFromBundle, continuationTokenFromBundle);
            }
        } catch (JSONException e) {
            onError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.solovyev.android.checkout.Request
    public String getCacheKey() {
        if (this.mContinuationToken != null) {
            return this.mProduct + "_" + this.mContinuationToken;
        }
        return this.mProduct;
    }
}
