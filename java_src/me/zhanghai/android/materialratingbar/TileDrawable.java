package me.zhanghai.android.materialratingbar;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
/* loaded from: classes4.dex */
class TileDrawable extends BaseDrawable {
    private Drawable mDrawable;
    private int mTileCount = -1;

    public TileDrawable(Drawable drawable) {
        this.mDrawable = drawable;
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    public void setTileCount(int i) {
        this.mTileCount = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.mDrawable = this.mDrawable.mutate();
        return this;
    }

    @Override // me.zhanghai.android.materialratingbar.BaseDrawable
    protected void onDraw(Canvas canvas, int i, int i2) {
        this.mDrawable.setAlpha(this.mAlpha);
        ColorFilter colorFilterForDrawing = getColorFilterForDrawing();
        if (colorFilterForDrawing != null) {
            this.mDrawable.setColorFilter(colorFilterForDrawing);
        }
        int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
        float f = i2 / intrinsicHeight;
        canvas.scale(f, f);
        float f2 = i / f;
        int i3 = this.mTileCount;
        if (i3 < 0) {
            int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
            int i4 = 0;
            while (i4 < f2) {
                int i5 = i4 + intrinsicWidth;
                this.mDrawable.setBounds(i4, 0, i5, intrinsicHeight);
                this.mDrawable.draw(canvas);
                i4 = i5;
            }
            return;
        }
        float f3 = f2 / i3;
        for (int i6 = 0; i6 < this.mTileCount; i6++) {
            float f4 = (i6 + 0.5f) * f3;
            float intrinsicWidth2 = this.mDrawable.getIntrinsicWidth() / 2.0f;
            this.mDrawable.setBounds(Math.round(f4 - intrinsicWidth2), 0, Math.round(f4 + intrinsicWidth2), intrinsicHeight);
            this.mDrawable.draw(canvas);
        }
    }
}
