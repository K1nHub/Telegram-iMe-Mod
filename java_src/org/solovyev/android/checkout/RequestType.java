package org.solovyev.android.checkout;

import org.solovyev.android.checkout.Cache;
/* loaded from: classes4.dex */
enum RequestType {
    BILLING_SUPPORTED("supported", 86400000),
    GET_PURCHASES("purchases", 1200000),
    GET_PURCHASE_HISTORY("history", 0),
    GET_SKU_DETAILS("skus", 86400000),
    PURCHASE("purchase", 0),
    CHANGE_PURCHASE("change", 0),
    CONSUME_PURCHASE("consume", 0);
    
    final String cacheKeyName;
    final long expiresIn;

    RequestType(String str, long j) {
        this.cacheKeyName = str;
        this.expiresIn = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getCacheKeyName(int i) {
        return values()[i].cacheKeyName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cache.Key getCacheKey(String str) {
        return new Cache.Key(getCacheKeyType(), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCacheKeyType() {
        return ordinal();
    }
}
