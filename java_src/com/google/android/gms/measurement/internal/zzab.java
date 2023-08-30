package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes3.dex */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new zzac();
    @SafeParcelable.Field(m797id = 2)
    public String zza;
    @SafeParcelable.Field(m797id = 3)
    public String zzb;
    @SafeParcelable.Field(m797id = 4)
    public zzkv zzc;
    @SafeParcelable.Field(m797id = 5)
    public long zzd;
    @SafeParcelable.Field(m797id = 6)
    public boolean zze;
    @SafeParcelable.Field(m797id = 7)
    public String zzf;
    @SafeParcelable.Field(m797id = 8)
    public final zzat zzg;
    @SafeParcelable.Field(m797id = 9)
    public long zzh;
    @SafeParcelable.Field(m797id = 10)
    public zzat zzi;
    @SafeParcelable.Field(m797id = 11)
    public final long zzj;
    @SafeParcelable.Field(m797id = 12)
    public final zzat zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        this.zza = zzabVar.zza;
        this.zzb = zzabVar.zzb;
        this.zzc = zzabVar.zzc;
        this.zzd = zzabVar.zzd;
        this.zze = zzabVar.zze;
        this.zzf = zzabVar.zzf;
        this.zzg = zzabVar.zzg;
        this.zzh = zzabVar.zzh;
        this.zzi = zzabVar.zzi;
        this.zzj = zzabVar.zzj;
        this.zzk = zzabVar.zzk;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzc, i, false);
        SafeParcelWriter.writeLong(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeString(parcel, 7, this.zzf, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeLong(parcel, 9, this.zzh);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.writeLong(parcel, 11, this.zzj);
        SafeParcelWriter.writeParcelable(parcel, 12, this.zzk, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzab(@SafeParcelable.Param(m796id = 2) String str, @SafeParcelable.Param(m796id = 3) String str2, @SafeParcelable.Param(m796id = 4) zzkv zzkvVar, @SafeParcelable.Param(m796id = 5) long j, @SafeParcelable.Param(m796id = 6) boolean z, @SafeParcelable.Param(m796id = 7) String str3, @SafeParcelable.Param(m796id = 8) zzat zzatVar, @SafeParcelable.Param(m796id = 9) long j2, @SafeParcelable.Param(m796id = 10) zzat zzatVar2, @SafeParcelable.Param(m796id = 11) long j3, @SafeParcelable.Param(m796id = 12) zzat zzatVar3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzkvVar;
        this.zzd = j;
        this.zze = z;
        this.zzf = str3;
        this.zzg = zzatVar;
        this.zzh = j2;
        this.zzi = zzatVar2;
        this.zzj = j3;
        this.zzk = zzatVar3;
    }
}
