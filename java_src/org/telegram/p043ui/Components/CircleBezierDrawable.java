package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Random;
/* renamed from: org.telegram.ui.Components.CircleBezierDrawable */
/* loaded from: classes6.dex */
public class CircleBezierDrawable {

    /* renamed from: L */
    private final float f1832L;

    /* renamed from: N */
    private final int f1833N;
    public float radius;
    public float radiusDiff;
    float[] randomAdditionals;
    public float randomK;
    private Path path = new Path();
    private float[] pointStart = new float[4];
    private float[] pointEnd = new float[4];

    /* renamed from: m */
    private Matrix f1834m = new Matrix();
    float globalRotate = BitmapDescriptorFactory.HUE_RED;
    public float idleStateDiff = BitmapDescriptorFactory.HUE_RED;
    public float cubicBezierK = 1.0f;
    final Random random = new Random();

    public CircleBezierDrawable(int i) {
        this.f1833N = i;
        this.f1832L = (float) (Math.tan(3.141592653589793d / (i * 2)) * 1.3333333333333333d);
        this.randomAdditionals = new float[i];
        calculateRandomAdditionals();
    }

    public void calculateRandomAdditionals() {
        for (int i = 0; i < this.f1833N; i++) {
            this.randomAdditionals[i] = (this.random.nextInt() % 100) / 100.0f;
        }
    }

    public void setAdditionals(int[] iArr) {
        for (int i = 0; i < this.f1833N; i += 2) {
            float[] fArr = this.randomAdditionals;
            fArr[i] = iArr[i / 2];
            fArr[i + 1] = 0.0f;
        }
    }

    public void draw(float f, float f2, Canvas canvas, Paint paint) {
        float f3 = this.radius;
        float f4 = this.idleStateDiff;
        float f5 = this.radiusDiff;
        float f6 = (f3 - (f4 / 2.0f)) - (f5 / 2.0f);
        float f7 = f3 + (f5 / 2.0f) + (f4 / 2.0f);
        float max = this.f1832L * Math.max(f6, f7) * this.cubicBezierK;
        this.path.reset();
        int i = 0;
        while (i < this.f1833N) {
            this.f1834m.reset();
            this.f1834m.setRotate((360.0f / this.f1833N) * i, f, f2);
            float f8 = i % 2 == 0 ? f6 : f7;
            float f9 = this.randomK;
            float[] fArr = this.randomAdditionals;
            float f10 = f8 + (fArr[i] * f9);
            float[] fArr2 = this.pointStart;
            fArr2[0] = f;
            float f11 = f2 - f10;
            fArr2[1] = f11;
            fArr2[2] = f + max + (f9 * fArr[i] * this.f1832L);
            fArr2[3] = f11;
            this.f1834m.mapPoints(fArr2);
            int i2 = i + 1;
            int i3 = i2 >= this.f1833N ? 0 : i2;
            float f12 = i3 % 2 == 0 ? f6 : f7;
            float f13 = this.randomK;
            float[] fArr3 = this.randomAdditionals;
            float[] fArr4 = this.pointEnd;
            fArr4[0] = f;
            float f14 = f2 - (f12 + (fArr3[i3] * f13));
            fArr4[1] = f14;
            fArr4[2] = (f - max) + (f13 * fArr3[i3] * this.f1832L);
            fArr4[3] = f14;
            this.f1834m.reset();
            this.f1834m.setRotate((360.0f / this.f1833N) * i3, f, f2);
            this.f1834m.mapPoints(this.pointEnd);
            if (i == 0) {
                Path path = this.path;
                float[] fArr5 = this.pointStart;
                path.moveTo(fArr5[0], fArr5[1]);
            }
            Path path2 = this.path;
            float[] fArr6 = this.pointStart;
            float f15 = fArr6[2];
            float f16 = fArr6[3];
            float[] fArr7 = this.pointEnd;
            path2.cubicTo(f15, f16, fArr7[2], fArr7[3], fArr7[0], fArr7[1]);
            i = i2;
        }
        canvas.save();
        canvas.rotate(this.globalRotate, f, f2);
        canvas.drawPath(this.path, paint);
        canvas.restore();
    }
}
