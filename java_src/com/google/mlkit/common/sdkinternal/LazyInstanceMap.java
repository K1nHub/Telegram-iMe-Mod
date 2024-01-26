package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@18.10.0 */
@KeepForSdk
/* loaded from: classes3.dex */
public abstract class LazyInstanceMap<K, V> {
    private final Map zza = new HashMap();

    @KeepForSdk
    protected abstract V create(K k);

    @KeepForSdk
    public V get(K k) {
        synchronized (this.zza) {
            if (this.zza.containsKey(k)) {
                return (V) this.zza.get(k);
            }
            V create = create(k);
            this.zza.put(k, create);
            return create;
        }
    }
}
