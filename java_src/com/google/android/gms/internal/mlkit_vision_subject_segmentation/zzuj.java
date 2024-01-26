package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-mlkit-subject-segmentation@@16.0.0-beta1 */
@SafeParcelable.Class(creator = "SubjectSegmenterOptionsParcelCreator")
/* loaded from: classes3.dex */
public final class zzuj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuj> CREATOR = new zzuk();
    @SafeParcelable.Field(getter = "isForegroundConfidenceMaskEnabled", m1090id = 1)
    private final boolean zza;
    @SafeParcelable.Field(getter = "isForegroundBitmapEnabled", m1090id = 2)
    private final boolean zzb;
    @SafeParcelable.Field(getter = "isMultipleSubjectsEnabled", m1090id = 3)
    private final boolean zzc;
    @SafeParcelable.Field(getter = "isSubjectConfidenceMaskEnabled", m1090id = 4)
    private final boolean zzd;
    @SafeParcelable.Field(getter = "isSubjectBitmapEnabled", m1090id = 5)
    private final boolean zze;

    @SafeParcelable.Constructor
    public zzuj(@SafeParcelable.Param(m1089id = 1) boolean z, @SafeParcelable.Param(m1089id = 2) boolean z2, @SafeParcelable.Param(m1089id = 3) boolean z3, @SafeParcelable.Param(m1089id = 4) boolean z4, @SafeParcelable.Param(m1089id = 5) boolean z5) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = z3;
        this.zzd = z4;
        this.zze = z5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        boolean z = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, z);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
