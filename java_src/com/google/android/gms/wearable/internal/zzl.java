package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "AncsNotificationParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzl extends AbstractSafeParcelable implements com.google.android.gms.wearable.zzb {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    @SafeParcelable.Field(getter = "getId", m789id = 2)
    private final int zza;
    @SafeParcelable.Field(getter = "getAppId", m789id = 3)
    private final String zzb;
    @SafeParcelable.Field(getter = "getDateTime", m789id = 4)
    private final String zzc;
    @SafeParcelable.Field(getter = "getNotificationText", m789id = 5)
    private final String zzd;
    @SafeParcelable.Field(getter = "getTitle", m789id = 6)
    private final String zze;
    @SafeParcelable.Field(getter = "getSubtitle", m789id = 7)
    private final String zzf;
    @SafeParcelable.Field(getter = "getDisplayName", m789id = 8)
    private final String zzg;
    @SafeParcelable.Field(getter = "getEventId", m789id = 9)
    private final byte zzh;
    @SafeParcelable.Field(getter = "getEventFlags", m789id = 10)
    private final byte zzi;
    @SafeParcelable.Field(getter = "getCategoryId", m789id = 11)
    private final byte zzj;
    @SafeParcelable.Field(getter = "getCategoryCount", m789id = 12)
    private final byte zzk;
    @SafeParcelable.Field(getter = "getPackageName", m789id = 13)
    private final String zzl;

    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) String str, @SafeParcelable.Param(m788id = 4) String str2, @SafeParcelable.Param(m788id = 5) String str3, @SafeParcelable.Param(m788id = 6) String str4, @SafeParcelable.Param(m788id = 7) String str5, @SafeParcelable.Param(m788id = 8) String str6, @SafeParcelable.Param(m788id = 9) byte b, @SafeParcelable.Param(m788id = 10) byte b2, @SafeParcelable.Param(m788id = 11) byte b3, @SafeParcelable.Param(m788id = 12) byte b4, @SafeParcelable.Param(m788id = 13) String str7) {
        this.zza = i;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
        this.zzg = str6;
        this.zzh = b;
        this.zzi = b2;
        this.zzj = b3;
        this.zzk = b4;
        this.zzl = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzl.class != obj.getClass()) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        if (this.zza == zzlVar.zza && this.zzh == zzlVar.zzh && this.zzi == zzlVar.zzi && this.zzj == zzlVar.zzj && this.zzk == zzlVar.zzk && this.zzb.equals(zzlVar.zzb)) {
            String str = this.zzc;
            if (str == null ? zzlVar.zzc == null : str.equals(zzlVar.zzc)) {
                if (this.zzd.equals(zzlVar.zzd) && this.zze.equals(zzlVar.zze) && this.zzf.equals(zzlVar.zzf)) {
                    String str2 = this.zzg;
                    if (str2 == null ? zzlVar.zzg == null : str2.equals(zzlVar.zzg)) {
                        String str3 = this.zzl;
                        if (str3 != null) {
                            return str3.equals(zzlVar.zzl);
                        }
                        return zzlVar.zzl == null;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((this.zza + 31) * 31) + this.zzb.hashCode()) * 31;
        String str = this.zzc;
        int hashCode2 = (((((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.zzd.hashCode()) * 31) + this.zze.hashCode()) * 31) + this.zzf.hashCode()) * 31;
        String str2 = this.zzg;
        int hashCode3 = (((((((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.zzh) * 31) + this.zzi) * 31) + this.zzj) * 31) + this.zzk) * 31;
        String str3 = this.zzl;
        return hashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        int i = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        byte b = this.zzh;
        byte b2 = this.zzi;
        byte b3 = this.zzj;
        byte b4 = this.zzk;
        String str3 = this.zzl;
        return "AncsNotificationParcelable{, id=" + i + ", appId='" + str + "', dateTime='" + str2 + "', eventId=" + ((int) b) + ", eventFlags=" + ((int) b2) + ", categoryId=" + ((int) b3) + ", categoryCount=" + ((int) b4) + ", packageName='" + str3 + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 6, this.zze, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        String str = this.zzg;
        if (str == null) {
            str = this.zzb;
        }
        SafeParcelWriter.writeString(parcel, 8, str, false);
        SafeParcelWriter.writeByte(parcel, 9, this.zzh);
        SafeParcelWriter.writeByte(parcel, 10, this.zzi);
        SafeParcelWriter.writeByte(parcel, 11, this.zzj);
        SafeParcelWriter.writeByte(parcel, 12, this.zzk);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
