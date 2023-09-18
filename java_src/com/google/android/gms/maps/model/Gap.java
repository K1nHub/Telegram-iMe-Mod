package com.google.android.gms.maps.model;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
/* loaded from: classes4.dex */
public final class Gap extends PatternItem {
    public final float length;

    public Gap(float f) {
        super(2, Float.valueOf(Math.max(f, (float) BitmapDescriptorFactory.HUE_RED)));
        this.length = Math.max(f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.google.android.gms.maps.model.PatternItem
    public String toString() {
        float f = this.length;
        return "[Gap: length=" + f + "]";
    }
}
