package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.maps.zzal;
import com.google.android.gms.internal.maps.zzam;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "TileOverlayOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class TileOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<TileOverlayOptions> CREATOR = new zzac();
    @SafeParcelable.Field(getter = "getTileProviderDelegate", m1090id = 2, type = "android.os.IBinder")
    private zzam zza;
    private TileProvider zzb;
    @SafeParcelable.Field(getter = "isVisible", m1090id = 3)
    private boolean zzc;
    @SafeParcelable.Field(getter = "getZIndex", m1090id = 4)
    private float zzd;
    @SafeParcelable.Field(defaultValue = "true", getter = "getFadeIn", m1090id = 5)
    private boolean zze;
    @SafeParcelable.Field(getter = "getTransparency", m1090id = 6)
    private float zzf;

    public TileOverlayOptions() {
        this.zzc = true;
        this.zze = true;
        this.zzf = BitmapDescriptorFactory.HUE_RED;
    }

    public TileOverlayOptions fadeIn(boolean z) {
        this.zze = z;
        return this;
    }

    public boolean getFadeIn() {
        return this.zze;
    }

    public TileProvider getTileProvider() {
        return this.zzb;
    }

    public float getTransparency() {
        return this.zzf;
    }

    public float getZIndex() {
        return this.zzd;
    }

    public boolean isVisible() {
        return this.zzc;
    }

    public TileOverlayOptions tileProvider(TileProvider tileProvider) {
        this.zzb = (TileProvider) Preconditions.checkNotNull(tileProvider, "tileProvider must not be null.");
        this.zza = new zzab(this, tileProvider);
        return this;
    }

    public TileOverlayOptions transparency(float f) {
        boolean z = false;
        if (f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f) {
            z = true;
        }
        Preconditions.checkArgument(z, "Transparency must be in the range [0..1]");
        this.zzf = f;
        return this;
    }

    public TileOverlayOptions visible(boolean z) {
        this.zzc = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        zzam zzamVar = this.zza;
        SafeParcelWriter.writeIBinder(parcel, 2, zzamVar == null ? null : zzamVar.asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 3, isVisible());
        SafeParcelWriter.writeFloat(parcel, 4, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 5, getFadeIn());
        SafeParcelWriter.writeFloat(parcel, 6, getTransparency());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public TileOverlayOptions zIndex(float f) {
        this.zzd = f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public TileOverlayOptions(@SafeParcelable.Param(m1089id = 2) IBinder iBinder, @SafeParcelable.Param(m1089id = 3) boolean z, @SafeParcelable.Param(m1089id = 4) float f, @SafeParcelable.Param(m1089id = 5) boolean z2, @SafeParcelable.Param(m1089id = 6) float f2) {
        this.zzc = true;
        this.zze = true;
        this.zzf = BitmapDescriptorFactory.HUE_RED;
        zzam zzc = zzal.zzc(iBinder);
        this.zza = zzc;
        this.zzb = zzc == null ? null : new zzaa(this);
        this.zzc = z;
        this.zzd = f;
        this.zze = z2;
        this.zzf = f2;
    }
}
