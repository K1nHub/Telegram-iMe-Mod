package org.solovyev.android.checkout;

import java.util.List;
/* loaded from: classes4.dex */
public interface PurchaseVerifier {
    void verify(List<Purchase> list, RequestListener<List<Purchase>> requestListener);
}
