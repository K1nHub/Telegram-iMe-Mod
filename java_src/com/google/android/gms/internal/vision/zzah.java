package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@SafeParcelable.Class(creator = "LineBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new zzag();
    @SafeParcelable.Field(m775id = 2)
    public final zzao[] zza;
    @SafeParcelable.Field(m775id = 3)
    public final zzab zzb;
    @SafeParcelable.Field(m775id = 6)
    public final String zzc;
    @SafeParcelable.Field(m775id = 8)
    public final String zzd;
    @SafeParcelable.Field(m775id = 10)
    public final boolean zze;
    @SafeParcelable.Field(m775id = 11)
    public final int zzf;
    @SafeParcelable.Field(m775id = 12)
    public final int zzg;
    @SafeParcelable.Field(m775id = 4)
    private final zzab zzh;
    @SafeParcelable.Field(m775id = 5)
    private final zzab zzi;
    @SafeParcelable.Field(m775id = 7)
    private final float zzj;
    @SafeParcelable.Field(m775id = 9)
    private final int zzk;

    @SafeParcelable.Constructor
    public zzah(@SafeParcelable.Param(m774id = 2) zzao[] zzaoVarArr, @SafeParcelable.Param(m774id = 3) zzab zzabVar, @SafeParcelable.Param(m774id = 4) zzab zzabVar2, @SafeParcelable.Param(m774id = 5) zzab zzabVar3, @SafeParcelable.Param(m774id = 6) String str, @SafeParcelable.Param(m774id = 7) float f, @SafeParcelable.Param(m774id = 8) String str2, @SafeParcelable.Param(m774id = 9) int i, @SafeParcelable.Param(m774id = 10) boolean z, @SafeParcelable.Param(m774id = 11) int i2, @SafeParcelable.Param(m774id = 12) int i3) {
        this.zza = zzaoVarArr;
        this.zzb = zzabVar;
        this.zzh = zzabVar2;
        this.zzi = zzabVar3;
        this.zzc = str;
        this.zzj = f;
        this.zzd = str2;
        this.zzk = i;
        this.zze = z;
        this.zzf = i2;
        this.zzg = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zza, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzi, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzc, false);
        SafeParcelWriter.writeFloat(parcel, 7, this.zzj);
        SafeParcelWriter.writeString(parcel, 8, this.zzd, false);
        SafeParcelWriter.writeInt(parcel, 9, this.zzk);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zze);
        SafeParcelWriter.writeInt(parcel, 11, this.zzf);
        SafeParcelWriter.writeInt(parcel, 12, this.zzg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
