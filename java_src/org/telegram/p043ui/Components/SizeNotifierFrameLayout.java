package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.text.MeasuredText;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.BlurSettingsBottomSheet;
import org.telegram.p043ui.ChatBackgroundDrawable;
import org.telegram.p043ui.Components.SizeNotifierFrameLayout;
import org.telegram.p043ui.Components.WallpaperParallaxEffect;
/* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout */
/* loaded from: classes6.dex */
public class SizeNotifierFrameLayout extends FrameLayout {
    private static DispatchQueue blurQueue;
    public AdjustPanLayoutHelper adjustPanLayoutHelper;
    private boolean animationInProgress;
    boolean attached;
    private Drawable backgroundDrawable;
    private boolean backgroundMotion;
    private int backgroundTranslationY;
    protected View backgroundView;
    final BlurBackgroundTask blurBackgroundTask;
    public ArrayList<View> blurBehindViews;
    ValueAnimator blurCrossfade;
    public float blurCrossfadeProgress;
    public boolean blurGeneratingTuskIsRunning;
    public boolean blurIsRunning;
    public Paint blurPaintBottom;
    public Paint blurPaintBottom2;
    public Paint blurPaintTop;
    public Paint blurPaintTop2;
    private int bottomClip;
    int count;
    int count2;
    BlurBitmap currentBitmap;
    protected SizeNotifierFrameLayoutDelegate delegate;
    private int emojiHeight;
    private float emojiOffset;
    public boolean invalidateBlur;
    protected int keyboardHeight;
    Matrix matrix;
    Matrix matrix2;
    public boolean needBlur;
    public boolean needBlurBottom;
    private boolean occupyStatusBar;
    private Drawable oldBackgroundDrawable;
    private boolean oldBackgroundMotion;
    private WallpaperParallaxEffect parallaxEffect;
    private float parallaxScale;
    private INavigationLayout parentLayout;
    private boolean paused;
    BlurBitmap prevBitmap;
    private Rect rect;
    private Paint selectedBlurPaint;
    private Paint selectedBlurPaint2;
    private boolean skipBackgroundDrawing;
    SnowflakesEffect snowflakesEffect;
    private float themeAnimationValue;
    int times;
    int times2;
    private float translationX;
    private float translationY;
    public ArrayList<BlurBitmap> unusedBitmaps;

    /* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate */
    /* loaded from: classes6.dex */
    public interface SizeNotifierFrameLayoutDelegate {
        void onSizeChanged(int i, boolean z);
    }

    private void checkLayerType() {
    }

    protected AdjustPanLayoutHelper createAdjustPanLayoutHelper() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawList(Canvas canvas, boolean z) {
    }

    public int getBottomPadding() {
        return 0;
    }

    protected float getBottomTranslation() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    protected float getListTranslationY() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    protected Theme.ResourcesProvider getResourceProvider() {
        return null;
    }

    protected int getScrollOffset() {
        return 0;
    }

    protected boolean isActionBarVisible() {
        return true;
    }

    public void invalidateBlur() {
        if (SharedConfig.chatBlurEnabled()) {
            this.invalidateBlur = true;
            if (!this.blurIsRunning || this.blurGeneratingTuskIsRunning) {
                return;
            }
            invalidate();
        }
    }

    public void invalidateBackground() {
        View view = this.backgroundView;
        if (view != null) {
            view.invalidate();
        }
    }

    public SizeNotifierFrameLayout(Context context) {
        this(context, null);
    }

