package org.telegram.p043ui.Components;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.BitmapShaderTools */
/* loaded from: classes6.dex */
public class BitmapShaderTools {
    final Bitmap bitmap;
    final RectF bounds;
    final Canvas canvas;
    final Matrix matrix;
    public final Paint paint;
    final Shader shader;

    public BitmapShaderTools() {
        Paint paint = new Paint(1);
        this.paint = paint;
        this.bounds = new RectF();
        this.matrix = new Matrix();
        Bitmap createBitmap = Bitmap.createBitmap(30, 40, Bitmap.Config.ARGB_8888);
        this.bitmap = createBitmap;
        this.canvas = new Canvas(createBitmap);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(createBitmap, tileMode, tileMode);
        this.shader = bitmapShader;
        paint.setShader(bitmapShader);
        updateBounds();
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public Canvas getCanvas() {
        return this.canvas;
    }

    public void setBounds(RectF rectF) {
        RectF rectF2 = this.bounds;
        if (rectF2.top == rectF.top && rectF2.bottom == rectF.bottom && rectF2.left == rectF.left && rectF2.right == rectF.right) {
            return;
        }
        rectF2.set(rectF);
        updateBounds();
    }

    private void updateBounds() {
        if (this.shader == null) {
            return;
        }
        float width = this.bounds.width() / this.bitmap.getWidth();
        float height = this.bounds.height() / this.bitmap.getHeight();
        this.matrix.reset();
        Matrix matrix = this.matrix;
        RectF rectF = this.bounds;
        matrix.postTranslate(rectF.left, rectF.top);
        this.matrix.preScale(width, height);
        this.shader.setLocalMatrix(this.matrix);
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(f, f2, f3, f4);
        setBounds(rectF);
    }
}
