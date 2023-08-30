package org.solovyev.android.checkout;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DefaultPurchaseVerifier implements PurchaseVerifier {
    static final Set<String> TEST_SKUS = new HashSet(Arrays.asList("android.test.purchased", "android.test.canceled", "android.test.refunded", "android.test.item_unavailable"));
    private final String mPublicKey;

    public DefaultPurchaseVerifier(String str) {
        this.mPublicKey = str;
    }

    @Override // org.solovyev.android.checkout.PurchaseVerifier
    public void verify(List<Purchase> list, RequestListener<List<Purchase>> requestListener) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Purchase purchase : list) {
            if (TEST_SKUS.contains(purchase.sku)) {
                Billing.debug("Auto-verifying a test purchase: " + purchase);
                arrayList.add(purchase);
            } else if (Security.verifyPurchase(this.mPublicKey, purchase.data, purchase.signature)) {
                arrayList.add(purchase);
            } else if (TextUtils.isEmpty(purchase.signature)) {
                Billing.error("Cannot verify purchase: " + purchase + ". Signature is empty");
            } else {
                Billing.error("Cannot verify purchase: " + purchase + ". Wrong signature");
            }
        }
        requestListener.onSuccess(arrayList);
    }
}
