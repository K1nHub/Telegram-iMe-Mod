package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@SafeParcelable.Class(creator = "FaceSettingsParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zze();
    @SafeParcelable.Field(m1090id = 2)
    public int zza;
    @SafeParcelable.Field(m1090id = 3)
    public int zzb;
    @SafeParcelable.Field(m1090id = 4)
    public int zzc;
    @SafeParcelable.Field(m1090id = 5)
    public boolean zzd;
    @SafeParcelable.Field(m1090id = 6)
    public boolean zze;
    @SafeParcelable.Field(defaultValue = "-1", m1090id = 7)
    public float zzf;

    public zzf() {
    }

    @SafeParcelable.Constructor
    public zzf(@SafeParcelable.Param(m1089id = 2) int i, @SafeParcelable.Param(m1089id = 3) int i2, @SafeParcelable.Param(m1089id = 4) int i3, @SafeParcelable.Param(m1089id = 5) boolean z, @SafeParcelable.Param(m1089id = 6) boolean z2, @SafeParcelable.Param(m1089id = 7) float f) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = z;
        this.zze = z2;
        this.zzf = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, this.zzd);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zze);
        SafeParcelWriter.writeFloat(parcel, 7, this.zzf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
