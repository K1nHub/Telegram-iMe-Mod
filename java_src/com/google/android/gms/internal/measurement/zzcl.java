package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
@SafeParcelable.Class(creator = "InitializationParamsCreator")
/* loaded from: classes.dex */
public final class zzcl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcl> CREATOR = new zzcm();
    @SafeParcelable.Field(m1089id = 1)
    public final long zza;
    @SafeParcelable.Field(m1089id = 2)
    public final long zzb;
    @SafeParcelable.Field(m1089id = 3)
    public final boolean zzc;
    @SafeParcelable.Field(m1089id = 4)
    public final String zzd;
    @SafeParcelable.Field(m1089id = 5)
    public final String zze;
    @SafeParcelable.Field(m1089id = 6)
    public final String zzf;
    @SafeParcelable.Field(m1089id = 7)
    public final Bundle zzg;
    @SafeParcelable.Field(m1089id = 8)
    public final String zzh;

    @SafeParcelable.Constructor
    public zzcl(@SafeParcelable.Param(m1088id = 1) long j, @SafeParcelable.Param(m1088id = 2) long j2, @SafeParcelable.Param(m1088id = 3) boolean z, @SafeParcelable.Param(m1088id = 4) String str, @SafeParcelable.Param(m1088id = 5) String str2, @SafeParcelable.Param(m1088id = 6) String str3, @SafeParcelable.Param(m1088id = 7) Bundle bundle, @SafeParcelable.Param(m1088id = 8) String str4) {
        this.zza = j;
        this.zzb = j2;
        this.zzc = z;
        this.zzd = str;
        this.zze = str2;
        this.zzf = str3;
        this.zzg = bundle;
        this.zzh = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.zza);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeBundle(parcel, 7, this.zzg, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzh, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
