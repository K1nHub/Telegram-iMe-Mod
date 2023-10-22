package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzcq implements DataApi.DataItemResult {
    private final Status zza;
    private final DataItem zzb;

    public zzcq(Status status, DataItem dataItem) {
        this.zza = status;
        this.zzb = dataItem;
    }

    @Override // com.google.android.gms.wearable.DataApi.DataItemResult
    public final DataItem getDataItem() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }
}
