package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "GetEapIdResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzel> CREATOR = new zzem();
    @SafeParcelable.Field(m789id = 2)
    public final int zza;
    @SafeParcelable.Field(m789id = 3)
    public final String zzb;

    @SafeParcelable.Constructor
    public zzel(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) String str) {
        this.zza = i;
        this.zzb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
