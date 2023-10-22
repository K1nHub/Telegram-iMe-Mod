package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;
import com.stripe.android.model.Card;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public final class zzdc implements DataEvent {
    private final int zza;
    private final DataItem zzb;

    public zzdc(DataEvent dataEvent) {
        this.zza = dataEvent.getType();
        this.zzb = new zzdh(dataEvent.getDataItem());
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ DataEvent freeze() {
        return this;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final DataItem getDataItem() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.DataEvent
    public final int getType() {
        return this.zza;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        int i = this.zza;
        String str = i == 1 ? "changed" : i == 2 ? "deleted" : Card.FUNDING_UNKNOWN;
        String obj = this.zzb.toString();
        return "DataEventEntity{ type=" + str + ", dataitem=" + obj + " }";
    }
}
