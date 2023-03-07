package org.solovyev.android.checkout;

import android.os.Bundle;
import java.util.List;
/* loaded from: classes4.dex */
public interface BillingRequests {
    int getAllPurchases(String str, RequestListener<Purchases> requestListener);

    int getSkus(String str, List<String> list, RequestListener<Skus> requestListener);

    int purchase(String str, String str2, String str3, Bundle bundle, PurchaseFlow purchaseFlow);
}
