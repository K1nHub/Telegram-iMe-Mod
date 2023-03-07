package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.EntityBuffer;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.wearable.internal.zzdk;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@VisibleForTesting
/* loaded from: classes3.dex */
public class DataItemBuffer extends EntityBuffer<DataItem> implements Result {
    private final Status zza;

    public DataItemBuffer(DataHolder dataHolder) {
        super(dataHolder);
        this.zza = new Status(dataHolder.getStatusCode());
    }

    @Override // com.google.android.gms.common.data.EntityBuffer
    protected final /* bridge */ /* synthetic */ DataItem getEntry(int i, int i2) {
        return new zzdk(this.mDataHolder, i, i2);
    }

    @Override // com.google.android.gms.common.data.EntityBuffer
    protected final String getPrimaryDataMarkerColumn() {
        return "path";
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zza;
    }
}
