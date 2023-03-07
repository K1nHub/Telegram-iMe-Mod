package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "GetCapabilityResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzdp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdp> CREATOR = new zzdq();
    @SafeParcelable.Field(m789id = 2)
    public final int zza;
    @SafeParcelable.Field(m789id = 3)
    public final zzao zzb;

    @SafeParcelable.Constructor
    public zzdp(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) zzao zzaoVar) {
        this.zza = i;
        this.zzb = zzaoVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
