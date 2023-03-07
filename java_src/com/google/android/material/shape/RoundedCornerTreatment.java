package com.google.android.material.shape;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    float radius = -1.0f;

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f, float f2, float f3) {
        shapePath.reset(BitmapDescriptorFactory.HUE_RED, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        shapePath.addArc(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f4, 180.0f, f);
    }
}
