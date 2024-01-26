package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
@SafeParcelable.Class(creator = "SubjectParcelCreator")
/* loaded from: classes3.dex */
public final class zzuf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuf> CREATOR = new zzug();
    @SafeParcelable.Field(getter = "getConfidenceMask", m1090id = 1)
    private final float[] zza;
    @SafeParcelable.Field(getter = "getBitmap", m1090id = 2)
    private final Bitmap zzb;
    @SafeParcelable.Field(getter = "getWidth", m1090id = 3)
    private final int zzc;
    @SafeParcelable.Field(getter = "getHeight", m1090id = 4)
    private final int zzd;
    @SafeParcelable.Field(getter = "getStartX", m1090id = 5)
    private final int zze;
    @SafeParcelable.Field(getter = "getStartY", m1090id = 6)
    private final int zzf;
    @SafeParcelable.Field(getter = "getCategoryIndex", m1090id = 7)
    private final int zzg;

    @SafeParcelable.Constructor
    public zzuf(@SafeParcelable.Param(m1089id = 1) float[] fArr, @SafeParcelable.Param(m1089id = 2) Bitmap bitmap, @SafeParcelable.Param(m1089id = 3) int i, @SafeParcelable.Param(m1089id = 4) int i2, @SafeParcelable.Param(m1089id = 5) int i3, @SafeParcelable.Param(m1089id = 6) int i4, @SafeParcelable.Param(m1089id = 7) int i5) {
        this.zza = fArr;
        this.zzb = bitmap;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = i4;
        this.zzg = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        float[] fArr = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloatArray(parcel, 1, fArr, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeInt(parcel, 6, this.zzf);
        SafeParcelWriter.writeInt(parcel, 7, this.zzg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zze;
    }

    public final int zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzc;
    }

    public final Bitmap zze() {
        return this.zzb;
    }

    public final float[] zzf() {
        return this.zza;
    }
}
