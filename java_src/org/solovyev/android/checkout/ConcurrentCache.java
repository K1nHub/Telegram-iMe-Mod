package org.solovyev.android.checkout;

import org.solovyev.android.checkout.Cache;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ConcurrentCache implements Cache {
    private final Cache mCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcurrentCache(Cache cache) {
        this.mCache = cache;
    }

    public boolean hasCache() {
        return this.mCache != null;
    }

    @Override // org.solovyev.android.checkout.Cache
    public Cache.Entry get(Cache.Key key) {
        if (this.mCache == null) {
            return null;
        }
        synchronized (this) {
            Cache.Entry entry = this.mCache.get(key);
            if (entry == null) {
                Billing.debug("Cache", "Key=" + key + " is not in the cache");
                return null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis >= entry.expiresAt) {
                Billing.debug("Cache", "Key=" + key + " is in the cache but was expired at " + entry.expiresAt + ", now is " + currentTimeMillis);
                this.mCache.remove(key);
                return null;
            }
            Billing.debug("Cache", "Key=" + key + " is in the cache");
            return entry;
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void put(Cache.Key key, Cache.Entry entry) {
        if (this.mCache == null) {
            return;
        }
        synchronized (this) {
            Billing.debug("Cache", "Adding entry with key=" + key + " to the cache");
            this.mCache.put(key, entry);
        }
    }

    public void putIfNotExist(Cache.Key key, Cache.Entry entry) {
        if (this.mCache == null) {
            return;
        }
        synchronized (this) {
            if (this.mCache.get(key) == null) {
                Billing.debug("Cache", "Adding entry with key=" + key + " to the cache");
                this.mCache.put(key, entry);
            } else {
                Billing.debug("Cache", "Entry with key=" + key + " is already in the cache, won't add");
            }
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void remove(Cache.Key key) {
        if (this.mCache == null) {
            return;
        }
        synchronized (this) {
            Billing.debug("Cache", "Removing entry with key=" + key + " from the cache");
            this.mCache.remove(key);
        }
    }

    @Override // org.solovyev.android.checkout.Cache
    public void removeAll(int i) {
        if (this.mCache == null) {
            return;
        }
        synchronized (this) {
            Billing.debug("Cache", "Removing all entries with type=" + i + " from the cache");
            this.mCache.removeAll(i);
        }
    }
}
