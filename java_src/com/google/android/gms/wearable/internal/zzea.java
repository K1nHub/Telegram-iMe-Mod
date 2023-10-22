package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "GetCloudSyncSettingCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzea extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzea> CREATOR = new zzdz();
    @SafeParcelable.Field(m1089id = 2)
    public final int zza;
    @SafeParcelable.Field(m1089id = 3)
    public final boolean zzb;

    @SafeParcelable.Constructor
    public zzea(@SafeParcelable.Param(m1088id = 2) int i, @SafeParcelable.Param(m1088id = 3) boolean z) {
        this.zza = i;
        this.zzb = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
