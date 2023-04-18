package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@SafeParcelable.Class(creator = "BoundingBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzaa();
    @SafeParcelable.Field(m775id = 2)
    public final int zza;
    @SafeParcelable.Field(m775id = 3)
    public final int zzb;
    @SafeParcelable.Field(m775id = 4)
    public final int zzc;
    @SafeParcelable.Field(m775id = 5)
    public final int zzd;
    @SafeParcelable.Field(m775id = 6)
    public final float zze;

    @SafeParcelable.Constructor
    public zzab(@SafeParcelable.Param(m774id = 2) int i, @SafeParcelable.Param(m774id = 3) int i2, @SafeParcelable.Param(m774id = 4) int i3, @SafeParcelable.Param(m774id = 5) int i4, @SafeParcelable.Param(m774id = 6) float f) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.writeFloat(parcel, 6, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
