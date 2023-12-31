package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzgk implements Result {
    private final Status zza;
    private final String zzb;

    public zzgk(Status status, String str) {
        this.zza = status;
        this.zzb = str;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }

    public final String zza() {
        return this.zzb;
    }
}
