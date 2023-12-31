package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@SafeParcelable.Class(creator = "AppMetadataCreator")
@SafeParcelable.Reserved({1, 17, 20})
/* loaded from: classes3.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    @SafeParcelable.Field(m1090id = 2)
    public final String zza;
    @SafeParcelable.Field(m1090id = 3)
    public final String zzb;
    @SafeParcelable.Field(m1090id = 4)
    public final String zzc;
    @SafeParcelable.Field(m1090id = 5)
    public final String zzd;
    @SafeParcelable.Field(m1090id = 6)
    public final long zze;
    @SafeParcelable.Field(m1090id = 7)
    public final long zzf;
    @SafeParcelable.Field(m1090id = 8)
    public final String zzg;
    @SafeParcelable.Field(defaultValue = "true", m1090id = 9)
    public final boolean zzh;
    @SafeParcelable.Field(m1090id = 10)
    public final boolean zzi;
    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MIN_VALUE", m1090id = 11)
    public final long zzj;
    @SafeParcelable.Field(m1090id = 12)
    public final String zzk;
    @SafeParcelable.Field(m1090id = 13)
    public final long zzl;
    @SafeParcelable.Field(m1090id = 14)
    public final long zzm;
    @SafeParcelable.Field(m1090id = 15)
    public final int zzn;
    @SafeParcelable.Field(defaultValue = "true", m1090id = 16)
    public final boolean zzo;
    @SafeParcelable.Field(m1090id = 18)
    public final boolean zzp;
    @SafeParcelable.Field(m1090id = 19)
    public final String zzq;
    @SafeParcelable.Field(m1090id = 21)
    public final Boolean zzr;
    @SafeParcelable.Field(m1090id = 22)
    public final long zzs;
    @SafeParcelable.Field(m1090id = 23)
    public final List<String> zzt;
    @SafeParcelable.Field(m1090id = 24)
    public final String zzu;
    @SafeParcelable.Field(defaultValue = "", m1090id = 25)
    public final String zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List<String> list, String str8, String str9) {
        Preconditions.checkNotEmpty(str);
        this.zza = str;
        this.zzb = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.zzc = str3;
        this.zzj = j;
        this.zzd = str4;
        this.zze = j2;
        this.zzf = j3;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeLong(parcel, 6, this.zze);
        SafeParcelWriter.writeLong(parcel, 7, this.zzf);
        SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzh);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzi);
        SafeParcelWriter.writeLong(parcel, 11, this.zzj);
        SafeParcelWriter.writeString(parcel, 12, this.zzk, false);
        SafeParcelWriter.writeLong(parcel, 13, this.zzl);
        SafeParcelWriter.writeLong(parcel, 14, this.zzm);
        SafeParcelWriter.writeInt(parcel, 15, this.zzn);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzo);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzp);
        SafeParcelWriter.writeString(parcel, 19, this.zzq, false);
        SafeParcelWriter.writeBooleanObject(parcel, 21, this.zzr, false);
        SafeParcelWriter.writeLong(parcel, 22, this.zzs);
        SafeParcelWriter.writeStringList(parcel, 23, this.zzt, false);
        SafeParcelWriter.writeString(parcel, 24, this.zzu, false);
        SafeParcelWriter.writeString(parcel, 25, this.zzv, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzp(@SafeParcelable.Param(m1089id = 2) String str, @SafeParcelable.Param(m1089id = 3) String str2, @SafeParcelable.Param(m1089id = 4) String str3, @SafeParcelable.Param(m1089id = 5) String str4, @SafeParcelable.Param(m1089id = 6) long j, @SafeParcelable.Param(m1089id = 7) long j2, @SafeParcelable.Param(m1089id = 8) String str5, @SafeParcelable.Param(m1089id = 9) boolean z, @SafeParcelable.Param(m1089id = 10) boolean z2, @SafeParcelable.Param(m1089id = 11) long j3, @SafeParcelable.Param(m1089id = 12) String str6, @SafeParcelable.Param(m1089id = 13) long j4, @SafeParcelable.Param(m1089id = 14) long j5, @SafeParcelable.Param(m1089id = 15) int i, @SafeParcelable.Param(m1089id = 16) boolean z3, @SafeParcelable.Param(m1089id = 18) boolean z4, @SafeParcelable.Param(m1089id = 19) String str7, @SafeParcelable.Param(m1089id = 21) Boolean bool, @SafeParcelable.Param(m1089id = 22) long j6, @SafeParcelable.Param(m1089id = 23) List<String> list, @SafeParcelable.Param(m1089id = 24) String str8, @SafeParcelable.Param(m1089id = 25) String str9) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzj = j3;
        this.zzd = str4;
        this.zze = j;
        this.zzf = j2;
        this.zzg = str5;
        this.zzh = z;
        this.zzi = z2;
        this.zzk = str6;
        this.zzl = j4;
        this.zzm = j5;
        this.zzn = i;
        this.zzo = z3;
        this.zzp = z4;
        this.zzq = str7;
        this.zzr = bool;
        this.zzs = j6;
        this.zzt = list;
        this.zzu = str8;
        this.zzv = str9;
    }
}
