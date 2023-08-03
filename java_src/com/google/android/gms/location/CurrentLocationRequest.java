package com.google.android.gms.location;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzdj;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@SafeParcelable.Class(creator = "CurrentLocationRequestCreator")
/* loaded from: classes3.dex */
public final class CurrentLocationRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CurrentLocationRequest> CREATOR = new zzj();
    @SafeParcelable.Field(defaultValueUnchecked = "Long.MAX_VALUE", getter = "getMaxUpdateAgeMillis", m797id = 1)
    private final long zza;
    @SafeParcelable.Field(defaultValueUnchecked = "Granularity.GRANULARITY_PERMISSION_LEVEL", getter = "getGranularity", m797id = 2)
    private final int zzb;
    @SafeParcelable.Field(defaultValueUnchecked = "Priority.PRIORITY_BALANCED_POWER_ACCURACY", getter = "getPriority", m797id = 3)
    private final int zzc;
    @SafeParcelable.Field(defaultValueUnchecked = "Long.MAX_VALUE", getter = "getDurationMillis", m797id = 4)
    private final long zzd;
    @SafeParcelable.Field(defaultValue = "false", getter = "isBypass", m797id = 5)
    private final boolean zze;
    @SafeParcelable.Field(defaultValueUnchecked = "ThrottleBehavior.THROTTLE_BACKGROUND", getter = "getThrottleBehavior", m797id = 7)
    private final int zzf;
    @SafeParcelable.Field(getter = "getModuleId", m797id = 8)
    private final String zzg;
    @SafeParcelable.Field(defaultValueUnchecked = "new android.os.WorkSource()", getter = "getWorkSource", m797id = 6)
    private final WorkSource zzh;
    @SafeParcelable.Field(getter = "getImpersonation", m797id = 9)
    private final com.google.android.gms.internal.location.zzd zzi;

    /* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
    /* loaded from: classes3.dex */
    public static final class Builder {
        private long zza;
        private int zzb;
        private int zzc;
        private long zzd;
        private boolean zze;
        private int zzf;
        private String zzg;
        private WorkSource zzh;
        private com.google.android.gms.internal.location.zzd zzi;

        public Builder() {
            this.zza = 60000L;
            this.zzb = 0;
            this.zzc = 102;
            this.zzd = Long.MAX_VALUE;
            this.zze = false;
            this.zzf = 0;
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
        }

        public Builder(CurrentLocationRequest currentLocationRequest) {
            this.zza = currentLocationRequest.getMaxUpdateAgeMillis();
            this.zzb = currentLocationRequest.getGranularity();
            this.zzc = currentLocationRequest.getPriority();
            this.zzd = currentLocationRequest.getDurationMillis();
            this.zze = currentLocationRequest.zze();
            this.zzf = currentLocationRequest.zza();
            this.zzg = currentLocationRequest.zzd();
            this.zzh = new WorkSource(currentLocationRequest.zzb());
            this.zzi = currentLocationRequest.zzc();
        }

        public CurrentLocationRequest build() {
            return new CurrentLocationRequest(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, new WorkSource(this.zzh), this.zzi);
        }

        public Builder setDurationMillis(long j) {
            Preconditions.checkArgument(j > 0, "durationMillis must be greater than 0");
            this.zzd = j;
            return this;
        }

        public Builder setGranularity(int i) {
            zzo.zza(i);
            this.zzb = i;
            return this;
        }

        public Builder setMaxUpdateAgeMillis(long j) {
            Preconditions.checkArgument(j >= 0, "maxUpdateAgeMillis must be greater than or equal to 0");
            this.zza = j;
            return this;
        }

        public Builder setPriority(int i) {
            zzae.zza(i);
            this.zzc = i;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CurrentLocationRequest(@SafeParcelable.Param(m796id = 1) long j, @SafeParcelable.Param(m796id = 2) int i, @SafeParcelable.Param(m796id = 3) int i2, @SafeParcelable.Param(m796id = 4) long j2, @SafeParcelable.Param(m796id = 5) boolean z, @SafeParcelable.Param(m796id = 7) int i3, @SafeParcelable.Param(m796id = 8) String str, @SafeParcelable.Param(m796id = 6) WorkSource workSource, @SafeParcelable.Param(m796id = 9) com.google.android.gms.internal.location.zzd zzdVar) {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 30 && str != null) {
            z2 = false;
        }
        Preconditions.checkArgument(z2);
        this.zza = j;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = j2;
        this.zze = z;
        this.zzf = i3;
        this.zzg = str;
        this.zzh = workSource;
        this.zzi = zzdVar;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CurrentLocationRequest) {
            CurrentLocationRequest currentLocationRequest = (CurrentLocationRequest) obj;
            return this.zza == currentLocationRequest.zza && this.zzb == currentLocationRequest.zzb && this.zzc == currentLocationRequest.zzc && this.zzd == currentLocationRequest.zzd && this.zze == currentLocationRequest.zze && this.zzf == currentLocationRequest.zzf && Objects.equal(this.zzg, currentLocationRequest.zzg) && Objects.equal(this.zzh, currentLocationRequest.zzh) && Objects.equal(this.zzi, currentLocationRequest.zzi);
        }
        return false;
    }

    public long getDurationMillis() {
        return this.zzd;
    }

    public int getGranularity() {
        return this.zzb;
    }

    public long getMaxUpdateAgeMillis() {
        return this.zza;
    }

    public int getPriority() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Long.valueOf(this.zzd));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CurrentLocationRequest[");
        sb.append(zzae.zzb(this.zzc));
        if (this.zza != Long.MAX_VALUE) {
            sb.append(", maxAge=");
            zzdj.zzb(this.zza, sb);
        }
        if (this.zzd != Long.MAX_VALUE) {
            sb.append(", duration=");
            sb.append(this.zzd);
            sb.append("ms");
        }
        if (this.zzb != 0) {
            sb.append(", ");
            sb.append(zzo.zzb(this.zzb));
        }
        if (this.zze) {
            sb.append(", bypass");
        }
        if (this.zzf != 0) {
            sb.append(", ");
            sb.append(zzai.zza(this.zzf));
        }
        if (this.zzg != null) {
            sb.append(", moduleId=");
            sb.append(this.zzg);
        }
        if (!WorkSourceUtil.isEmpty(this.zzh)) {
            sb.append(", workSource=");
            sb.append(this.zzh);
        }
        if (this.zzi != null) {
            sb.append(", impersonation=");
            sb.append(this.zzi);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getMaxUpdateAgeMillis());
        SafeParcelWriter.writeInt(parcel, 2, getGranularity());
        SafeParcelWriter.writeInt(parcel, 3, getPriority());
        SafeParcelWriter.writeLong(parcel, 4, getDurationMillis());
        SafeParcelWriter.writeBoolean(parcel, 5, this.zze);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzh, i, false);
        SafeParcelWriter.writeInt(parcel, 7, this.zzf);
        SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzi, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.zzf;
    }

    public final WorkSource zzb() {
        return this.zzh;
    }

    public final com.google.android.gms.internal.location.zzd zzc() {
        return this.zzi;
    }

    @Deprecated
    public final String zzd() {
        return this.zzg;
    }

    public final boolean zze() {
        return this.zze;
    }
}
