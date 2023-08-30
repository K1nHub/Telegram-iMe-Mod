package me.zhanghai.android.materialratingbar;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ClipDrawableCompat extends ClipDrawable implements TintableDrawable {
    private static final String TAG = ClipDrawableCompat.class.getSimpleName();
    private DummyConstantState mConstantState;
    private Drawable mDrawable;

    public ClipDrawableCompat(Drawable drawable, int i, int i2) {
        super(drawable, i, i2);
        this.mConstantState = new DummyConstantState();
        this.mDrawable = drawable;
    }

    @Override // android.graphics.drawable.DrawableWrapper
    public Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // android.graphics.drawable.Drawable, me.zhanghai.android.materialratingbar.TintableDrawable
    public void setTint(int i) {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof TintableDrawable) {
            ((TintableDrawable) drawable).setTint(i);
            return;
        }
        Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
        super.setTint(i);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable, me.zhanghai.android.materialratingbar.TintableDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof TintableDrawable) {
            ((TintableDrawable) drawable).setTintList(colorStateList);
            return;
        }
        Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
        super.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, me.zhanghai.android.materialratingbar.TintableDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.mDrawable;
        if (drawable instanceof TintableDrawable) {
            ((TintableDrawable) drawable).setTintMode(mode);
            return;
        }
        Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
        super.setTintMode(mode);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.mConstantState;
    }

    /* loaded from: classes4.dex */
    private class DummyConstantState extends Drawable.ConstantState {
        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        private DummyConstantState() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return ClipDrawableCompat.this;
        }
    }
}
