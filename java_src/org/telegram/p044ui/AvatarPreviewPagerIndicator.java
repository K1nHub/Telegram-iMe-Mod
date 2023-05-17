package org.telegram.p044ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextPaint;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.ProfileGalleryView;
/* renamed from: org.telegram.ui.AvatarPreviewPagerIndicator */
/* loaded from: classes5.dex */
public class AvatarPreviewPagerIndicator extends View implements ProfileGalleryView.Callback {
    private float alpha;
    private float[] alphas;
    private final ValueAnimator animator;
    private final float[] animatorValues;
    private final Paint backgroundPaint;
    private final Paint barPaint;
    private final GradientDrawable bottomOverlayGradient;
    private final Rect bottomOverlayRect;
    private int currentLoadingAnimationDirection;
    private float currentLoadingAnimationProgress;
    private float currentProgress;
    private final RectF indicatorRect;
    private boolean isOverlaysVisible;
    int lastCurrentItem;
    private long lastTime;
    private int overlayCountVisible;
    Path path;
    private final float[] pressedOverlayAlpha;
    private final GradientDrawable[] pressedOverlayGradient;
    private final boolean[] pressedOverlayVisible;
    private int previousSelectedPotision;
    private float previousSelectedProgress;
    protected ProfileGalleryView profileGalleryView;
    private float progressToCounter;
    private final RectF rect;
    RectF rectF;
    private final Paint selectedBarPaint;
    private int selectedPosition;
    TextPaint textPaint;
    String title;
    private final GradientDrawable topOverlayGradient;
    private final Rect topOverlayRect;

    @Override // org.telegram.p044ui.Components.ProfileGalleryView.Callback
    public void onPhotosLoaded() {
    }

