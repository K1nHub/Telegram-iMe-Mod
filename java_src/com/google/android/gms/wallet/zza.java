package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "AddressCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes4.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    @SafeParcelable.Field(m797id = 2)
    String zza;
    @SafeParcelable.Field(m797id = 3)
    String zzb;
    @SafeParcelable.Field(m797id = 4)
    String zzc;
    @SafeParcelable.Field(m797id = 5)
    String zzd;
    @SafeParcelable.Field(m797id = 6)
    String zze;
    @SafeParcelable.Field(m797id = 7)
    String zzf;
    @SafeParcelable.Field(m797id = 8)
    String zzg;
    @SafeParcelable.Field(m797id = 9)
    String zzh;
    @SafeParcelable.Field(m797id = 10)
    String zzi;
    @SafeParcelable.Field(m797id = 11)
    boolean zzj;
    @SafeParcelable.Field(m797id = 12)
    String zzk;

    zza() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzh, false);
        SafeParcelWriter.writeString(parcel, 10, this.zzi, false);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzj);
        SafeParcelWriter.writeString(parcel, 12, this.zzk, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(m796id = 2) String str, @SafeParcelable.Param(m796id = 3) String str2, @SafeParcelable.Param(m796id = 4) String str3, @SafeParcelable.Param(m796id = 5) String str4, @SafeParcelable.Param(m796id = 6) String str5, @SafeParcelable.Param(m796id = 7) String str6, @SafeParcelable.Param(m796id = 8) String str7, @SafeParcelable.Param(m796id = 9) String str8, @SafeParcelable.Param(m796id = 10) String str9, @SafeParcelable.Param(m796id = 11) boolean z, @SafeParcelable.Param(m796id = 12) String str10) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
        this.zzg = str7;
        this.zzh = str8;
        this.zzi = str9;
        this.zzj = z;
        this.zzk = str10;
    }
}
