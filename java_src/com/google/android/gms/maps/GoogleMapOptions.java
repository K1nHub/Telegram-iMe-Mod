package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "GoogleMapOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new zzab();
    private static final Integer zza = Integer.valueOf(Color.argb(255, 236, 233, 225));
    @SafeParcelable.Field(defaultValue = "-1", getter = "getZOrderOnTopForParcel", m1090id = 2, type = "byte")
    private Boolean zzb;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getUseViewLifecycleInFragmentForParcel", m1090id = 3, type = "byte")
    private Boolean zzc;
    @SafeParcelable.Field(getter = "getMapType", m1090id = 4)
    private int zzd;
    @SafeParcelable.Field(getter = "getCamera", m1090id = 5)
    private CameraPosition zze;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getZoomControlsEnabledForParcel", m1090id = 6, type = "byte")
    private Boolean zzf;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getCompassEnabledForParcel", m1090id = 7, type = "byte")
    private Boolean zzg;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getScrollGesturesEnabledForParcel", m1090id = 8, type = "byte")
    private Boolean zzh;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getZoomGesturesEnabledForParcel", m1090id = 9, type = "byte")
    private Boolean zzi;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getTiltGesturesEnabledForParcel", m1090id = 10, type = "byte")
    private Boolean zzj;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getRotateGesturesEnabledForParcel", m1090id = 11, type = "byte")
    private Boolean zzk;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getLiteModeForParcel", m1090id = 12, type = "byte")
    private Boolean zzl;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getMapToolbarEnabledForParcel", m1090id = 14, type = "byte")
    private Boolean zzm;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getAmbientEnabledForParcel", m1090id = 15, type = "byte")
    private Boolean zzn;
    @SafeParcelable.Field(getter = "getMinZoomPreference", m1090id = 16)
    private Float zzo;
    @SafeParcelable.Field(getter = "getMaxZoomPreference", m1090id = 17)
    private Float zzp;
    @SafeParcelable.Field(getter = "getLatLngBoundsForCameraTarget", m1090id = 18)
    private LatLngBounds zzq;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getScrollGesturesEnabledDuringRotateOrZoomForParcel", m1090id = 19, type = "byte")
    private Boolean zzr;
    @SafeParcelable.Field(getter = "getBackgroundColor", m1090id = 20)
    private Integer zzs;
    @SafeParcelable.Field(getter = "getMapId", m1090id = 21)
    private String zzt;

    public GoogleMapOptions() {
        this.zzd = -1;
        this.zzo = null;
        this.zzp = null;
        this.zzq = null;
        this.zzs = null;
        this.zzt = null;
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        String string;
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C0713R.styleable.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        int i = C0713R.styleable.MapAttrs_mapType;
        if (obtainAttributes.hasValue(i)) {
            googleMapOptions.mapType(obtainAttributes.getInt(i, -1));
        }
        int i2 = C0713R.styleable.MapAttrs_zOrderOnTop;
        if (obtainAttributes.hasValue(i2)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(i2, false));
        }
        int i3 = C0713R.styleable.MapAttrs_useViewLifecycle;
        if (obtainAttributes.hasValue(i3)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(i3, false));
        }
        int i4 = C0713R.styleable.MapAttrs_uiCompass;
        if (obtainAttributes.hasValue(i4)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(i4, true));
        }
        int i5 = C0713R.styleable.MapAttrs_uiRotateGestures;
        if (obtainAttributes.hasValue(i5)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(i5, true));
        }
        int i6 = C0713R.styleable.MapAttrs_uiScrollGesturesDuringRotateOrZoom;
        if (obtainAttributes.hasValue(i6)) {
            googleMapOptions.scrollGesturesEnabledDuringRotateOrZoom(obtainAttributes.getBoolean(i6, true));
        }
        int i7 = C0713R.styleable.MapAttrs_uiScrollGestures;
        if (obtainAttributes.hasValue(i7)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(i7, true));
        }
        int i8 = C0713R.styleable.MapAttrs_uiTiltGestures;
        if (obtainAttributes.hasValue(i8)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(i8, true));
        }
        int i9 = C0713R.styleable.MapAttrs_uiZoomGestures;
        if (obtainAttributes.hasValue(i9)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(i9, true));
        }
        int i10 = C0713R.styleable.MapAttrs_uiZoomControls;
        if (obtainAttributes.hasValue(i10)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(i10, true));
        }
        int i11 = C0713R.styleable.MapAttrs_liteMode;
        if (obtainAttributes.hasValue(i11)) {
            googleMapOptions.liteMode(obtainAttributes.getBoolean(i11, false));
        }
        int i12 = C0713R.styleable.MapAttrs_uiMapToolbar;
        if (obtainAttributes.hasValue(i12)) {
            googleMapOptions.mapToolbarEnabled(obtainAttributes.getBoolean(i12, true));
        }
        int i13 = C0713R.styleable.MapAttrs_ambientEnabled;
        if (obtainAttributes.hasValue(i13)) {
            googleMapOptions.ambientEnabled(obtainAttributes.getBoolean(i13, false));
        }
        int i14 = C0713R.styleable.MapAttrs_cameraMinZoomPreference;
        if (obtainAttributes.hasValue(i14)) {
            googleMapOptions.minZoomPreference(obtainAttributes.getFloat(i14, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(i14)) {
            googleMapOptions.maxZoomPreference(obtainAttributes.getFloat(C0713R.styleable.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
        }
        int i15 = C0713R.styleable.MapAttrs_backgroundColor;
        if (obtainAttributes.hasValue(i15)) {
            googleMapOptions.backgroundColor(Integer.valueOf(obtainAttributes.getColor(i15, zza.intValue())));
        }
        int i16 = C0713R.styleable.MapAttrs_mapId;
        if (obtainAttributes.hasValue(i16) && (string = obtainAttributes.getString(i16)) != null && !string.isEmpty()) {
            googleMapOptions.mapId(string);
        }
        googleMapOptions.latLngBoundsForCameraTarget(zzb(context, attributeSet));
        googleMapOptions.camera(zza(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    public static CameraPosition zza(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C0713R.styleable.MapAttrs);
        int i = C0713R.styleable.MapAttrs_cameraTargetLat;
        float f = obtainAttributes.hasValue(i) ? obtainAttributes.getFloat(i, BitmapDescriptorFactory.HUE_RED) : 0.0f;
        int i2 = C0713R.styleable.MapAttrs_cameraTargetLng;
        LatLng latLng = new LatLng(f, obtainAttributes.hasValue(i2) ? obtainAttributes.getFloat(i2, BitmapDescriptorFactory.HUE_RED) : 0.0f);
        CameraPosition.Builder builder = CameraPosition.builder();
        builder.target(latLng);
        int i3 = C0713R.styleable.MapAttrs_cameraZoom;
        if (obtainAttributes.hasValue(i3)) {
            builder.zoom(obtainAttributes.getFloat(i3, BitmapDescriptorFactory.HUE_RED));
        }
        int i4 = C0713R.styleable.MapAttrs_cameraBearing;
        if (obtainAttributes.hasValue(i4)) {
            builder.bearing(obtainAttributes.getFloat(i4, BitmapDescriptorFactory.HUE_RED));
        }
        int i5 = C0713R.styleable.MapAttrs_cameraTilt;
        if (obtainAttributes.hasValue(i5)) {
            builder.tilt(obtainAttributes.getFloat(i5, BitmapDescriptorFactory.HUE_RED));
        }
        obtainAttributes.recycle();
        return builder.build();
    }

    public static LatLngBounds zzb(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C0713R.styleable.MapAttrs);
        int i = C0713R.styleable.MapAttrs_latLngBoundsSouthWestLatitude;
        Float valueOf = obtainAttributes.hasValue(i) ? Float.valueOf(obtainAttributes.getFloat(i, BitmapDescriptorFactory.HUE_RED)) : null;
        int i2 = C0713R.styleable.MapAttrs_latLngBoundsSouthWestLongitude;
        Float valueOf2 = obtainAttributes.hasValue(i2) ? Float.valueOf(obtainAttributes.getFloat(i2, BitmapDescriptorFactory.HUE_RED)) : null;
        int i3 = C0713R.styleable.MapAttrs_latLngBoundsNorthEastLatitude;
        Float valueOf3 = obtainAttributes.hasValue(i3) ? Float.valueOf(obtainAttributes.getFloat(i3, BitmapDescriptorFactory.HUE_RED)) : null;
        int i4 = C0713R.styleable.MapAttrs_latLngBoundsNorthEastLongitude;
        Float valueOf4 = obtainAttributes.hasValue(i4) ? Float.valueOf(obtainAttributes.getFloat(i4, BitmapDescriptorFactory.HUE_RED)) : null;
        obtainAttributes.recycle();
        if (valueOf == null || valueOf2 == null || valueOf3 == null || valueOf4 == null) {
            return null;
        }
        return new LatLngBounds(new LatLng(valueOf.floatValue(), valueOf2.floatValue()), new LatLng(valueOf3.floatValue(), valueOf4.floatValue()));
    }

    public GoogleMapOptions ambientEnabled(boolean z) {
        this.zzn = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions backgroundColor(Integer num) {
        this.zzs = num;
        return this;
    }

    public GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.zze = cameraPosition;
        return this;
    }

    public GoogleMapOptions compassEnabled(boolean z) {
        this.zzg = Boolean.valueOf(z);
        return this;
    }

    public Boolean getAmbientEnabled() {
        return this.zzn;
    }

    public Integer getBackgroundColor() {
        return this.zzs;
    }

    public CameraPosition getCamera() {
        return this.zze;
    }

    public Boolean getCompassEnabled() {
        return this.zzg;
    }

    public LatLngBounds getLatLngBoundsForCameraTarget() {
        return this.zzq;
    }

    public Boolean getLiteMode() {
        return this.zzl;
    }

    public String getMapId() {
        return this.zzt;
    }

    public Boolean getMapToolbarEnabled() {
        return this.zzm;
    }

    public int getMapType() {
        return this.zzd;
    }

    public Float getMaxZoomPreference() {
        return this.zzp;
    }

    public Float getMinZoomPreference() {
        return this.zzo;
    }

    public Boolean getRotateGesturesEnabled() {
        return this.zzk;
    }

    public Boolean getScrollGesturesEnabled() {
        return this.zzh;
    }

    public Boolean getScrollGesturesEnabledDuringRotateOrZoom() {
        return this.zzr;
    }

    public Boolean getTiltGesturesEnabled() {
        return this.zzj;
    }

    public Boolean getUseViewLifecycleInFragment() {
        return this.zzc;
    }

    public Boolean getZOrderOnTop() {
        return this.zzb;
    }

    public Boolean getZoomControlsEnabled() {
        return this.zzf;
    }

    public Boolean getZoomGesturesEnabled() {
        return this.zzi;
    }

    public GoogleMapOptions latLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.zzq = latLngBounds;
        return this;
    }

    public GoogleMapOptions liteMode(boolean z) {
        this.zzl = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions mapId(String str) {
        this.zzt = str;
        return this;
    }

    public GoogleMapOptions mapToolbarEnabled(boolean z) {
        this.zzm = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions mapType(int i) {
        this.zzd = i;
        return this;
    }

    public GoogleMapOptions maxZoomPreference(float f) {
        this.zzp = Float.valueOf(f);
        return this;
    }

    public GoogleMapOptions minZoomPreference(float f) {
        this.zzo = Float.valueOf(f);
        return this;
    }

    public GoogleMapOptions rotateGesturesEnabled(boolean z) {
        this.zzk = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions scrollGesturesEnabled(boolean z) {
        this.zzh = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions scrollGesturesEnabledDuringRotateOrZoom(boolean z) {
        this.zzr = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions tiltGesturesEnabled(boolean z) {
        this.zzj = Boolean.valueOf(z);
        return this;
    }

    public String toString() {
        return Objects.toStringHelper(this).add("MapType", Integer.valueOf(this.zzd)).add("LiteMode", this.zzl).add("Camera", this.zze).add("CompassEnabled", this.zzg).add("ZoomControlsEnabled", this.zzf).add("ScrollGesturesEnabled", this.zzh).add("ZoomGesturesEnabled", this.zzi).add("TiltGesturesEnabled", this.zzj).add("RotateGesturesEnabled", this.zzk).add("ScrollGesturesEnabledDuringRotateOrZoom", this.zzr).add("MapToolbarEnabled", this.zzm).add("AmbientEnabled", this.zzn).add("MinZoomPreference", this.zzo).add("MaxZoomPreference", this.zzp).add("BackgroundColor", this.zzs).add("LatLngBoundsForCameraTarget", this.zzq).add("ZOrderOnTop", this.zzb).add("UseViewLifecycleInFragment", this.zzc).toString();
    }

    public GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.zzc = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByte(parcel, 2, com.google.android.gms.maps.internal.zza.zza(this.zzb));
        SafeParcelWriter.writeByte(parcel, 3, com.google.android.gms.maps.internal.zza.zza(this.zzc));
        SafeParcelWriter.writeInt(parcel, 4, getMapType());
        SafeParcelWriter.writeParcelable(parcel, 5, getCamera(), i, false);
        SafeParcelWriter.writeByte(parcel, 6, com.google.android.gms.maps.internal.zza.zza(this.zzf));
        SafeParcelWriter.writeByte(parcel, 7, com.google.android.gms.maps.internal.zza.zza(this.zzg));
        SafeParcelWriter.writeByte(parcel, 8, com.google.android.gms.maps.internal.zza.zza(this.zzh));
        SafeParcelWriter.writeByte(parcel, 9, com.google.android.gms.maps.internal.zza.zza(this.zzi));
        SafeParcelWriter.writeByte(parcel, 10, com.google.android.gms.maps.internal.zza.zza(this.zzj));
        SafeParcelWriter.writeByte(parcel, 11, com.google.android.gms.maps.internal.zza.zza(this.zzk));
        SafeParcelWriter.writeByte(parcel, 12, com.google.android.gms.maps.internal.zza.zza(this.zzl));
        SafeParcelWriter.writeByte(parcel, 14, com.google.android.gms.maps.internal.zza.zza(this.zzm));
        SafeParcelWriter.writeByte(parcel, 15, com.google.android.gms.maps.internal.zza.zza(this.zzn));
        SafeParcelWriter.writeFloatObject(parcel, 16, getMinZoomPreference(), false);
        SafeParcelWriter.writeFloatObject(parcel, 17, getMaxZoomPreference(), false);
        SafeParcelWriter.writeParcelable(parcel, 18, getLatLngBoundsForCameraTarget(), i, false);
        SafeParcelWriter.writeByte(parcel, 19, com.google.android.gms.maps.internal.zza.zza(this.zzr));
        SafeParcelWriter.writeIntegerObject(parcel, 20, getBackgroundColor(), false);
        SafeParcelWriter.writeString(parcel, 21, getMapId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public GoogleMapOptions zOrderOnTop(boolean z) {
        this.zzb = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions zoomControlsEnabled(boolean z) {
        this.zzf = Boolean.valueOf(z);
        return this;
    }

    public GoogleMapOptions zoomGesturesEnabled(boolean z) {
        this.zzi = Boolean.valueOf(z);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleMapOptions(@SafeParcelable.Param(m1089id = 2) byte b, @SafeParcelable.Param(m1089id = 3) byte b2, @SafeParcelable.Param(m1089id = 4) int i, @SafeParcelable.Param(m1089id = 5) CameraPosition cameraPosition, @SafeParcelable.Param(m1089id = 6) byte b3, @SafeParcelable.Param(m1089id = 7) byte b4, @SafeParcelable.Param(m1089id = 8) byte b5, @SafeParcelable.Param(m1089id = 9) byte b6, @SafeParcelable.Param(m1089id = 10) byte b7, @SafeParcelable.Param(m1089id = 11) byte b8, @SafeParcelable.Param(m1089id = 12) byte b9, @SafeParcelable.Param(m1089id = 14) byte b10, @SafeParcelable.Param(m1089id = 15) byte b11, @SafeParcelable.Param(m1089id = 16) Float f, @SafeParcelable.Param(m1089id = 17) Float f2, @SafeParcelable.Param(m1089id = 18) LatLngBounds latLngBounds, @SafeParcelable.Param(m1089id = 19) byte b12, @SafeParcelable.Param(m1089id = 20) Integer num, @SafeParcelable.Param(m1089id = 21) String str) {
        this.zzd = -1;
        this.zzo = null;
        this.zzp = null;
        this.zzq = null;
        this.zzs = null;
        this.zzt = null;
        this.zzb = com.google.android.gms.maps.internal.zza.zzb(b);
        this.zzc = com.google.android.gms.maps.internal.zza.zzb(b2);
        this.zzd = i;
        this.zze = cameraPosition;
        this.zzf = com.google.android.gms.maps.internal.zza.zzb(b3);
        this.zzg = com.google.android.gms.maps.internal.zza.zzb(b4);
        this.zzh = com.google.android.gms.maps.internal.zza.zzb(b5);
        this.zzi = com.google.android.gms.maps.internal.zza.zzb(b6);
        this.zzj = com.google.android.gms.maps.internal.zza.zzb(b7);
        this.zzk = com.google.android.gms.maps.internal.zza.zzb(b8);
        this.zzl = com.google.android.gms.maps.internal.zza.zzb(b9);
        this.zzm = com.google.android.gms.maps.internal.zza.zzb(b10);
        this.zzn = com.google.android.gms.maps.internal.zza.zzb(b11);
        this.zzo = f;
        this.zzp = f2;
        this.zzq = latLngBounds;
        this.zzr = com.google.android.gms.maps.internal.zza.zzb(b12);
        this.zzs = num;
        this.zzt = str;
    }
}
