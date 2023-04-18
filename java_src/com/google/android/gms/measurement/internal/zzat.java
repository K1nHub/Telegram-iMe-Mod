package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@SafeParcelable.Class(creator = "EventParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();
    @SafeParcelable.Field(m775id = 2)
    public final String zza;
    @SafeParcelable.Field(m775id = 3)
    public final zzar zzb;
    @SafeParcelable.Field(m775id = 4)
    public final String zzc;
    @SafeParcelable.Field(m775id = 5)
    public final long zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(zzat zzatVar, long j) {
        Preconditions.checkNotNull(zzatVar);
        this.zza = zzatVar.zza;
        this.zzb = zzatVar.zzb;
        this.zzc = zzatVar.zzc;
        this.zzd = j;
    }

    public final String toString() {
        String str = this.zzc;
        String str2 = this.zza;
        String valueOf = String.valueOf(this.zzb);
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 21 + String.valueOf(str2).length() + valueOf.length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzau.zza(this, parcel, i);
    }

    @SafeParcelable.Constructor
    public zzat(@SafeParcelable.Param(m774id = 2) String str, @SafeParcelable.Param(m774id = 3) zzar zzarVar, @SafeParcelable.Param(m774id = 4) String str2, @SafeParcelable.Param(m774id = 5) long j) {
        this.zza = str;
        this.zzb = zzarVar;
        this.zzc = str2;
        this.zzd = j;
    }
}
