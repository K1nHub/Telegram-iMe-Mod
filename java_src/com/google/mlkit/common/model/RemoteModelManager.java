package com.google.mlkit.common.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.inject.Provider;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes3.dex */
public class RemoteModelManager {
    private final Map<Class<? extends RemoteModel>, Provider<Object>> zza = new HashMap();

    @KeepForSdk
    public RemoteModelManager(Set<RemoteModelManagerRegistration> set) {
        for (RemoteModelManagerRegistration remoteModelManagerRegistration : set) {
            this.zza.put(remoteModelManagerRegistration.zza(), remoteModelManagerRegistration.zzb());
        }
    }

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    @KeepForSdk
    /* loaded from: classes3.dex */
    public static class RemoteModelManagerRegistration {
        private final Class<? extends RemoteModel> zza;
        private final Provider<Object> zzb;

        final Class<? extends RemoteModel> zza() {
            return this.zza;
        }

        final Provider<Object> zzb() {
            return this.zzb;
        }
    }
}
