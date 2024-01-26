package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* loaded from: classes3.dex */
public final class zztz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztz> CREATOR = new zzua();
    @SafeParcelable.Field(getter = "getImageFormat", m1090id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getWidth", m1090id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getHeight", m1090id = 3)
    private final int zzc;
    @SafeParcelable.Field(getter = "getRotation", m1090id = 4)
    private final int zzd;
    @SafeParcelable.Field(getter = "getTimestampMs", m1090id = 5)
    private final long zze;

    @SafeParcelable.Constructor
    public zztz(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) int i2, @SafeParcelable.Param(m1089id = 3) int i3, @SafeParcelable.Param(m1089id = 4) int i4, @SafeParcelable.Param(m1089id = 5) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeLong(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
