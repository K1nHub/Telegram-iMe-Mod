package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Pair;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "StrokeStyleCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class StrokeStyle extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StrokeStyle> CREATOR = new zzv();
    @SafeParcelable.Field(getter = "getWidth", m779id = 2)
    private final float zza;
    @SafeParcelable.Field(getter = "getColor", m779id = 3)
    private final int zzb;
    @SafeParcelable.Field(getter = "getToColor", m779id = 4)
    private final int zzc;
    @SafeParcelable.Field(getter = "isVisible", m779id = 5)
    private final boolean zzd;
    @SafeParcelable.Field(getter = "getStamp", m779id = 6)
    private final StampStyle zze;

    /* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
    /* loaded from: classes3.dex */
    public static final class Builder {
        private float zza;
        private int zzb;
        private int zzc;
        private boolean zzd;
        private StampStyle zze;

        private Builder() {
        }

        public Builder(StrokeStyle strokeStyle) {
            this.zza = strokeStyle.zza();
            Pair zzb = strokeStyle.zzb();
            this.zzb = ((Integer) zzb.first).intValue();
            this.zzc = ((Integer) zzb.second).intValue();
            this.zzd = strokeStyle.isVisible();
            this.zze = strokeStyle.getStamp();
        }

        /* synthetic */ Builder(zzu zzuVar) {
        }

        public StrokeStyle build() {
            return new StrokeStyle(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
        }

        public Builder stamp(StampStyle stampStyle) {
            this.zze = stampStyle;
            return this;
        }

        public final Builder zza(int i) {
            this.zzb = i;
            this.zzc = i;
            return this;
        }

        public final Builder zzb(int i, int i2) {
            this.zzb = i;
            this.zzc = i2;
            return this;
        }

        public final Builder zzc(boolean z) {
            this.zzd = z;
            return this;
        }

        public final Builder zzd(float f) {
            this.zza = f;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public StrokeStyle(@SafeParcelable.Param(m778id = 2) float f, @SafeParcelable.Param(m778id = 3) int i, @SafeParcelable.Param(m778id = 4) int i2, @SafeParcelable.Param(m778id = 5) boolean z, @SafeParcelable.Param(m778id = 6) StampStyle stampStyle) {
        this.zza = f;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = z;
        this.zze = stampStyle;
    }

    public static Builder colorBuilder(int i) {
        Builder builder = new Builder((zzu) null);
        builder.zza(i);
        return builder;
    }

    public static Builder gradientBuilder(int i, int i2) {
        Builder builder = new Builder((zzu) null);
        builder.zzb(i, i2);
        return builder;
    }

    public static Builder transparentColorBuilder() {
        Builder builder = new Builder((zzu) null);
        builder.zza(0);
        return builder;
    }

    public StampStyle getStamp() {
        return this.zze;
    }

    public boolean isVisible() {
        return this.zzd;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, this.zza);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 5, isVisible());
        SafeParcelWriter.writeParcelable(parcel, 6, getStamp(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final float zza() {
        return this.zza;
    }

    public final Pair zzb() {
        return new Pair(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc));
    }
}
