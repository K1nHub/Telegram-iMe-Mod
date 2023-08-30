package org.solovyev.android.checkout;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
final class GetSkuDetailsRequest extends Request<Skus> {
    private final String mProduct;
    private final ArrayList<String> mSkus;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GetSkuDetailsRequest(String str, List<String> list) {
        super(RequestType.GET_SKU_DETAILS);
        this.mProduct = str;
        ArrayList<String> arrayList = new ArrayList<>(list);
        this.mSkus = arrayList;
        Collections.sort(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.solovyev.android.checkout.Request
    public void start(IInAppBillingService iInAppBillingService, String str) throws RemoteException, RequestException {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < this.mSkus.size()) {
            int i2 = i + 20;
            Skus skuDetails = getSkuDetails(iInAppBillingService, str, new ArrayList<>(this.mSkus.subList(i, Math.min(this.mSkus.size(), i2))));
            if (skuDetails == null) {
                return;
            }
            arrayList.addAll(skuDetails.list);
            i = i2;
        }
        onSuccess(new Skus(this.mProduct, arrayList));
    }

    private Skus getSkuDetails(IInAppBillingService iInAppBillingService, String str, ArrayList<String> arrayList) throws RemoteException, RequestException {
        arrayList.size();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
        Bundle skuDetails = iInAppBillingService.getSkuDetails(3, str, this.mProduct, bundle);
        if (handleError(skuDetails)) {
            return null;
        }
        return Skus.fromBundle(skuDetails, this.mProduct);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.solovyev.android.checkout.Request
    public String getCacheKey() {
        if (this.mSkus.size() == 1) {
            return this.mProduct + "_" + this.mSkus.get(0);
        }
        StringBuilder sb = new StringBuilder(this.mSkus.size() * 5);
        sb.append("[");
        for (int i = 0; i < this.mSkus.size(); i++) {
            if (i > 0) {
                sb.append(",");
            }
            sb.append(this.mSkus.get(i));
        }
        sb.append("]");
        return this.mProduct + "_" + sb.toString();
    }
}
