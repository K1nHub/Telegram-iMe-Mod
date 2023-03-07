package org.telegram.p048ui;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: org.telegram.ui.RoundVideoProgressShadow */
/* loaded from: classes5.dex */
public class RoundVideoProgressShadow {
    int lastSizesHash;
    RadialGradient radialGradient = new RadialGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, 100.0f, new int[]{0, 0, ColorUtils.setAlphaComponent(-16777216, 40)}, new float[]{BitmapDescriptorFactory.HUE_RED, 0.7f, 1.0f}, Shader.TileMode.CLAMP);
    Paint shaderPaint = new Paint();
    Matrix matrix = new Matrix();

    public RoundVideoProgressShadow() {
        this.shaderPaint.setShader(this.radialGradient);
    }

    public void draw(Canvas canvas, float f, float f2, float f3, float f4) {
        if (((int) f) + (((int) f2) << 12) + (((int) f3) << 24) != this.lastSizesHash) {
            this.matrix.reset();
            float f5 = f3 / 100.0f;
            this.matrix.setTranslate(f, f2);
            this.matrix.preScale(f5, f5);
            this.radialGradient.setLocalMatrix(this.matrix);
        }
        this.shaderPaint.setAlpha((int) (f4 * 255.0f));
        canvas.drawCircle(f, f2, f3, this.shaderPaint);
    }
}
