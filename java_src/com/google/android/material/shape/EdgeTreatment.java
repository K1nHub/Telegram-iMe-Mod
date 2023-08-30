package com.google.android.material.shape;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3.dex */
public class EdgeTreatment {
    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean forceIntersection() {
        return false;
    }

    public void getEdgePath(float f, float f2, float f3, ShapePath shapePath) {
        shapePath.lineTo(f, BitmapDescriptorFactory.HUE_RED);
    }
}
