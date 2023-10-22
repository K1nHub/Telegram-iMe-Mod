package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "RpcResponseCreator")
/* loaded from: classes3.dex */
public final class zzha extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzha> CREATOR = new zzhb();
    @SafeParcelable.Field(m1089id = 1)
    public final int zza;
    @SafeParcelable.Field(m1089id = 2)
    public final int zzb;
    @SafeParcelable.Field(m1089id = 3)
    public final byte[] zzc;

    @SafeParcelable.Constructor
    public zzha(@SafeParcelable.Param(m1088id = 1) int i, @SafeParcelable.Param(m1088id = 2) int i2, @SafeParcelable.Param(m1088id = 3) byte[] bArr) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
