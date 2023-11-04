package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "AmsEntityUpdateParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzi extends AbstractSafeParcelable implements com.google.android.gms.wearable.zza {
    public static final Parcelable.Creator<zzi> CREATOR = new zzj();
    @SafeParcelable.Field(getter = "getEntityId", m1090id = 2)
    private final byte zza;
    @SafeParcelable.Field(getter = "getAttributeId", m1090id = 3)
    private final byte zzb;
    @SafeParcelable.Field(getter = "getValue", m1090id = 4)
    private final String zzc;

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(m1089id = 2) byte b, @SafeParcelable.Param(m1089id = 3) byte b2, @SafeParcelable.Param(m1089id = 4) String str) {
        this.zza = b;
        this.zzb = b2;
        this.zzc = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzi.class != obj.getClass()) {
            return false;
        }
        zzi zziVar = (zzi) obj;
        return this.zza == zziVar.zza && this.zzb == zziVar.zzb && this.zzc.equals(zziVar.zzc);
    }

    public final int hashCode() {
        return ((((this.zza + 31) * 31) + this.zzb) * 31) + this.zzc.hashCode();
    }

    public final String toString() {
        byte b = this.zza;
        byte b2 = this.zzb;
        String str = this.zzc;
        return "AmsEntityUpdateParcelable{, mEntityId=" + ((int) b) + ", mAttributeId=" + ((int) b2) + ", mValue='" + str + "'}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByte(parcel, 2, this.zza);
        SafeParcelWriter.writeByte(parcel, 3, this.zzb);
        SafeParcelWriter.writeString(parcel, 4, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
