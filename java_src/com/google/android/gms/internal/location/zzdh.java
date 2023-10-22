package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@VisibleForTesting
@SafeParcelable.Class(creator = "ParcelableGeofenceCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzdh extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzdh> CREATOR = new zzdi();
    @SafeParcelable.Field(getter = "getRequestId", m1089id = 1)
    private final String zza;
    @SafeParcelable.Field(getter = "getExpirationTime", m1089id = 2)
    private final long zzb;
    @SafeParcelable.Field(getter = "getType", m1089id = 3)
    private final short zzc;
    @SafeParcelable.Field(getter = "getLatitude", m1089id = 4)
    private final double zzd;
    @SafeParcelable.Field(getter = "getLongitude", m1089id = 5)
    private final double zze;
    @SafeParcelable.Field(getter = "getRadius", m1089id = 6)
    private final float zzf;
    @SafeParcelable.Field(getter = "getTransitionTypes", m1089id = 7)
    private final int zzg;
    @SafeParcelable.Field(defaultValue = SessionDescription.SUPPORTED_SDP_VERSION, getter = "getNotificationResponsiveness", m1089id = 8)
    private final int zzh;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getLoiteringDelay", m1089id = 9)
    private final int zzi;

    @SafeParcelable.Constructor
    public zzdh(@SafeParcelable.Param(m1088id = 1) String str, @SafeParcelable.Param(m1088id = 7) int i, @SafeParcelable.Param(m1088id = 3) short s, @SafeParcelable.Param(m1088id = 4) double d, @SafeParcelable.Param(m1088id = 5) double d2, @SafeParcelable.Param(m1088id = 6) float f, @SafeParcelable.Param(m1088id = 2) long j, @SafeParcelable.Param(m1088id = 8) int i2, @SafeParcelable.Param(m1088id = 9) int i3) {
        if (str == null || str.length() > 100) {
            throw new IllegalArgumentException("requestId is null or too long: ".concat(String.valueOf(str)));
        }
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("invalid radius: " + f);
        } else if (d > 90.0d || d < -90.0d) {
            throw new IllegalArgumentException("invalid latitude: " + d);
        } else if (d2 > 180.0d || d2 < -180.0d) {
            throw new IllegalArgumentException("invalid longitude: " + d2);
        } else {
            int i4 = i & 7;
            if (i4 == 0) {
                throw new IllegalArgumentException("No supported transition specified: " + i);
            }
            this.zzc = s;
            this.zza = str;
            this.zzd = d;
            this.zze = d2;
            this.zzf = f;
            this.zzb = j;
            this.zzg = i4;
            this.zzh = i2;
            this.zzi = i3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdh) {
            zzdh zzdhVar = (zzdh) obj;
            if (this.zzf == zzdhVar.zzf && this.zzd == zzdhVar.zzd && this.zze == zzdhVar.zze && this.zzc == zzdhVar.zzc) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.location.Geofence
    public final long getExpirationTime() {
        return this.zzb;
    }

    @Override // com.google.android.gms.location.Geofence
    public final double getLatitude() {
        return this.zzd;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getLoiteringDelay() {
        return this.zzi;
    }

    @Override // com.google.android.gms.location.Geofence
    public final double getLongitude() {
        return this.zze;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getNotificationResponsiveness() {
        return this.zzh;
    }

    @Override // com.google.android.gms.location.Geofence
    public final float getRadius() {
        return this.zzf;
    }

    @Override // com.google.android.gms.location.Geofence
    public final String getRequestId() {
        return this.zza;
    }

    @Override // com.google.android.gms.location.Geofence
    public final int getTransitionTypes() {
        return this.zzg;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzd);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zze);
        return ((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.zzf)) * 31) + this.zzc) * 31) + this.zzg;
    }

    public final String toString() {
        Locale locale = Locale.US;
        Object[] objArr = new Object[9];
        short s = this.zzc;
        objArr[0] = s != -1 ? s != 1 ? "UNKNOWN" : "CIRCLE" : "INVALID";
        objArr[1] = this.zza.replaceAll("\\p{C}", "?");
        objArr[2] = Integer.valueOf(this.zzg);
        objArr[3] = Double.valueOf(this.zzd);
        objArr[4] = Double.valueOf(this.zze);
        objArr[5] = Float.valueOf(this.zzf);
        objArr[6] = Integer.valueOf(this.zzh / 1000);
        objArr[7] = Integer.valueOf(this.zzi);
        objArr[8] = Long.valueOf(this.zzb);
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", objArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeShort(parcel, 3, this.zzc);
        SafeParcelWriter.writeDouble(parcel, 4, this.zzd);
        SafeParcelWriter.writeDouble(parcel, 5, this.zze);
        SafeParcelWriter.writeFloat(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.writeInt(parcel, 8, this.zzh);
        SafeParcelWriter.writeInt(parcel, 9, this.zzi);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
