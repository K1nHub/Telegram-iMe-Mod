package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@UsedByNative("wrapper.cc")
@SafeParcelable.Class(creator = "LandmarkParcelCreator")
/* loaded from: classes3.dex */
public final class LandmarkParcel extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<LandmarkParcel> CREATOR = new zzm();
    @SafeParcelable.Field(m1090id = 2)
    public final float zza;
    @SafeParcelable.Field(m1090id = 3)
    public final float zzb;
    @SafeParcelable.Field(m1090id = 4)
    public final int zzc;
    @SafeParcelable.VersionField(m1087id = 1)
    private final int zzd;

    @SafeParcelable.Constructor
    @UsedByNative("wrapper.cc")
    public LandmarkParcel(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) float f, @SafeParcelable.Param(m1089id = 3) float f2, @SafeParcelable.Param(m1089id = 4) int i2) {
        this.zzd = i;
        this.zza = f;
        this.zzb = f2;
        this.zzc = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzd);
        SafeParcelWriter.writeFloat(parcel, 2, this.zza);
        SafeParcelWriter.writeFloat(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
