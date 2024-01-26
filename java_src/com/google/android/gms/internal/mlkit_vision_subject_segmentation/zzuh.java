package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
@SafeParcelable.Class(creator = "SubjectSegmentationResultParcelCreator")
/* loaded from: classes3.dex */
public final class zzuh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuh> CREATOR = new zzui();
    @SafeParcelable.Field(getter = "getSubjects", m1090id = 1)
    private final List zza;
    @SafeParcelable.Field(getter = "getForegroundConfidenceMask", m1090id = 2)
    private final float[] zzb;
    @SafeParcelable.Field(getter = "getForegroundBitmap", m1090id = 3)
    private final Bitmap zzc;
    @SafeParcelable.Field(getter = "getQualityScores", m1090id = 4)
    private final List zzd;

    @SafeParcelable.Constructor
    public zzuh(@SafeParcelable.Param(m1089id = 1) List list, @SafeParcelable.Param(m1089id = 2) float[] fArr, @SafeParcelable.Param(m1089id = 3) Bitmap bitmap, @SafeParcelable.Param(m1089id = 4) List list2) {
        this.zza = list;
        this.zzb = fArr;
        this.zzc = bitmap;
        this.zzd = list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List list = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, list, false);
        SafeParcelWriter.writeFloatArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeFloatList(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Bitmap zza() {
        return this.zzc;
    }

    public final List zzb() {
        return this.zzd;
    }

    public final List zzc() {
        return this.zza;
    }

    public final float[] zzd() {
        return this.zzb;
    }
}
