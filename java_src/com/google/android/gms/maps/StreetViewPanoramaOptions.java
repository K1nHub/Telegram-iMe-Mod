package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "StreetViewPanoramaOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new zzap();
    @SafeParcelable.Field(getter = "getStreetViewPanoramaCamera", m1090id = 2)
    private StreetViewPanoramaCamera zza;
    @SafeParcelable.Field(getter = "getPanoramaId", m1090id = 3)
    private String zzb;
    @SafeParcelable.Field(getter = "getPosition", m1090id = 4)
    private LatLng zzc;
    @SafeParcelable.Field(getter = "getRadius", m1090id = 5)
    private Integer zzd;
    @SafeParcelable.Field(getter = "getUserNavigationEnabledForParcel", m1090id = 6, type = "byte")
    private Boolean zze;
    @SafeParcelable.Field(getter = "getZoomGesturesEnabledForParcel", m1090id = 7, type = "byte")
    private Boolean zzf;
    @SafeParcelable.Field(getter = "getPanningGesturesEnabledForParcel", m1090id = 8, type = "byte")
    private Boolean zzg;
    @SafeParcelable.Field(getter = "getStreetNamesEnabledForParcel", m1090id = 9, type = "byte")
    private Boolean zzh;
    @SafeParcelable.Field(getter = "getUseViewLifecycleInFragmentForParcel", m1090id = 10, type = "byte")
    private Boolean zzi;
    @SafeParcelable.Field(getter = "getSource", m1090id = 11)
    private StreetViewSource zzj;

    public StreetViewPanoramaOptions() {
        Boolean bool = Boolean.TRUE;
        this.zze = bool;
        this.zzf = bool;
        this.zzg = bool;
        this.zzh = bool;
        this.zzj = StreetViewSource.DEFAULT;
    }

    public Boolean getPanningGesturesEnabled() {
        return this.zzg;
    }

    public String getPanoramaId() {
        return this.zzb;
    }

    public LatLng getPosition() {
        return this.zzc;
    }

    public Integer getRadius() {
        return this.zzd;
    }

    public StreetViewSource getSource() {
        return this.zzj;
    }

    public Boolean getStreetNamesEnabled() {
        return this.zzh;
    }

    public StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zza;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.zzi;
    }

    public Boolean getUserNavigationEnabled() {
        return this.zze;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.zzf;
    }

    public StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.zzg = Boolean.valueOf(z);
        return this;
    }

    public StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zza = streetViewPanoramaCamera;
        return this;
    }

    public StreetViewPanoramaOptions panoramaId(String str) {
        this.zzb = str;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng) {
        this.zzc = latLng;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng, StreetViewSource streetViewSource) {
        this.zzc = latLng;
        this.zzj = streetViewSource;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.zzc = latLng;
        this.zzd = num;
        return this;
    }

    public StreetViewPanoramaOptions position(LatLng latLng, Integer num, StreetViewSource streetViewSource) {
        this.zzc = latLng;
        this.zzd = num;
        this.zzj = streetViewSource;
        return this;
    }

    public StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.zzh = Boolean.valueOf(z);
        return this;
    }

    public String toString() {
        return Objects.toStringHelper(this).add("PanoramaId", this.zzb).add("Position", this.zzc).add("Radius", this.zzd).add("Source", this.zzj).add("StreetViewPanoramaCamera", this.zza).add("UserNavigationEnabled", this.zze).add("ZoomGesturesEnabled", this.zzf).add("PanningGesturesEnabled", this.zzg).add("StreetNamesEnabled", this.zzh).add("UseViewLifecycleInFragment", this.zzi).toString();
    }

    public StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.zzi = Boolean.valueOf(z);
        return this;
    }

    public StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.zze = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getStreetViewPanoramaCamera(), i, false);
        SafeParcelWriter.writeString(parcel, 3, getPanoramaId(), false);
        SafeParcelWriter.writeParcelable(parcel, 4, getPosition(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 5, getRadius(), false);
        SafeParcelWriter.writeByte(parcel, 6, com.google.android.gms.maps.internal.zza.zza(this.zze));
        SafeParcelWriter.writeByte(parcel, 7, com.google.android.gms.maps.internal.zza.zza(this.zzf));
        SafeParcelWriter.writeByte(parcel, 8, com.google.android.gms.maps.internal.zza.zza(this.zzg));
        SafeParcelWriter.writeByte(parcel, 9, com.google.android.gms.maps.internal.zza.zza(this.zzh));
        SafeParcelWriter.writeByte(parcel, 10, com.google.android.gms.maps.internal.zza.zza(this.zzi));
        SafeParcelWriter.writeParcelable(parcel, 11, getSource(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzf = Boolean.valueOf(z);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public StreetViewPanoramaOptions(@SafeParcelable.Param(m1089id = 2) StreetViewPanoramaCamera streetViewPanoramaCamera, @SafeParcelable.Param(m1089id = 3) String str, @SafeParcelable.Param(m1089id = 4) LatLng latLng, @SafeParcelable.Param(m1089id = 5) Integer num, @SafeParcelable.Param(m1089id = 6) byte b, @SafeParcelable.Param(m1089id = 7) byte b2, @SafeParcelable.Param(m1089id = 8) byte b3, @SafeParcelable.Param(m1089id = 9) byte b4, @SafeParcelable.Param(m1089id = 10) byte b5, @SafeParcelable.Param(m1089id = 11) StreetViewSource streetViewSource) {
        Boolean bool = Boolean.TRUE;
        this.zze = bool;
        this.zzf = bool;
        this.zzg = bool;
        this.zzh = bool;
        this.zzj = StreetViewSource.DEFAULT;
        this.zza = streetViewPanoramaCamera;
        this.zzc = latLng;
        this.zzd = num;
        this.zzb = str;
        this.zze = com.google.android.gms.maps.internal.zza.zzb(b);
        this.zzf = com.google.android.gms.maps.internal.zza.zzb(b2);
        this.zzg = com.google.android.gms.maps.internal.zza.zzb(b3);
        this.zzh = com.google.android.gms.maps.internal.zza.zzb(b4);
        this.zzi = com.google.android.gms.maps.internal.zza.zzb(b5);
        this.zzj = streetViewSource;
    }
}
