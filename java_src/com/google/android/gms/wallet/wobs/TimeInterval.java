package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "TimeIntervalCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class TimeInterval extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TimeInterval> CREATOR = new zzl();
    @SafeParcelable.Field(m1089id = 2)
    long zza;
    @SafeParcelable.Field(m1089id = 3)
    long zzb;

    TimeInterval() {
    }

    public long getEndTimestamp() {
        return this.zzb;
    }

    public long getStartTimestamp() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.zza);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public TimeInterval(@SafeParcelable.Param(m1088id = 2) long j, @SafeParcelable.Param(m1088id = 3) long j2) {
        this.zza = j;
        this.zzb = j2;
    }
}
