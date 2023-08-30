package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.vision.Frame;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
@SafeParcelable.Class(creator = "FrameMetadataParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzv();
    @SafeParcelable.Field(m797id = 2)
    public int zza;
    @SafeParcelable.Field(m797id = 3)
    public int zzb;
    @SafeParcelable.Field(m797id = 4)
    public int zzc;
    @SafeParcelable.Field(m797id = 5)
    public long zzd;
    @SafeParcelable.Field(m797id = 6)
    public int zze;

    public zzs() {
    }

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(m796id = 2) int i, @SafeParcelable.Param(m796id = 3) int i2, @SafeParcelable.Param(m796id = 4) int i3, @SafeParcelable.Param(m796id = 5) long j, @SafeParcelable.Param(m796id = 6) int i4) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = j;
        this.zze = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeLong(parcel, 5, this.zzd);
        SafeParcelWriter.writeInt(parcel, 6, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public static zzs zza(Frame frame) {
        zzs zzsVar = new zzs();
        zzsVar.zza = frame.getMetadata().getWidth();
        zzsVar.zzb = frame.getMetadata().getHeight();
        zzsVar.zze = frame.getMetadata().getRotation();
        zzsVar.zzc = frame.getMetadata().getId();
        zzsVar.zzd = frame.getMetadata().getTimestampMillis();
        return zzsVar;
    }
}
