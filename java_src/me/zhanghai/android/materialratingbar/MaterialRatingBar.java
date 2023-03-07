package me.zhanghai.android.materialratingbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.RatingBar;
import androidx.appcompat.widget.TintTypedArray;
import me.zhanghai.android.materialratingbar.internal.DrawableCompat;
/* loaded from: classes4.dex */
public class MaterialRatingBar extends RatingBar {
    private static final String TAG = MaterialRatingBar.class.getSimpleName();
    private MaterialRatingDrawable mDrawable;
    private float mLastKnownRating;
    private OnRatingChangeListener mOnRatingChangeListener;
    private TintInfo mProgressTintInfo;

    /* loaded from: classes4.dex */
    public interface OnRatingChangeListener {
        void onRatingChanged(MaterialRatingBar materialRatingBar, float f);
    }

    public MaterialRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressTintInfo = new TintInfo();
        init(attributeSet, 0);
    }

    private void init(AttributeSet attributeSet, int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, R$styleable.MaterialRatingBar, i, 0);
        int i2 = R$styleable.MaterialRatingBar_mrb_progressTint;
        if (obtainStyledAttributes.hasValue(i2)) {
            this.mProgressTintInfo.mProgressTintList = obtainStyledAttributes.getColorStateList(i2);
            this.mProgressTintInfo.mHasProgressTintList = true;
        }
        int i3 = R$styleable.MaterialRatingBar_mrb_progressTintMode;
        if (obtainStyledAttributes.hasValue(i3)) {
            this.mProgressTintInfo.mProgressTintMode = DrawableCompat.parseTintMode(obtainStyledAttributes.getInt(i3, -1), null);
            this.mProgressTintInfo.mHasProgressTintMode = true;
        }
        int i4 = R$styleable.MaterialRatingBar_mrb_secondaryProgressTint;
        if (obtainStyledAttributes.hasValue(i4)) {
            this.mProgressTintInfo.mSecondaryProgressTintList = obtainStyledAttributes.getColorStateList(i4);
            this.mProgressTintInfo.mHasSecondaryProgressTintList = true;
        }
        int i5 = R$styleable.MaterialRatingBar_mrb_secondaryProgressTintMode;
        if (obtainStyledAttributes.hasValue(i5)) {
            this.mProgressTintInfo.mSecondaryProgressTintMode = DrawableCompat.parseTintMode(obtainStyledAttributes.getInt(i5, -1), null);
            this.mProgressTintInfo.mHasSecondaryProgressTintMode = true;
        }
        int i6 = R$styleable.MaterialRatingBar_mrb_progressBackgroundTint;
        if (obtainStyledAttributes.hasValue(i6)) {
            this.mProgressTintInfo.mProgressBackgroundTintList = obtainStyledAttributes.getColorStateList(i6);
            this.mProgressTintInfo.mHasProgressBackgroundTintList = true;
        }
        int i7 = R$styleable.MaterialRatingBar_mrb_progressBackgroundTintMode;
        if (obtainStyledAttributes.hasValue(i7)) {
            this.mProgressTintInfo.mProgressBackgroundTintMode = DrawableCompat.parseTintMode(obtainStyledAttributes.getInt(i7, -1), null);
            this.mProgressTintInfo.mHasProgressBackgroundTintMode = true;
        }
        int i8 = R$styleable.MaterialRatingBar_mrb_indeterminateTint;
        if (obtainStyledAttributes.hasValue(i8)) {
            this.mProgressTintInfo.mIndeterminateTintList = obtainStyledAttributes.getColorStateList(i8);
            this.mProgressTintInfo.mHasIndeterminateTintList = true;
        }
        int i9 = R$styleable.MaterialRatingBar_mrb_indeterminateTintMode;
        if (obtainStyledAttributes.hasValue(i9)) {
            this.mProgressTintInfo.mIndeterminateTintMode = DrawableCompat.parseTintMode(obtainStyledAttributes.getInt(i9, -1), null);
            this.mProgressTintInfo.mHasIndeterminateTintMode = true;
        }
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.MaterialRatingBar_mrb_fillBackgroundStars, isIndicator());
        obtainStyledAttributes.recycle();
        MaterialRatingDrawable materialRatingDrawable = new MaterialRatingDrawable(getContext(), z);
        this.mDrawable = materialRatingDrawable;
        materialRatingDrawable.setStarCount(getNumStars());
        setProgressDrawable(this.mDrawable);
    }

    @Override // android.widget.RatingBar
    public void setNumStars(int i) {
        super.setNumStars(i);
        MaterialRatingDrawable materialRatingDrawable = this.mDrawable;
        if (materialRatingDrawable != null) {
            materialRatingDrawable.setStarCount(i);
        }
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredHeight = getMeasuredHeight();
        setMeasuredDimension(View.resolveSizeAndState(Math.round(measuredHeight * this.mDrawable.getTileRatio() * getNumStars()), i, 0), measuredHeight);
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        super.setProgressDrawable(drawable);
        if (this.mProgressTintInfo != null) {
            applyProgressTints();
        }
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        super.setIndeterminateDrawable(drawable);
        if (this.mProgressTintInfo != null) {
            applyIndeterminateTint();
        }
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getProgressTintList() {
        logRatingBarTintWarning();
        return getSupportProgressTintList();
    }

    @Override // android.widget.ProgressBar
    public void setProgressTintList(ColorStateList colorStateList) {
        logRatingBarTintWarning();
        setSupportProgressTintList(colorStateList);
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getProgressTintMode() {
        logRatingBarTintWarning();
        return getSupportProgressTintMode();
    }

    @Override // android.widget.ProgressBar
    public void setProgressTintMode(PorterDuff.Mode mode) {
        logRatingBarTintWarning();
        setSupportProgressTintMode(mode);
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getSecondaryProgressTintList() {
        logRatingBarTintWarning();
        return getSupportSecondaryProgressTintList();
    }

    @Override // android.widget.ProgressBar
    public void setSecondaryProgressTintList(ColorStateList colorStateList) {
        logRatingBarTintWarning();
        setSupportSecondaryProgressTintList(colorStateList);
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getSecondaryProgressTintMode() {
        logRatingBarTintWarning();
        return getSupportSecondaryProgressTintMode();
    }

    @Override // android.widget.ProgressBar
    public void setSecondaryProgressTintMode(PorterDuff.Mode mode) {
        logRatingBarTintWarning();
        setSupportSecondaryProgressTintMode(mode);
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getProgressBackgroundTintList() {
        logRatingBarTintWarning();
        return getSupportProgressBackgroundTintList();
    }

    @Override // android.widget.ProgressBar
    public void setProgressBackgroundTintList(ColorStateList colorStateList) {
        logRatingBarTintWarning();
        setSupportProgressBackgroundTintList(colorStateList);
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getProgressBackgroundTintMode() {
        logRatingBarTintWarning();
        return getSupportProgressBackgroundTintMode();
    }

    @Override // android.widget.ProgressBar
    public void setProgressBackgroundTintMode(PorterDuff.Mode mode) {
        logRatingBarTintWarning();
        setSupportProgressBackgroundTintMode(mode);
    }

    @Override // android.widget.ProgressBar
    public ColorStateList getIndeterminateTintList() {
        logRatingBarTintWarning();
        return getSupportIndeterminateTintList();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateTintList(ColorStateList colorStateList) {
        logRatingBarTintWarning();
        setSupportIndeterminateTintList(colorStateList);
    }

    @Override // android.widget.ProgressBar
    public PorterDuff.Mode getIndeterminateTintMode() {
        logRatingBarTintWarning();
        return getSupportIndeterminateTintMode();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateTintMode(PorterDuff.Mode mode) {
        logRatingBarTintWarning();
        setSupportIndeterminateTintMode(mode);
    }

    private void logRatingBarTintWarning() {
        Log.w(TAG, "Non-support version of tint method called, this is error-prone and will crash below Lollipop if you are calling it as a method of RatingBar instead of MaterialRatingBar");
    }

    public ColorStateList getSupportProgressTintList() {
        return this.mProgressTintInfo.mProgressTintList;
    }

    public void setSupportProgressTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressTintList = colorStateList;
        tintInfo.mHasProgressTintList = true;
        applyPrimaryProgressTint();
    }

    public PorterDuff.Mode getSupportProgressTintMode() {
        return this.mProgressTintInfo.mProgressTintMode;
    }

    public void setSupportProgressTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressTintMode = mode;
        tintInfo.mHasProgressTintMode = true;
        applyPrimaryProgressTint();
    }

    public ColorStateList getSupportSecondaryProgressTintList() {
        return this.mProgressTintInfo.mSecondaryProgressTintList;
    }

    public void setSupportSecondaryProgressTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mSecondaryProgressTintList = colorStateList;
        tintInfo.mHasSecondaryProgressTintList = true;
        applySecondaryProgressTint();
    }

    public PorterDuff.Mode getSupportSecondaryProgressTintMode() {
        return this.mProgressTintInfo.mSecondaryProgressTintMode;
    }

    public void setSupportSecondaryProgressTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mSecondaryProgressTintMode = mode;
        tintInfo.mHasSecondaryProgressTintMode = true;
        applySecondaryProgressTint();
    }

    public ColorStateList getSupportProgressBackgroundTintList() {
        return this.mProgressTintInfo.mProgressBackgroundTintList;
    }

    public void setSupportProgressBackgroundTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressBackgroundTintList = colorStateList;
        tintInfo.mHasProgressBackgroundTintList = true;
        applyProgressBackgroundTint();
    }

    public PorterDuff.Mode getSupportProgressBackgroundTintMode() {
        return this.mProgressTintInfo.mProgressBackgroundTintMode;
    }

    public void setSupportProgressBackgroundTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mProgressBackgroundTintMode = mode;
        tintInfo.mHasProgressBackgroundTintMode = true;
        applyProgressBackgroundTint();
    }

    public ColorStateList getSupportIndeterminateTintList() {
        return this.mProgressTintInfo.mIndeterminateTintList;
    }

    public void setSupportIndeterminateTintList(ColorStateList colorStateList) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mIndeterminateTintList = colorStateList;
        tintInfo.mHasIndeterminateTintList = true;
        applyIndeterminateTint();
    }

    public PorterDuff.Mode getSupportIndeterminateTintMode() {
        return this.mProgressTintInfo.mIndeterminateTintMode;
    }

    public void setSupportIndeterminateTintMode(PorterDuff.Mode mode) {
        TintInfo tintInfo = this.mProgressTintInfo;
        tintInfo.mIndeterminateTintMode = mode;
        tintInfo.mHasIndeterminateTintMode = true;
        applyIndeterminateTint();
    }

    private void applyProgressTints() {
        if (getProgressDrawable() == null) {
            return;
        }
        applyPrimaryProgressTint();
        applyProgressBackgroundTint();
        applySecondaryProgressTint();
    }

    private void applyPrimaryProgressTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((tintInfo.mHasProgressTintList || tintInfo.mHasProgressTintMode) && (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908301, true)) != null) {
            TintInfo tintInfo2 = this.mProgressTintInfo;
            applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mProgressTintList, tintInfo2.mHasProgressTintList, tintInfo2.mProgressTintMode, tintInfo2.mHasProgressTintMode);
        }
    }

    private void applySecondaryProgressTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((tintInfo.mHasSecondaryProgressTintList || tintInfo.mHasSecondaryProgressTintMode) && (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908303, false)) != null) {
            TintInfo tintInfo2 = this.mProgressTintInfo;
            applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mSecondaryProgressTintList, tintInfo2.mHasSecondaryProgressTintList, tintInfo2.mSecondaryProgressTintMode, tintInfo2.mHasSecondaryProgressTintMode);
        }
    }

    private void applyProgressBackgroundTint() {
        Drawable tintTargetFromProgressDrawable;
        if (getProgressDrawable() == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if ((tintInfo.mHasProgressBackgroundTintList || tintInfo.mHasProgressBackgroundTintMode) && (tintTargetFromProgressDrawable = getTintTargetFromProgressDrawable(16908288, false)) != null) {
            TintInfo tintInfo2 = this.mProgressTintInfo;
            applyTintForDrawable(tintTargetFromProgressDrawable, tintInfo2.mProgressBackgroundTintList, tintInfo2.mHasProgressBackgroundTintList, tintInfo2.mProgressBackgroundTintMode, tintInfo2.mHasProgressBackgroundTintMode);
        }
    }

    private Drawable getTintTargetFromProgressDrawable(int i, boolean z) {
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable == null) {
            return null;
        }
        progressDrawable.mutate();
        Drawable findDrawableByLayerId = progressDrawable instanceof LayerDrawable ? ((LayerDrawable) progressDrawable).findDrawableByLayerId(i) : null;
        return (findDrawableByLayerId == null && z) ? progressDrawable : findDrawableByLayerId;
    }

    private void applyIndeterminateTint() {
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable == null) {
            return;
        }
        TintInfo tintInfo = this.mProgressTintInfo;
        if (tintInfo.mHasIndeterminateTintList || tintInfo.mHasIndeterminateTintMode) {
            indeterminateDrawable.mutate();
            TintInfo tintInfo2 = this.mProgressTintInfo;
            applyTintForDrawable(indeterminateDrawable, tintInfo2.mIndeterminateTintList, tintInfo2.mHasIndeterminateTintList, tintInfo2.mIndeterminateTintMode, tintInfo2.mHasIndeterminateTintMode);
        }
    }

    private void applyTintForDrawable(Drawable drawable, ColorStateList colorStateList, boolean z, PorterDuff.Mode mode, boolean z2) {
        if (z || z2) {
            if (z) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintList(colorStateList);
                } else {
                    logDrawableTintWarning();
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawable.setTintList(colorStateList);
                    }
                }
            }
            if (z2) {
                if (drawable instanceof TintableDrawable) {
                    ((TintableDrawable) drawable).setTintMode(mode);
                } else {
                    logDrawableTintWarning();
                    if (Build.VERSION.SDK_INT >= 21) {
                        drawable.setTintMode(mode);
                    }
                }
            }
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
        }
    }

    private void logDrawableTintWarning() {
        Log.w(TAG, "Drawable did not implement TintableDrawable, it won't be tinted below Lollipop");
    }

    public OnRatingChangeListener getOnRatingChangeListener() {
        return this.mOnRatingChangeListener;
    }

    public void setOnRatingChangeListener(OnRatingChangeListener onRatingChangeListener) {
        this.mOnRatingChangeListener = onRatingChangeListener;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setSecondaryProgress(int i) {
        super.setSecondaryProgress(i);
        float rating = getRating();
        OnRatingChangeListener onRatingChangeListener = this.mOnRatingChangeListener;
        if (onRatingChangeListener != null && rating != this.mLastKnownRating) {
            onRatingChangeListener.onRatingChanged(this, rating);
        }
        this.mLastKnownRating = rating;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class TintInfo {
        public boolean mHasIndeterminateTintList;
        public boolean mHasIndeterminateTintMode;
        public boolean mHasProgressBackgroundTintList;
        public boolean mHasProgressBackgroundTintMode;
        public boolean mHasProgressTintList;
        public boolean mHasProgressTintMode;
        public boolean mHasSecondaryProgressTintList;
        public boolean mHasSecondaryProgressTintMode;
        public ColorStateList mIndeterminateTintList;
        public PorterDuff.Mode mIndeterminateTintMode;
        public ColorStateList mProgressBackgroundTintList;
        public PorterDuff.Mode mProgressBackgroundTintMode;
        public ColorStateList mProgressTintList;
        public PorterDuff.Mode mProgressTintMode;
        public ColorStateList mSecondaryProgressTintList;
        public PorterDuff.Mode mSecondaryProgressTintMode;

        private TintInfo() {
        }
    }
}
