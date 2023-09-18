package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes4.dex */
public final class zzfv implements Result {
    private final Status zza;
    private final byte[] zzb;

    public zzfv(Status status, int i, byte[] bArr) {
        this.zza = status;
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }

    public final byte[] zza() {
        return this.zzb;
    }
}
