package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@SafeParcelable.Class(creator = "WordBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzao extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzao> CREATOR = new zzar();
    @SafeParcelable.Field(m1089id = 3)
    public final zzab zza;
    @SafeParcelable.Field(m1089id = 5)
    public final String zzb;
    @SafeParcelable.Field(m1089id = 7)
    public final String zzc;
    @SafeParcelable.Field(m1089id = 2)
    private final zzal[] zzd;
    @SafeParcelable.Field(m1089id = 4)
    private final zzab zze;
    @SafeParcelable.Field(m1089id = 6)
    private final float zzf;
    @SafeParcelable.Field(m1089id = 8)
    private final boolean zzg;

    @SafeParcelable.Constructor
    public zzao(@SafeParcelable.Param(m1088id = 2) zzal[] zzalVarArr, @SafeParcelable.Param(m1088id = 3) zzab zzabVar, @SafeParcelable.Param(m1088id = 4) zzab zzabVar2, @SafeParcelable.Param(m1088id = 5) String str, @SafeParcelable.Param(m1088id = 6) float f, @SafeParcelable.Param(m1088id = 7) String str2, @SafeParcelable.Param(m1088id = 8) boolean z) {
        this.zzd = zzalVarArr;
        this.zza = zzabVar;
        this.zze = zzabVar2;
        this.zzb = str;
        this.zzf = f;
        this.zzc = str2;
        this.zzg = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zzd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zza, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zze, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzb, false);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzf);
        SafeParcelWriter.writeString(parcel, 7, this.zzc, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
