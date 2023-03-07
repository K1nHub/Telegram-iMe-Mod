package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "ConsentResponseCreator")
/* loaded from: classes3.dex */
public final class zzcf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcf> CREATOR = new zzcg();
    @SafeParcelable.Field(m789id = 1)
    public final int zza;
    @SafeParcelable.Field(m789id = 2)
    public final boolean zzb;
    @SafeParcelable.Field(m789id = 3)
    public final boolean zzc;
    @SafeParcelable.Field(m789id = 4)
    public final boolean zzd;
    @SafeParcelable.Field(m789id = 5)
    public final boolean zze;

    @SafeParcelable.Constructor
    public zzcf(@SafeParcelable.Param(m788id = 1) int i, @SafeParcelable.Param(m788id = 2) boolean z, @SafeParcelable.Param(m788id = 3) boolean z2, @SafeParcelable.Param(m788id = 4) boolean z3, @SafeParcelable.Param(m788id = 5) boolean z4) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = z3;
        this.zze = z4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
