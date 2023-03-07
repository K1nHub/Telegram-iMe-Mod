package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "ConnectionConfigurationCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public class ConnectionConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ConnectionConfiguration> CREATOR = new zzd();
    @SafeParcelable.Field(getter = "getName", m789id = 2)
    private final String zza;
    @SafeParcelable.Field(getter = "getAddress", m789id = 3)
    private final String zzb;
    @SafeParcelable.Field(getter = "getType", m789id = 4)
    private final int zzc;
    @SafeParcelable.Field(getter = "getRole", m789id = 5)
    private final int zzd;
    @SafeParcelable.Field(getter = "isEnabled", m789id = 6)
    private final boolean zze;
    @SafeParcelable.Field(getter = "isConnected", m789id = 7)
    private volatile boolean zzf;
    @SafeParcelable.Field(getter = "getPeerNodeId", m789id = 8)
    private volatile String zzg;
    @SafeParcelable.Field(getter = "getBtlePriority", m789id = 9)
    private boolean zzh;
    @SafeParcelable.Field(getter = "getNodeId", m789id = 10)
    private String zzi;
    @SafeParcelable.Field(getter = "getPackageName", m789id = 11)
    private String zzj;
    @SafeParcelable.Field(getter = "getConnectionRetryStrategy", m789id = 12)
    private int zzk;
    @SafeParcelable.Field(getter = "getAllowedConfigPackages", m789id = 13)
    private List zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ConnectionConfiguration(@SafeParcelable.Param(m788id = 2) String str, @SafeParcelable.Param(m788id = 3) String str2, @SafeParcelable.Param(m788id = 4) int i, @SafeParcelable.Param(m788id = 5) int i2, @SafeParcelable.Param(m788id = 6) boolean z, @SafeParcelable.Param(m788id = 7) boolean z2, @SafeParcelable.Param(m788id = 8) String str3, @SafeParcelable.Param(m788id = 9) boolean z3, @SafeParcelable.Param(m788id = 10) String str4, @SafeParcelable.Param(m788id = 11) String str5, @SafeParcelable.Param(m788id = 12) int i3, @SafeParcelable.Param(m788id = 13) List list) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = z;
        this.zzf = z2;
        this.zzg = str3;
        this.zzh = z3;
        this.zzi = str4;
        this.zzj = str5;
        this.zzk = i3;
        this.zzl = list;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConnectionConfiguration) {
            ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) obj;
            return Objects.equal(this.zza, connectionConfiguration.zza) && Objects.equal(this.zzb, connectionConfiguration.zzb) && Objects.equal(Integer.valueOf(this.zzc), Integer.valueOf(connectionConfiguration.zzc)) && Objects.equal(Integer.valueOf(this.zzd), Integer.valueOf(connectionConfiguration.zzd)) && Objects.equal(Boolean.valueOf(this.zze), Boolean.valueOf(connectionConfiguration.zze)) && Objects.equal(Boolean.valueOf(this.zzh), Boolean.valueOf(connectionConfiguration.zzh));
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, Integer.valueOf(this.zzc), Integer.valueOf(this.zzd), Boolean.valueOf(this.zze), Boolean.valueOf(this.zzh));
    }

    public final String toString() {
        return "ConnectionConfiguration[ Name=" + this.zza + ", Address=" + this.zzb + ", Type=" + this.zzc + ", Role=" + this.zzd + ", Enabled=" + this.zze + ", IsConnected=" + this.zzf + ", PeerNodeId=" + this.zzg + ", BtlePriority=" + this.zzh + ", NodeId=" + this.zzi + ", PackageName=" + this.zzj + ", ConnectionRetryStrategy=" + this.zzk + ", allowedConfigPackages=" + this.zzl + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeInt(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzf);
        SafeParcelWriter.writeString(parcel, 8, this.zzg, false);
        SafeParcelWriter.writeBoolean(parcel, 9, this.zzh);
        SafeParcelWriter.writeString(parcel, 10, this.zzi, false);
        SafeParcelWriter.writeString(parcel, 11, this.zzj, false);
        SafeParcelWriter.writeInt(parcel, 12, this.zzk);
        SafeParcelWriter.writeStringList(parcel, 13, this.zzl, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
