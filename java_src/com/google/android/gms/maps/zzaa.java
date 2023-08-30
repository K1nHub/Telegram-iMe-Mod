package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
/* loaded from: classes3.dex */
public final class zzaa extends com.google.android.gms.maps.internal.zzc {
    private final GoogleMap.CancelableCallback zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(GoogleMap.CancelableCallback cancelableCallback) {
        this.zza = cancelableCallback;
    }

    @Override // com.google.android.gms.maps.internal.zzd
    public final void zzb() {
        this.zza.onCancel();
    }

    @Override // com.google.android.gms.maps.internal.zzd
    public final void zzc() {
        this.zza.onFinish();
    }
}
