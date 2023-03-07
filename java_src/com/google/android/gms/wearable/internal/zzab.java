package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityInfo;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzab implements CapabilityApi.CapabilityListener {
    final CapabilityApi.CapabilityListener zza;
    final String zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(CapabilityApi.CapabilityListener capabilityListener, String str) {
        this.zza = capabilityListener;
        this.zzb = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzab.class != obj.getClass()) {
            return false;
        }
        zzab zzabVar = (zzab) obj;
        if (this.zza.equals(zzabVar.zza)) {
            return this.zzb.equals(zzabVar.zzb);
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    @Override // com.google.android.gms.wearable.CapabilityApi.CapabilityListener
    public final void onCapabilityChanged(CapabilityInfo capabilityInfo) {
        this.zza.onCapabilityChanged(capabilityInfo);
    }
}
