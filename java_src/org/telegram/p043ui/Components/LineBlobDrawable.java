package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import java.util.Random;
import org.telegram.messenger.LiteMode;
/* renamed from: org.telegram.ui.Components.LineBlobDrawable */
/* loaded from: classes6.dex */
public class LineBlobDrawable {

    /* renamed from: N */
    private final float f1865N;
    public float maxRadius;
    public float minRadius;
    public Path path = new Path();
    private float[] progress;
    private float[] radius;
    private float[] radiusNext;
    final Random random;
    private float[] speed;

    public LineBlobDrawable(int i) {
        new Paint(1);
        this.random = new Random();
        this.f1865N = i;
        int i2 = i + 1;
        this.radius = new float[i2];
        this.radiusNext = new float[i2];
        this.progress = new float[i2];
        this.speed = new float[i2];
        for (int i3 = 0; i3 <= this.f1865N; i3++) {
            generateBlob(this.radius, i3);
            generateBlob(this.radiusNext, i3);
            this.progress[i3] = 0.0f;
        }
    }

    private void generateBlob(float[] fArr, int i) {
        float f = this.maxRadius;
        float f2 = this.minRadius;
        fArr[i] = f2 + (Math.abs((this.random.nextInt() % 100.0f) / 100.0f) * (f - f2));
        this.speed[i] = (float) (((Math.abs(this.random.nextInt() % 100.0f) / 100.0f) * 0.003d) + 0.017d);
    }

    public void update(float f, float f2) {
        for (int i = 0; i <= this.f1865N; i++) {
            float[] fArr = this.progress;
            float f3 = fArr[i];
            float[] fArr2 = this.speed;
            fArr[i] = f3 + (fArr2[i] * BlobDrawable.MIN_SPEED) + (fArr2[i] * f * BlobDrawable.MAX_SPEED * f2);
            if (fArr[i] >= 1.0f) {
                fArr[i] = 0.0f;
                float[] fArr3 = this.radius;
                float[] fArr4 = this.radiusNext;
                fArr3[i] = fArr4[i];
                generateBlob(fArr4, i);
            }
        }
    }

    public void draw(float f, float f2, float f3, float f4, Canvas canvas, Paint paint, float f5, float f6) {
        if (!LiteMode.isEnabled(512)) {
            canvas.drawRect(f, f2, f3, f4, paint);
            return;
        }
        this.path.reset();
        this.path.moveTo(f3, f4);
        this.path.lineTo(f, f4);
        int i = 0;
        while (true) {
            float f7 = i;
            float f8 = this.f1865N;
            if (f7 > f8) {
                canvas.drawPath(this.path, paint);
                return;
            }
            if (i == 0) {
                float f9 = this.progress[i];
                this.path.lineTo(f, ((f2 - ((this.radius[i] * (1.0f - f9)) + (this.radiusNext[i] * f9))) * f6) + (f5 * (1.0f - f6)));
            } else {
                float[] fArr = this.progress;
                int i2 = i - 1;
                float f10 = fArr[i2];
                float[] fArr2 = this.radius;
                float f11 = fArr2[i2] * (1.0f - f10);
                float[] fArr3 = this.radiusNext;
                float f12 = fArr[i];
                float f13 = (fArr2[i] * (1.0f - f12)) + (fArr3[i] * f12);
                float f14 = f3 - f;
                float f15 = (f14 / f8) * i2;
                float f16 = (f14 / f8) * f7;
                float f17 = f15 + ((f16 - f15) / 2.0f);
                float f18 = (1.0f - f6) * f5;
                float f19 = ((f2 - f13) * f6) + f18;
                this.path.cubicTo(f17, ((f2 - (f11 + (fArr3[i2] * f10))) * f6) + f18, f17, f19, f16, f19);
                if (f7 == this.f1865N) {
                    this.path.lineTo(f3, f4);
                }
            }
            i++;
        }
    }
}
