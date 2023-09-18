package org.solovyev.android.checkout;

import java.util.List;
/* loaded from: classes6.dex */
public interface PurchaseVerifier {
    void verify(List<Purchase> list, RequestListener<List<Purchase>> requestListener);
}
