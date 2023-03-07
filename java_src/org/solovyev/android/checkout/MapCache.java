package org.solovyev.android.checkout;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.solovyev.android.checkout.Cache;
/* loaded from: classes4.dex */
class MapCache implements Cache {
    private final Map<Cache.Key, Cache.Entry> mMap = new HashMap();

    @Override // org.solovyev.android.checkout.Cache
    public Cache.Entry get(Cache.Key key) {
        return this.mMap.get(key);
    }

    @Override // org.solovyev.android.checkout.Cache
    public void put(Cache.Key key, Cache.Entry entry) {
        this.mMap.put(key, entry);
    }

    @Override // org.solovyev.android.checkout.Cache
    public void remove(Cache.Key key) {
        this.mMap.remove(key);
    }

    @Override // org.solovyev.android.checkout.Cache
    public void removeAll(int i) {
        Iterator<Map.Entry<Cache.Key, Cache.Entry>> it = this.mMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().type == i) {
                it.remove();
            }
        }
    }
}
