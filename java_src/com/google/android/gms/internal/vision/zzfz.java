package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* loaded from: classes3.dex */
public final class zzfz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfz> CREATOR = new zzfy();
    @SafeParcelable.Field(getter = "getImageFormat", m779id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getWidth", m779id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getHeight", m779id = 3)
    private final int zzc;
    @SafeParcelable.Field(getter = "getRotation", m779id = 4)
    private final int zzd;
    @SafeParcelable.Field(getter = "getTimestampMs", m779id = 5)
    private final long zze;

    @SafeParcelable.Constructor
    public zzfz(@SafeParcelable.Param(m778id = 1) int i, @SafeParcelable.Param(m778id = 2) int i2, @SafeParcelable.Param(m778id = 3) int i3, @SafeParcelable.Param(m778id = 4) int i4, @SafeParcelable.Param(m778id = 5) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = j;
    }

    public final int zza() {
        return this.zza;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zzc;
    }

    public final int zzd() {
        return this.zzd;
    }

    public final long zze() {
        return this.zze;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeLong(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
