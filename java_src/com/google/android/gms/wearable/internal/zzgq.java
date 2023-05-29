package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "PackageStorageInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzgq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzgq> CREATOR = new zzgr();
    @SafeParcelable.Field(m779id = 2)
    public final String zza;
    @SafeParcelable.Field(m779id = 3)
    public final String zzb;
    @SafeParcelable.Field(m779id = 4)
    public final long zzc;

    @SafeParcelable.Constructor
    public zzgq(@SafeParcelable.Param(m778id = 2) String str, @SafeParcelable.Param(m778id = 3) String str2, @SafeParcelable.Param(m778id = 4) long j) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeLong(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
