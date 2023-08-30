package org.solovyev.android.checkout;

import org.solovyev.android.checkout.Cache;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class SafeCache implements Cache {
    private final Cache mCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeCache(Cache cache) {
        this.mCache = cache;
    }

    @Override // org.solovyev.android.checkout.Cache
    public Cache.Entry get(Cache.Key key) {
        try {
            return this.mCache.get(key);
        } catch (Exception e) {
            Billing.error(e);
            return null;
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void put(Cache.Key key, Cache.Entry entry) {
        try {
            this.mCache.put(key, entry);
        } catch (Exception e) {
            Billing.error(e);
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void remove(Cache.Key key) {
        try {
            this.mCache.remove(key);
        } catch (Exception e) {
            Billing.error(e);
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void removeAll(int i) {
        try {
            this.mCache.removeAll(i);
        } catch (Exception e) {
            Billing.error(e);
        }
    }
}