    public SizeNotifierFrameLayout(Context context, INavigationLayout iNavigationLayout) {
        super(context);
        this.rect = new Rect();
        this.occupyStatusBar = true;
        this.parallaxScale = 1.0f;
        this.paused = true;
        this.unusedBitmaps = new ArrayList<>(10);
        this.blurBehindViews = new ArrayList<>();
        this.matrix = new Matrix();
        this.matrix2 = new Matrix();
        this.blurPaintTop = new Paint();
        this.blurPaintTop2 = new Paint();
        this.blurPaintBottom = new Paint();
        this.blurPaintBottom2 = new Paint();
        this.themeAnimationValue = 1.0f;
        this.blurBackgroundTask = new BlurBackgroundTask();
        setWillNotDraw(false);
        this.parentLayout = iNavigationLayout;
        this.adjustPanLayoutHelper = createAdjustPanLayoutHelper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout$BackgroundView */
    /* loaded from: classes6.dex */
    public class BackgroundView extends View {
        public BackgroundView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            float f;
            float f2;
            float f3;
            if (SizeNotifierFrameLayout.this.backgroundDrawable == null || SizeNotifierFrameLayout.this.skipBackgroundDrawing) {
                return;
            }
            Drawable newDrawable = SizeNotifierFrameLayout.this.getNewDrawable();
            boolean newDrawableMotion = SizeNotifierFrameLayout.this.getNewDrawableMotion();
            Drawable drawable = SizeNotifierFrameLayout.this.backgroundDrawable;
            float f4 = BitmapDescriptorFactory.HUE_RED;
            if (newDrawable != drawable && newDrawable != null) {
                if (Theme.isAnimatingColor()) {
                    SizeNotifierFrameLayout sizeNotifierFrameLayout = SizeNotifierFrameLayout.this;
                    sizeNotifierFrameLayout.oldBackgroundDrawable = sizeNotifierFrameLayout.backgroundDrawable;
                    SizeNotifierFrameLayout sizeNotifierFrameLayout2 = SizeNotifierFrameLayout.this;
                    sizeNotifierFrameLayout2.oldBackgroundMotion = sizeNotifierFrameLayout2.backgroundMotion;
                }
                if (newDrawable instanceof MotionBackgroundDrawable) {
                    ((MotionBackgroundDrawable) newDrawable).setParentView(SizeNotifierFrameLayout.this.backgroundView);
                }
                SizeNotifierFrameLayout.this.backgroundDrawable = newDrawable;
                SizeNotifierFrameLayout sizeNotifierFrameLayout3 = SizeNotifierFrameLayout.this;
                if (sizeNotifierFrameLayout3.attached && (sizeNotifierFrameLayout3.backgroundDrawable instanceof ChatBackgroundDrawable)) {
                    ((ChatBackgroundDrawable) SizeNotifierFrameLayout.this.backgroundDrawable).onAttachedToWindow(this);
                }
                SizeNotifierFrameLayout.this.backgroundMotion = newDrawableMotion;
                SizeNotifierFrameLayout.this.themeAnimationValue = BitmapDescriptorFactory.HUE_RED;
                SizeNotifierFrameLayout.this.checkMotion();
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout4 = SizeNotifierFrameLayout.this;
            float f5 = 1.0f;
            sizeNotifierFrameLayout4.themeAnimationValue = Utilities.clamp(sizeNotifierFrameLayout4.themeAnimationValue + (AndroidUtilities.screenRefreshTime / 200.0f), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            int i = 0;
            while (i < 2) {
                SizeNotifierFrameLayout sizeNotifierFrameLayout5 = SizeNotifierFrameLayout.this;
                Drawable drawable2 = i == 0 ? sizeNotifierFrameLayout5.oldBackgroundDrawable : sizeNotifierFrameLayout5.backgroundDrawable;
                if (drawable2 != null) {
                    if (i == 1 && SizeNotifierFrameLayout.this.oldBackgroundDrawable != null && SizeNotifierFrameLayout.this.parentLayout != null) {
                        drawable2.setAlpha((int) (SizeNotifierFrameLayout.this.themeAnimationValue * 255.0f));
                    } else {
                        drawable2.setAlpha(255);
                    }
                    SizeNotifierFrameLayout sizeNotifierFrameLayout6 = SizeNotifierFrameLayout.this;
                    if (i == 0 ? sizeNotifierFrameLayout6.oldBackgroundMotion : sizeNotifierFrameLayout6.backgroundMotion) {
                        f = SizeNotifierFrameLayout.this.parallaxScale;
                        f2 = SizeNotifierFrameLayout.this.translationX;
                        f3 = SizeNotifierFrameLayout.this.translationY;
                    } else {
                        f = f5;
                        f2 = f4;
                        f3 = f2;
                    }
                    if (drawable2 instanceof MotionBackgroundDrawable) {
                        MotionBackgroundDrawable motionBackgroundDrawable = (MotionBackgroundDrawable) drawable2;
                        if (motionBackgroundDrawable.hasPattern()) {
                            int currentActionBarHeight = (SizeNotifierFrameLayout.this.isActionBarVisible() ? C3704ActionBar.getCurrentActionBarHeight() : 0) + ((Build.VERSION.SDK_INT < 21 || !SizeNotifierFrameLayout.this.occupyStatusBar) ? 0 : AndroidUtilities.statusBarHeight);
                            int measuredHeight = getRootView().getMeasuredHeight() - currentActionBarHeight;
                            float max = Math.max(getMeasuredWidth() / drawable2.getIntrinsicWidth(), measuredHeight / drawable2.getIntrinsicHeight());
                            int ceil = (int) Math.ceil(drawable2.getIntrinsicWidth() * max * f);
                            int ceil2 = (int) Math.ceil(drawable2.getIntrinsicHeight() * max * f);
                            int measuredWidth = ((getMeasuredWidth() - ceil) / 2) + ((int) f2);
                            int i2 = SizeNotifierFrameLayout.this.backgroundTranslationY + ((measuredHeight - ceil2) / 2) + currentActionBarHeight + ((int) f3);
                            canvas.save();
                            canvas.clipRect(0, currentActionBarHeight, ceil, getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                            drawable2.setBounds(measuredWidth, i2, ceil + measuredWidth, ceil2 + i2);
                            drawable2.draw(canvas);
                            SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                            canvas.restore();
                        } else {
                            if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                                canvas.save();
                                canvas.clipRect(0, 0, getMeasuredWidth(), getRootView().getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                            }
                            motionBackgroundDrawable.setTranslationY(SizeNotifierFrameLayout.this.backgroundTranslationY);
                            int measuredHeight2 = (int) ((getRootView().getMeasuredHeight() - SizeNotifierFrameLayout.this.backgroundTranslationY) + f3);
                            if (SizeNotifierFrameLayout.this.animationInProgress) {
                                measuredHeight2 = (int) (measuredHeight2 - SizeNotifierFrameLayout.this.emojiOffset);
                            } else if (SizeNotifierFrameLayout.this.emojiHeight != 0) {
                                measuredHeight2 -= SizeNotifierFrameLayout.this.emojiHeight;
                            }
                            drawable2.setBounds(0, 0, getMeasuredWidth(), measuredHeight2);
                            drawable2.draw(canvas);
                            if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                                canvas.restore();
                            }
                        }
                    } else if (drawable2 instanceof ColorDrawable) {
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.save();
                            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                        }
                        drawable2.setBounds(0, 0, getMeasuredWidth(), getRootView().getMeasuredHeight());
                        drawable2.draw(canvas);
                        SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.restore();
                        }
                    } else if (drawable2 instanceof GradientDrawable) {
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.save();
                            canvas.clipRect(0, 0, getMeasuredWidth(), getRootView().getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                        }
                        drawable2.setBounds(0, SizeNotifierFrameLayout.this.backgroundTranslationY, getMeasuredWidth(), SizeNotifierFrameLayout.this.backgroundTranslationY + getRootView().getMeasuredHeight());
                        drawable2.draw(canvas);
                        SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.restore();
                        }
                    } else if (!(drawable2 instanceof BitmapDrawable)) {
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.save();
                            canvas.clipRect(0, 0, getMeasuredWidth(), getRootView().getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                        }
                        if (drawable2 instanceof ChatBackgroundDrawable) {
                            ((ChatBackgroundDrawable) drawable2).setParent(this);
                        }
                        float f6 = f - 1.0f;
                        float f7 = (((-getMeasuredWidth()) * f6) / 2.0f) + f2;
                        float f8 = (((-getRootView().getMeasuredHeight()) * f6) / 2.0f) + f3;
                        drawable2.setBounds((int) f7, (int) (SizeNotifierFrameLayout.this.backgroundTranslationY + f8), (int) ((getMeasuredWidth() * f) + f7), (int) (SizeNotifierFrameLayout.this.backgroundTranslationY + (getRootView().getMeasuredHeight() * f) + f8));
                        drawable2.draw(canvas);
                        SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                        if (SizeNotifierFrameLayout.this.bottomClip != 0) {
                            canvas.restore();
                        }
                    } else if (((BitmapDrawable) drawable2).getTileModeX() != Shader.TileMode.REPEAT) {
                        int currentActionBarHeight2 = (SizeNotifierFrameLayout.this.isActionBarVisible() ? C3704ActionBar.getCurrentActionBarHeight() : 0) + ((Build.VERSION.SDK_INT < 21 || !SizeNotifierFrameLayout.this.occupyStatusBar) ? 0 : AndroidUtilities.statusBarHeight);
                        int measuredHeight3 = getRootView().getMeasuredHeight() - currentActionBarHeight2;
                        float max2 = Math.max(getMeasuredWidth() / drawable2.getIntrinsicWidth(), measuredHeight3 / drawable2.getIntrinsicHeight());
                        int ceil3 = (int) Math.ceil(drawable2.getIntrinsicWidth() * max2 * f);
                        int ceil4 = (int) Math.ceil(drawable2.getIntrinsicHeight() * max2 * f);
                        int measuredWidth2 = ((getMeasuredWidth() - ceil3) / 2) + ((int) f2);
                        int i3 = SizeNotifierFrameLayout.this.backgroundTranslationY + ((measuredHeight3 - ceil4) / 2) + currentActionBarHeight2 + ((int) f3);
                        canvas.save();
                        canvas.clipRect(0, currentActionBarHeight2, ceil3, getMeasuredHeight() - SizeNotifierFrameLayout.this.bottomClip);
                        drawable2.setBounds(measuredWidth2, i3, ceil3 + measuredWidth2, ceil4 + i3);
                        drawable2.draw(canvas);
                        SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                        canvas.restore();
                    } else {
                        canvas.save();
                        float f9 = 2.0f / AndroidUtilities.density;
                        canvas.scale(f9, f9);
                        drawable2.setBounds(0, 0, (int) Math.ceil(getMeasuredWidth() / f9), (int) Math.ceil(getRootView().getMeasuredHeight() / f9));
                        drawable2.draw(canvas);
                        SizeNotifierFrameLayout.this.checkSnowflake(canvas);
                        canvas.restore();
                    }
                    if (i == 0 && SizeNotifierFrameLayout.this.oldBackgroundDrawable != null && SizeNotifierFrameLayout.this.themeAnimationValue >= 1.0f) {
                        SizeNotifierFrameLayout sizeNotifierFrameLayout7 = SizeNotifierFrameLayout.this;
                        if (sizeNotifierFrameLayout7.attached && (sizeNotifierFrameLayout7.oldBackgroundDrawable instanceof ChatBackgroundDrawable)) {
                            ((ChatBackgroundDrawable) SizeNotifierFrameLayout.this.oldBackgroundDrawable).onDetachedFromWindow(SizeNotifierFrameLayout.this.backgroundView);
                        }
                        SizeNotifierFrameLayout.this.oldBackgroundDrawable = null;
                        SizeNotifierFrameLayout.this.oldBackgroundMotion = false;
                        SizeNotifierFrameLayout.this.checkMotion();
                        SizeNotifierFrameLayout.this.backgroundView.invalidate();
                    }
                }
                i++;
                f5 = 1.0f;
                f4 = BitmapDescriptorFactory.HUE_RED;
            }
            if (SizeNotifierFrameLayout.this.themeAnimationValue != 1.0f) {
                SizeNotifierFrameLayout.this.backgroundView.invalidate();
            }
        }
    }

    public void setBackgroundImage(Drawable drawable, boolean z) {
        if (this.backgroundDrawable == drawable) {
            return;
        }
        if (this.backgroundView == null) {
            BackgroundView backgroundView = new BackgroundView(getContext());
            this.backgroundView = backgroundView;
            addView(backgroundView, 0, LayoutHelper.createFrame(-1, -1));
            checkLayerType();
        }
        if (drawable instanceof MotionBackgroundDrawable) {
            ((MotionBackgroundDrawable) drawable).setParentView(this.backgroundView);
        }
        if (this.attached) {
            Drawable drawable2 = this.backgroundDrawable;
            if (drawable2 instanceof ChatBackgroundDrawable) {
                ((ChatBackgroundDrawable) drawable2).onDetachedFromWindow(this.backgroundView);
            }
        }
        this.backgroundDrawable = drawable;
        if (this.attached && (drawable instanceof ChatBackgroundDrawable)) {
            ((ChatBackgroundDrawable) drawable).onAttachedToWindow(this.backgroundView);
        }
        checkMotion();
        this.backgroundView.invalidate();
        checkLayerType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMotion() {
        if (this.oldBackgroundMotion || this.backgroundMotion) {
            if (this.parallaxEffect == null) {
                WallpaperParallaxEffect wallpaperParallaxEffect = new WallpaperParallaxEffect(getContext());
                this.parallaxEffect = wallpaperParallaxEffect;
                wallpaperParallaxEffect.setCallback(new WallpaperParallaxEffect.Callback() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout$$ExternalSyntheticLambda1
                    @Override // org.telegram.p043ui.Components.WallpaperParallaxEffect.Callback
                    public final void onOffsetsChanged(int i, int i2, float f) {
                        SizeNotifierFrameLayout.this.lambda$checkMotion$0(i, i2, f);
                    }
                });
                if (getMeasuredWidth() != 0 && getMeasuredHeight() != 0) {
                    this.parallaxScale = this.parallaxEffect.getScale(getMeasuredWidth(), getMeasuredHeight());
                }
            }
            if (this.paused) {
                return;
            }
            this.parallaxEffect.setEnabled(true);
            return;
        }
        WallpaperParallaxEffect wallpaperParallaxEffect2 = this.parallaxEffect;
        if (wallpaperParallaxEffect2 != null) {
            wallpaperParallaxEffect2.setEnabled(false);
            this.parallaxEffect = null;
            this.parallaxScale = 1.0f;
            this.translationX = BitmapDescriptorFactory.HUE_RED;
            this.translationY = BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMotion$0(int i, int i2, float f) {
        this.translationX = i;
        this.translationY = i2;
        View view = this.backgroundView;
        if (view != null) {
            view.invalidate();
        }
    }

    public Drawable getBackgroundImage() {
        return this.backgroundDrawable;
    }

    public void setDelegate(SizeNotifierFrameLayoutDelegate sizeNotifierFrameLayoutDelegate) {
        this.delegate = sizeNotifierFrameLayoutDelegate;
    }

    public void setOccupyStatusBar(boolean z) {
        this.occupyStatusBar = z;
    }

    public void onPause() {
        WallpaperParallaxEffect wallpaperParallaxEffect = this.parallaxEffect;
        if (wallpaperParallaxEffect != null) {
            wallpaperParallaxEffect.setEnabled(false);
        }
        this.paused = true;
    }

    public void onResume() {
        WallpaperParallaxEffect wallpaperParallaxEffect = this.parallaxEffect;
        if (wallpaperParallaxEffect != null) {
            wallpaperParallaxEffect.setEnabled(true);
        }
        this.paused = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        notifyHeightChanged();
    }

    public int measureKeyboardHeight() {
        View rootView = getRootView();
        getWindowVisibleDisplayFrame(this.rect);
        Rect rect = this.rect;
        if (rect.bottom == 0 && rect.top == 0) {
            return 0;
        }
        int height = (rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight : 0)) - AndroidUtilities.getViewInset(rootView);
        Rect rect2 = this.rect;
        int max = Math.max(0, height - (rect2.bottom - rect2.top));
        this.keyboardHeight = max;
        return max;
    }

    public int getKeyboardHeight() {
        return this.keyboardHeight;
    }

    public void notifyHeightChanged() {
        WallpaperParallaxEffect wallpaperParallaxEffect = this.parallaxEffect;
        if (wallpaperParallaxEffect != null) {
            this.parallaxScale = wallpaperParallaxEffect.getScale(getMeasuredWidth(), getMeasuredHeight());
        }
        if (this.delegate != null) {
            this.keyboardHeight = measureKeyboardHeight();
            Point point = AndroidUtilities.displaySize;
            final boolean z = point.x > point.y;
            post(new Runnable() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SizeNotifierFrameLayout.this.lambda$notifyHeightChanged$1(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyHeightChanged$1(boolean z) {
        SizeNotifierFrameLayoutDelegate sizeNotifierFrameLayoutDelegate = this.delegate;
        if (sizeNotifierFrameLayoutDelegate != null) {
            sizeNotifierFrameLayoutDelegate.onSizeChanged(this.keyboardHeight, z);
        }
    }

    public void setBottomClip(int i) {
        if (i != this.bottomClip) {
            this.bottomClip = i;
            View view = this.backgroundView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void setBackgroundTranslation(int i) {
        if (i != this.backgroundTranslationY) {
            this.backgroundTranslationY = i;
            View view = this.backgroundView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public int getBackgroundTranslationY() {
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof MotionBackgroundDrawable) {
            if (this.animationInProgress) {
                return (int) this.emojiOffset;
            }
            int i = this.emojiHeight;
            return i != 0 ? i : this.backgroundTranslationY;
        } else if (drawable instanceof ChatBackgroundDrawable) {
            return this.backgroundTranslationY;
        } else {
            return 0;
        }
    }

    public int getBackgroundSizeY() {
        int i;
        Drawable drawable = this.backgroundDrawable;
        int i2 = 0;
        if (drawable instanceof MotionBackgroundDrawable) {
            if (!((MotionBackgroundDrawable) drawable).hasPattern()) {
                if (this.animationInProgress) {
                    i = (int) this.emojiOffset;
                } else {
                    i = this.emojiHeight;
                    if (i == 0) {
                        i = this.backgroundTranslationY;
                    }
                }
                i2 = i;
            } else if (this.backgroundTranslationY == 0) {
                i2 = -this.keyboardHeight;
            }
        } else if (drawable instanceof ChatBackgroundDrawable) {
            i2 = this.backgroundTranslationY;
        }
        return getMeasuredHeight() - i2;
    }

    public int getHeightWithKeyboard() {
        return this.keyboardHeight + getMeasuredHeight();
    }

    public void setEmojiKeyboardHeight(int i) {
        if (this.emojiHeight != i) {
            this.emojiHeight = i;
            View view = this.backgroundView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void setEmojiOffset(boolean z, float f) {
        if (this.emojiOffset == f && this.animationInProgress == z) {
            return;
        }
        this.emojiOffset = f;
        this.animationInProgress = z;
        View view = this.backgroundView;
        if (view != null) {
            view.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSnowflake(Canvas canvas) {
        if (this.backgroundView != null && Theme.canStartHolidayAnimation() && LiteMode.isEnabled(32)) {
            if (this.snowflakesEffect == null) {
                this.snowflakesEffect = new SnowflakesEffect(1);
            }
            this.snowflakesEffect.onDraw(this.backgroundView, canvas);
        }
    }

    public void setSkipBackgroundDrawing(boolean z) {
        if (this.skipBackgroundDrawing != z) {
            this.skipBackgroundDrawing = z;
            View view = this.backgroundView;
            if (view != null) {
                view.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable getNewDrawable() {
        return Theme.getCachedWallpaperNonBlocking();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getNewDrawableMotion() {
        return Theme.isWallpaperMotion();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == getBackgroundImage() || super.verifyDrawable(drawable);
    }

    public void startBlur() {
        BlurBitmap blurBitmap;
        if (this.blurIsRunning && !this.blurGeneratingTuskIsRunning && this.invalidateBlur && SharedConfig.chatBlurEnabled() && Color.alpha(Theme.getColor(Theme.key_chat_BlurAlpha)) != 255) {
            int measuredWidth = getMeasuredWidth();
            int currentActionBarHeight = C3704ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight + AndroidUtilities.m107dp(100);
            if (measuredWidth == 0 || currentActionBarHeight == 0) {
                return;
            }
            this.invalidateBlur = false;
            this.blurGeneratingTuskIsRunning = true;
            float f = currentActionBarHeight;
            int i = ((int) (f / 12.0f)) + 34;
            float f2 = measuredWidth;
            int i2 = (int) (f2 / 12.0f);
            long currentTimeMillis = System.currentTimeMillis();
            if (this.unusedBitmaps.size() > 0) {
                ArrayList<BlurBitmap> arrayList = this.unusedBitmaps;
                blurBitmap = arrayList.remove(arrayList.size() - 1);
            } else {
                blurBitmap = null;
            }
            if (blurBitmap == null) {
                blurBitmap = new BlurBitmap();
                blurBitmap.topBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                blurBitmap.topCanvas = new SimplerCanvas(blurBitmap.topBitmap);
                if (this.needBlurBottom) {
                    blurBitmap.bottomBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                    blurBitmap.bottomCanvas = new SimplerCanvas(blurBitmap.bottomBitmap);
                }
            } else {
                blurBitmap.topBitmap.eraseColor(0);
                Bitmap bitmap = blurBitmap.bottomBitmap;
                if (bitmap != null) {
                    bitmap.eraseColor(0);
                }
            }
            float width = blurBitmap.topBitmap.getWidth() / f2;
            float height = (blurBitmap.topBitmap.getHeight() - 34) / f;
            blurBitmap.topCanvas.save();
            blurBitmap.pixelFixOffset = getScrollOffset() % 24;
            float f3 = height * 10.0f;
            blurBitmap.topCanvas.clipRect(1.0f, f3, blurBitmap.topBitmap.getWidth(), blurBitmap.topBitmap.getHeight() - 1);
            blurBitmap.topCanvas.scale(width, height);
            blurBitmap.topCanvas.translate(BitmapDescriptorFactory.HUE_RED, f3 + blurBitmap.pixelFixOffset);
            blurBitmap.topScaleX = 1.0f / width;
            blurBitmap.topScaleY = 1.0f / height;
            drawList(blurBitmap.topCanvas, true);
            blurBitmap.topCanvas.restore();
            if (this.needBlurBottom) {
                float width2 = blurBitmap.bottomBitmap.getWidth() / f2;
                float height2 = (blurBitmap.bottomBitmap.getHeight() - 34) / f;
                blurBitmap.needBlurBottom = true;
                blurBitmap.bottomOffset = getBottomOffset() - f;
                blurBitmap.drawnLisetTranslationY = getBottomOffset();
                blurBitmap.bottomCanvas.save();
                float f4 = 10.0f * height2;
                blurBitmap.bottomCanvas.clipRect(1.0f, f4, blurBitmap.bottomBitmap.getWidth(), blurBitmap.bottomBitmap.getHeight() - 1);
                blurBitmap.bottomCanvas.scale(width2, height2);
                blurBitmap.bottomCanvas.translate(BitmapDescriptorFactory.HUE_RED, (f4 - blurBitmap.bottomOffset) + blurBitmap.pixelFixOffset);
                blurBitmap.bottomScaleX = 1.0f / width2;
                blurBitmap.bottomScaleY = 1.0f / height2;
                drawList(blurBitmap.bottomCanvas, false);
                blurBitmap.bottomCanvas.restore();
            } else {
                blurBitmap.needBlurBottom = false;
            }
            this.times2 = (int) (this.times2 + (System.currentTimeMillis() - currentTimeMillis));
            int i3 = this.count2 + 1;
            this.count2 = i3;
            if (i3 >= 20) {
                this.count2 = 0;
                this.times2 = 0;
            }
            if (blurQueue == null) {
                blurQueue = new DispatchQueue("BlurQueue");
            }
            this.blurBackgroundTask.radius = (int) (((int) (Math.max(6, Math.max(currentActionBarHeight, measuredWidth) / 180) * 2.5f)) * BlurSettingsBottomSheet.blurRadius);
            BlurBackgroundTask blurBackgroundTask = this.blurBackgroundTask;
            blurBackgroundTask.finalBitmap = blurBitmap;
            blurQueue.postRunnable(blurBackgroundTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout$BlurBackgroundTask */
    /* loaded from: classes6.dex */
    public class BlurBackgroundTask implements Runnable {
        BlurBitmap finalBitmap;
        int radius;

        private BlurBackgroundTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Bitmap bitmap;
            long currentTimeMillis = System.currentTimeMillis();
            Utilities.stackBlurBitmap(this.finalBitmap.topBitmap, this.radius);
            BlurBitmap blurBitmap = this.finalBitmap;
            if (blurBitmap.needBlurBottom && (bitmap = blurBitmap.bottomBitmap) != null) {
                Utilities.stackBlurBitmap(bitmap, this.radius);
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout = SizeNotifierFrameLayout.this;
            sizeNotifierFrameLayout.times = (int) (sizeNotifierFrameLayout.times + (System.currentTimeMillis() - currentTimeMillis));
            SizeNotifierFrameLayout sizeNotifierFrameLayout2 = SizeNotifierFrameLayout.this;
            int i = sizeNotifierFrameLayout2.count + 1;
            sizeNotifierFrameLayout2.count = i;
            if (i > 1000) {
                StringBuilder sb = new StringBuilder();
                sb.append("chat blur generating average time");
                SizeNotifierFrameLayout sizeNotifierFrameLayout3 = SizeNotifierFrameLayout.this;
                sb.append(sizeNotifierFrameLayout3.times / sizeNotifierFrameLayout3.count);
                FileLog.m105d(sb.toString());
                SizeNotifierFrameLayout sizeNotifierFrameLayout4 = SizeNotifierFrameLayout.this;
                sizeNotifierFrameLayout4.count = 0;
                sizeNotifierFrameLayout4.times = 0;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout$BlurBackgroundTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SizeNotifierFrameLayout.BlurBackgroundTask.this.lambda$run$2();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$2() {
            SizeNotifierFrameLayout sizeNotifierFrameLayout = SizeNotifierFrameLayout.this;
            if (!sizeNotifierFrameLayout.blurIsRunning) {
                BlurBitmap blurBitmap = this.finalBitmap;
                if (blurBitmap != null) {
                    blurBitmap.recycle();
                }
                SizeNotifierFrameLayout.this.blurGeneratingTuskIsRunning = false;
                return;
            }
            final BlurBitmap blurBitmap2 = sizeNotifierFrameLayout.currentBitmap;
            sizeNotifierFrameLayout.prevBitmap = blurBitmap2;
            sizeNotifierFrameLayout.blurPaintTop2.setShader(sizeNotifierFrameLayout.blurPaintTop.getShader());
            SizeNotifierFrameLayout sizeNotifierFrameLayout2 = SizeNotifierFrameLayout.this;
            sizeNotifierFrameLayout2.blurPaintBottom2.setShader(sizeNotifierFrameLayout2.blurPaintBottom.getShader());
            Bitmap bitmap = this.finalBitmap.topBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            SizeNotifierFrameLayout.this.blurPaintTop.setShader(new BitmapShader(bitmap, tileMode, tileMode));
            BlurBitmap blurBitmap3 = this.finalBitmap;
            if (blurBitmap3.needBlurBottom && blurBitmap3.bottomBitmap != null) {
                Bitmap bitmap2 = this.finalBitmap.bottomBitmap;
                Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                SizeNotifierFrameLayout.this.blurPaintBottom.setShader(new BitmapShader(bitmap2, tileMode2, tileMode2));
            }
            ValueAnimator valueAnimator = SizeNotifierFrameLayout.this.blurCrossfade;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout3 = SizeNotifierFrameLayout.this;
            sizeNotifierFrameLayout3.blurCrossfadeProgress = BitmapDescriptorFactory.HUE_RED;
            sizeNotifierFrameLayout3.blurCrossfade = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            SizeNotifierFrameLayout.this.blurCrossfade.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout$BlurBackgroundTask$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SizeNotifierFrameLayout.BlurBackgroundTask.this.lambda$run$0(valueAnimator2);
                }
            });
            SizeNotifierFrameLayout.this.blurCrossfade.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout.BlurBackgroundTask.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SizeNotifierFrameLayout sizeNotifierFrameLayout4 = SizeNotifierFrameLayout.this;
                    sizeNotifierFrameLayout4.blurCrossfadeProgress = 1.0f;
                    sizeNotifierFrameLayout4.unusedBitmaps.add(blurBitmap2);
                    SizeNotifierFrameLayout.this.blurPaintTop2.setShader(null);
                    SizeNotifierFrameLayout.this.blurPaintBottom2.setShader(null);
                    SizeNotifierFrameLayout.this.invalidateBlurredViews();
                    super.onAnimationEnd(animator);
                }
            });
            SizeNotifierFrameLayout.this.blurCrossfade.setDuration(50L);
            SizeNotifierFrameLayout.this.blurCrossfade.start();
            SizeNotifierFrameLayout.this.invalidateBlurredViews();
            SizeNotifierFrameLayout.this.currentBitmap = this.finalBitmap;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.SizeNotifierFrameLayout$BlurBackgroundTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    SizeNotifierFrameLayout.BlurBackgroundTask.this.lambda$run$1();
                }
            }, 16L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(ValueAnimator valueAnimator) {
            SizeNotifierFrameLayout.this.blurCrossfadeProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SizeNotifierFrameLayout.this.invalidateBlurredViews();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1() {
            SizeNotifierFrameLayout sizeNotifierFrameLayout = SizeNotifierFrameLayout.this;
            sizeNotifierFrameLayout.blurGeneratingTuskIsRunning = false;
            sizeNotifierFrameLayout.startBlur();
        }
    }

    public void invalidateBlurredViews() {
        for (int i = 0; i < this.blurBehindViews.size(); i++) {
            this.blurBehindViews.get(i).invalidate();
        }
    }

    protected float getBottomOffset() {
        return getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.blurIsRunning) {
            startBlur();
        }
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        if (this.needBlur && !this.blurIsRunning) {
            this.blurIsRunning = true;
            this.invalidateBlur = true;
        }
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable).onAttachedToWindow(this.backgroundView);
        }
        Drawable drawable2 = this.oldBackgroundDrawable;
        if (drawable2 instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable2).onAttachedToWindow(this.backgroundView);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.attached = false;
        this.blurPaintTop.setShader(null);
        this.blurPaintTop2.setShader(null);
        this.blurPaintBottom.setShader(null);
        this.blurPaintBottom2.setShader(null);
        ValueAnimator valueAnimator = this.blurCrossfade;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        BlurBitmap blurBitmap = this.currentBitmap;
        if (blurBitmap != null) {
            blurBitmap.recycle();
            this.currentBitmap = null;
        }
        for (int i = 0; i < this.unusedBitmaps.size(); i++) {
            if (this.unusedBitmaps.get(i) != null) {
                this.unusedBitmaps.get(i).recycle();
            }
        }
        this.unusedBitmaps.clear();
        this.blurIsRunning = false;
        Drawable drawable = this.backgroundDrawable;
        if (drawable instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable).onDetachedFromWindow(this.backgroundView);
        }
        Drawable drawable2 = this.oldBackgroundDrawable;
        if (drawable2 instanceof ChatBackgroundDrawable) {
            ((ChatBackgroundDrawable) drawable2).onDetachedFromWindow(this.backgroundView);
        }
    }

    public boolean blurWasDrawn() {
        return SharedConfig.chatBlurEnabled() && this.currentBitmap != null;
    }

    public void drawBlurRect(Canvas canvas, float f, Rect rect, Paint paint, boolean z) {
        int alpha = Color.alpha(Theme.getColor(Theme.key_chat_BlurAlpha));
        if (this.currentBitmap == null || !SharedConfig.chatBlurEnabled()) {
            canvas.drawRect(rect, paint);
            return;
        }
        updateBlurShaderPosition(f, z);
        paint.setAlpha(255);
        if (this.blurCrossfadeProgress != 1.0f && this.selectedBlurPaint2.getShader() != null) {
            canvas.drawRect(rect, paint);
            canvas.drawRect(rect, this.selectedBlurPaint2);
            canvas.saveLayerAlpha(rect.left, rect.top, rect.right, rect.bottom, (int) (this.blurCrossfadeProgress * 255.0f), 31);
            canvas.drawRect(rect, paint);
            canvas.drawRect(rect, this.selectedBlurPaint);
            canvas.restore();
        } else {
            canvas.drawRect(rect, paint);
            canvas.drawRect(rect, this.selectedBlurPaint);
        }
        paint.setAlpha(alpha);
        canvas.drawRect(rect, paint);
    }

    public void drawBlurCircle(Canvas canvas, float f, float f2, float f3, float f4, Paint paint, boolean z) {
        int alpha = Color.alpha(Theme.getColor(Theme.key_chat_BlurAlpha));
        if (this.currentBitmap == null || !SharedConfig.chatBlurEnabled()) {
            canvas.drawCircle(f2, f3, f4, paint);
            return;
        }
        updateBlurShaderPosition(f, z);
        paint.setAlpha(255);
        if (this.blurCrossfadeProgress != 1.0f && this.selectedBlurPaint2.getShader() != null) {
            canvas.drawCircle(f2, f3, f4, paint);
            canvas.drawCircle(f2, f3, f4, this.selectedBlurPaint2);
            canvas.saveLayerAlpha(f2 - f4, f3 - f4, f2 + f4, f3 + f4, (int) (this.blurCrossfadeProgress * 255.0f), 31);
            canvas.drawCircle(f2, f3, f4, paint);
            canvas.drawCircle(f2, f3, f4, this.selectedBlurPaint);
            canvas.restore();
        } else {
            canvas.drawCircle(f2, f3, f4, paint);
            canvas.drawCircle(f2, f3, f4, this.selectedBlurPaint);
        }
        paint.setAlpha(alpha);
        canvas.drawCircle(f2, f3, f4, paint);
    }

    private void updateBlurShaderPosition(float f, boolean z) {
        this.selectedBlurPaint = z ? this.blurPaintTop : this.blurPaintBottom;
        this.selectedBlurPaint2 = z ? this.blurPaintTop2 : this.blurPaintBottom2;
        if (z) {
            f += getTranslationY();
        }
        if (this.selectedBlurPaint.getShader() != null) {
            this.matrix.reset();
            this.matrix2.reset();
            if (!z) {
                float f2 = -f;
                BlurBitmap blurBitmap = this.currentBitmap;
                this.matrix.setTranslate(BitmapDescriptorFactory.HUE_RED, (((blurBitmap.bottomOffset + f2) - blurBitmap.pixelFixOffset) - 34.0f) - (blurBitmap.drawnLisetTranslationY - (getBottomOffset() + getListTranslationY())));
                Matrix matrix = this.matrix;
                BlurBitmap blurBitmap2 = this.currentBitmap;
                matrix.preScale(blurBitmap2.bottomScaleX, blurBitmap2.bottomScaleY);
                BlurBitmap blurBitmap3 = this.prevBitmap;
                if (blurBitmap3 != null) {
                    this.matrix2.setTranslate(BitmapDescriptorFactory.HUE_RED, (((f2 + blurBitmap3.bottomOffset) - blurBitmap3.pixelFixOffset) - 34.0f) - (blurBitmap3.drawnLisetTranslationY - (getBottomOffset() + getListTranslationY())));
                    Matrix matrix2 = this.matrix2;
                    BlurBitmap blurBitmap4 = this.prevBitmap;
                    matrix2.preScale(blurBitmap4.bottomScaleX, blurBitmap4.bottomScaleY);
                }
            } else {
                float f3 = -f;
                this.matrix.setTranslate(BitmapDescriptorFactory.HUE_RED, (f3 - this.currentBitmap.pixelFixOffset) - 34.0f);
                Matrix matrix3 = this.matrix;
                BlurBitmap blurBitmap5 = this.currentBitmap;
                matrix3.preScale(blurBitmap5.topScaleX, blurBitmap5.topScaleY);
                BlurBitmap blurBitmap6 = this.prevBitmap;
                if (blurBitmap6 != null) {
                    this.matrix2.setTranslate(BitmapDescriptorFactory.HUE_RED, (f3 - blurBitmap6.pixelFixOffset) - 34.0f);
                    Matrix matrix4 = this.matrix2;
                    BlurBitmap blurBitmap7 = this.prevBitmap;
                    matrix4.preScale(blurBitmap7.topScaleX, blurBitmap7.topScaleY);
                }
            }
            this.selectedBlurPaint.getShader().setLocalMatrix(this.matrix);
            if (this.selectedBlurPaint2.getShader() != null) {
                this.selectedBlurPaint2.getShader().setLocalMatrix(this.matrix);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout$BlurBitmap */
    /* loaded from: classes6.dex */
    public static class BlurBitmap {
        Bitmap bottomBitmap;
        Canvas bottomCanvas;
        float bottomOffset;
        float bottomScaleX;
        float bottomScaleY;
        float drawnLisetTranslationY;
        public boolean needBlurBottom;
        int pixelFixOffset;
        Bitmap topBitmap;
        Canvas topCanvas;
        float topScaleX;
        float topScaleY;

        private BlurBitmap() {
        }

        public void recycle() {
            this.topBitmap.recycle();
            Bitmap bitmap = this.bottomBitmap;
            if (bitmap != null) {
                bitmap.recycle();
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.SizeNotifierFrameLayout$SimplerCanvas */
    /* loaded from: classes6.dex */
    public static class SimplerCanvas extends Canvas {
        @Override // android.graphics.Canvas
        public boolean clipPath(Path path) {
            return false;
        }

        @Override // android.graphics.Canvas
        public boolean clipPath(Path path, Region.Op op) {
            return false;
        }

        @Override // android.graphics.Canvas
        public void drawText(CharSequence charSequence, int i, int i2, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawText(String str, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawText(String str, int i, int i2, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawText(char[] cArr, int i, int i2, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawTextOnPath(String str, Path path, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawTextOnPath(char[] cArr, int i, int i2, Path path, float f, float f2, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawTextRun(MeasuredText measuredText, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawTextRun(CharSequence charSequence, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        }

        @Override // android.graphics.Canvas
        public void drawTextRun(char[] cArr, int i, int i2, int i3, int i4, float f, float f2, boolean z, Paint paint) {
        }

        public SimplerCanvas(Bitmap bitmap) {
            super(bitmap);
        }
    }
}