    public AvatarPreviewPagerIndicator(Context context) {
        super(context);
        this.indicatorRect = new RectF();
        this.overlayCountVisible = 1;
        this.topOverlayRect = new Rect();
        this.bottomOverlayRect = new Rect();
        this.rect = new RectF();
        this.animatorValues = new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f};
        this.path = new Path();
        this.rectF = new RectF();
        this.pressedOverlayGradient = new GradientDrawable[2];
        this.pressedOverlayVisible = new boolean[2];
        this.pressedOverlayAlpha = new float[2];
        this.alpha = BitmapDescriptorFactory.HUE_RED;
        this.alphas = null;
        this.previousSelectedPotision = -1;
        this.currentLoadingAnimationDirection = 1;
        this.lastCurrentItem = -1;
        Paint paint = new Paint(1);
        this.barPaint = paint;
        paint.setColor(1442840575);
        Paint paint2 = new Paint(1);
        this.selectedBarPaint = paint2;
        paint2.setColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{1107296256, 0});
        this.topOverlayGradient = gradientDrawable;
        gradientDrawable.setShape(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{1107296256, 0});
        this.bottomOverlayGradient = gradientDrawable2;
        gradientDrawable2.setShape(0);
        int i = 0;
        while (i < 2) {
            this.pressedOverlayGradient[i] = new GradientDrawable(i == 0 ? GradientDrawable.Orientation.LEFT_RIGHT : GradientDrawable.Orientation.RIGHT_LEFT, new int[]{838860800, 0});
            this.pressedOverlayGradient[i].setShape(0);
            i++;
        }
        Paint paint3 = new Paint(1);
        this.backgroundPaint = paint3;
        paint3.setColor(-16777216);
        paint3.setAlpha(66);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.animator = ofFloat;
        ofFloat.setDuration(250L);
        ofFloat.setInterpolator(CubicBezierInterpolator.EASE_BOTH);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.AvatarPreviewPagerIndicator$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AvatarPreviewPagerIndicator.this.lambda$new$0(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.AvatarPreviewPagerIndicator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AvatarPreviewPagerIndicator.this.isOverlaysVisible) {
                    return;
                }
                AvatarPreviewPagerIndicator.this.setVisibility(8);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                AvatarPreviewPagerIndicator.this.setVisibility(0);
            }
        });
        TextPaint textPaint = new TextPaint(1);
        this.textPaint = textPaint;
        textPaint.setColor(-1);
        this.textPaint.setTypeface(Typeface.SANS_SERIF);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setTextSize(AndroidUtilities.dpf2(15.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        setAlphaValue(AndroidUtilities.lerp(this.animatorValues, valueAnimator.getAnimatedFraction()), true);
    }

    public void saveCurrentPageProgress() {
        this.previousSelectedProgress = this.currentProgress;
        this.previousSelectedPotision = this.selectedPosition;
        this.currentLoadingAnimationProgress = BitmapDescriptorFactory.HUE_RED;
        this.currentLoadingAnimationDirection = 1;
    }

    public void setAlphaValue(float f, boolean z) {
        if (Build.VERSION.SDK_INT > 18) {
            int i = (int) (255.0f * f);
            this.topOverlayGradient.setAlpha(i);
            this.bottomOverlayGradient.setAlpha(i);
            this.backgroundPaint.setAlpha((int) (66.0f * f));
            this.barPaint.setAlpha((int) (85.0f * f));
            this.selectedBarPaint.setAlpha(i);
            this.alpha = f;
        } else {
            setAlpha(f);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.path.reset();
        this.rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredHeight(), getMeasuredWidth());
        this.path.addRoundRect(this.rectF, new float[]{AndroidUtilities.m54dp(13), AndroidUtilities.m54dp(13), AndroidUtilities.m54dp(13), AndroidUtilities.m54dp(13), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED}, Path.Direction.CCW);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int currentActionBarHeight = C3356ActionBar.getCurrentActionBarHeight() + 0;
        this.topOverlayRect.set(0, 0, i, (int) (currentActionBarHeight * 0.5f));
        this.bottomOverlayRect.set(0, (int) (i2 - (AndroidUtilities.m55dp(72.0f) * 0.5f)), i, i2);
        this.topOverlayGradient.setBounds(0, this.topOverlayRect.bottom, i, currentActionBarHeight + AndroidUtilities.m55dp(16.0f));
        this.bottomOverlayGradient.setBounds(0, (i2 - AndroidUtilities.m55dp(72.0f)) - AndroidUtilities.m55dp(24.0f), i, this.bottomOverlayRect.top);
        int i5 = i / 5;
        this.pressedOverlayGradient[0].setBounds(0, 0, i5, i2);
        this.pressedOverlayGradient[1].setBounds(i - i5, 0, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0203  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDraw(android.graphics.Canvas r23) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.AvatarPreviewPagerIndicator.onDraw(android.graphics.Canvas):void");
    }

    private String getCurrentTitle() {
        if (this.lastCurrentItem != this.profileGalleryView.getCurrentItem()) {
            this.title = this.profileGalleryView.getAdapter().getPageTitle(this.profileGalleryView.getCurrentItem()).toString();
            this.lastCurrentItem = this.profileGalleryView.getCurrentItem();
        }
        return this.title;
    }

    @Override // org.telegram.p044ui.Components.ProfileGalleryView.Callback
    public void onDown(boolean z) {
        this.pressedOverlayVisible[!z ? 1 : 0] = true;
        postInvalidateOnAnimation();
    }

    @Override // org.telegram.p044ui.Components.ProfileGalleryView.Callback
    public void onRelease() {
        Arrays.fill(this.pressedOverlayVisible, false);
        postInvalidateOnAnimation();
    }

    @Override // org.telegram.p044ui.Components.ProfileGalleryView.Callback
    public void onVideoSet() {
        invalidate();
    }

    public void setProfileGalleryView(ProfileGalleryView profileGalleryView) {
        this.profileGalleryView = profileGalleryView;
    }

    public ProfileGalleryView getProfileGalleryView() {
        return this.profileGalleryView;
    }
}
