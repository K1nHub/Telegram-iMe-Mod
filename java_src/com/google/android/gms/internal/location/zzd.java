package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@SafeParcelable.Class(creator = "ClientIdentityCreator")
/* loaded from: classes.dex */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    @SafeParcelable.Field(getter = "getUid", m1090id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getPid", m1090id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getPackageName", m1090id = 3)
    private final String zzc;
    @SafeParcelable.Field(getter = "getAttributionTag", m1090id = 4)
    private final String zzd;
    @SafeParcelable.Field(getter = "getClientSdkVersion", m1090id = 5)
    private final int zze;
    @SafeParcelable.Field(getter = "getListenerId", m1090id = 6)
    private final String zzf;
    @SafeParcelable.Field(getter = "getImpersonator", m1090id = 7)
    private final zzd zzg;
    @SafeParcelable.Field(defaultValueUnchecked = "com.google.common.collect.ImmutableList.of()", getter = "getClientFeatures", m1090id = 8)
    private final List zzh;

    static {
        Process.myUid();
        Process.myPid();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzd(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) int i2, @SafeParcelable.Param(m1089id = 3) String str, @SafeParcelable.Param(m1089id = 4) String str2, @SafeParcelable.Param(m1089id = 6) String str3, @SafeParcelable.Param(m1089id = 5) int i3, @SafeParcelable.Param(m1089id = 8) List list, @SafeParcelable.Param(m1089id = 7) zzd zzdVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = str;
        this.zzd = str2;
        this.zzf = str3;
        this.zze = i3;
        this.zzh = zzds.zzj(list);
        this.zzg = zzdVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzd) {
            zzd zzdVar = (zzd) obj;
            if (this.zza == zzdVar.zza && this.zzb == zzdVar.zzb && this.zze == zzdVar.zze && this.zzc.equals(zzdVar.zzc) && zzdl.zza(this.zzd, zzdVar.zzd) && zzdl.zza(this.zzf, zzdVar.zzf) && zzdl.zza(this.zzg, zzdVar.zzg) && this.zzh.equals(zzdVar.zzh)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zza), this.zzc, this.zzd, this.zzf});
    }

    public final String toString() {
        int length = this.zzc.length() + 18;
        String str = this.zzd;
        if (str != null) {
            length += str.length();
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append(this.zza);
        sb.append("/");
        sb.append(this.zzc);
        if (this.zzd != null) {
            sb.append("[");
            if (this.zzd.startsWith(this.zzc)) {
                sb.append((CharSequence) this.zzd, this.zzc.length(), this.zzd.length());
            } else {
                sb.append(this.zzd);
            }
            sb.append("]");
        }
        if (this.zzf != null) {
            sb.append("/");
            sb.append(Integer.toHexString(this.zzf.hashCode()));
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.writeTypedList(parcel, 8, this.zzh, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
