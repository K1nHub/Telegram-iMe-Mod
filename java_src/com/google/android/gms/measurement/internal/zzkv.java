package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes3.dex */
public final class zzkv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzkv> CREATOR = new zzkw();
    @SafeParcelable.Field(m789id = 1)
    public final int zza;
    @SafeParcelable.Field(m789id = 2)
    public final String zzb;
    @SafeParcelable.Field(m789id = 3)
    public final long zzc;
    @SafeParcelable.Field(m789id = 4)
    public final Long zzd;
    @SafeParcelable.Field(m789id = 6)
    public final String zze;
    @SafeParcelable.Field(m789id = 7)
    public final String zzf;
    @SafeParcelable.Field(m789id = 8)
    public final Double zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzkv(@SafeParcelable.Param(m788id = 1) int i, @SafeParcelable.Param(m788id = 2) String str, @SafeParcelable.Param(m788id = 3) long j, @SafeParcelable.Param(m788id = 4) Long l, @SafeParcelable.Param(m788id = 5) Float f, @SafeParcelable.Param(m788id = 6) String str2, @SafeParcelable.Param(m788id = 7) String str3, @SafeParcelable.Param(m788id = 8) Double d) {
        this.zza = i;
        this.zzb = str;
        this.zzc = j;
        this.zzd = l;
        if (i == 1) {
            this.zzg = f != null ? Double.valueOf(f.doubleValue()) : null;
        } else {
            this.zzg = d;
        }
        this.zze = str2;
        this.zzf = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzkw.zza(this, parcel, i);
    }

    public final Object zza() {
        Long l = this.zzd;
        if (l != null) {
            return l;
        }
        Double d = this.zzg;
        if (d != null) {
            return d;
        }
        String str = this.zze;
        if (str != null) {
            return str;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkv(zzkx zzkxVar) {
        this(zzkxVar.zzc, zzkxVar.zzd, zzkxVar.zze, zzkxVar.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkv(String str, long j, Object obj, String str2) {
        Preconditions.checkNotEmpty(str);
        this.zza = 2;
        this.zzb = str;
        this.zzc = j;
        this.zzf = str2;
        if (obj == null) {
            this.zzd = null;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof Long) {
            this.zzd = (Long) obj;
            this.zzg = null;
            this.zze = null;
        } else if (obj instanceof String) {
            this.zzd = null;
            this.zzg = null;
            this.zze = (String) obj;
        } else if (obj instanceof Double) {
            this.zzd = null;
            this.zzg = (Double) obj;
            this.zze = null;
        } else {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }
}
