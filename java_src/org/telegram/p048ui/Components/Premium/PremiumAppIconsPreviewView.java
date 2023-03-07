package org.telegram.p048ui.Components.Premium;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.p048ui.Cells.AppIconsSelectorCell;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Premium.StarParticlesView;
import org.telegram.p048ui.LauncherIconController;
/* renamed from: org.telegram.ui.Components.Premium.PremiumAppIconsPreviewView */
/* loaded from: classes6.dex */
public class PremiumAppIconsPreviewView extends FrameLayout implements PagerHeaderView {
    private AdaptiveIconImageView bottomLeftIcon;
    private AdaptiveIconImageView bottomRightIcon;
    private List<LauncherIconController.LauncherIcon> icons;
    boolean isEmpty;
    private AdaptiveIconImageView topIcon;

    public PremiumAppIconsPreviewView(Context context) {
        super(context);
        LauncherIconController.LauncherIcon[] values;
        this.icons = new ArrayList();
        for (LauncherIconController.LauncherIcon launcherIcon : LauncherIconController.LauncherIcon.values()) {
            if (launcherIcon.premium) {
                this.icons.add(launcherIcon);
            }
            if (this.icons.size() == 3) {
                break;
            }
        }
        if (this.icons.size() < 3) {
            FileLog.m45e(new IllegalArgumentException("There should be at least 3 premium icons!"));
            this.isEmpty = true;
            return;
        }
        this.topIcon = newIconView(context, 0);
        this.bottomLeftIcon = newIconView(context, 1);
        this.bottomRightIcon = newIconView(context, 2);
        setClipChildren(false);
    }

    private AdaptiveIconImageView newIconView(Context context, int i) {
        LauncherIconController.LauncherIcon launcherIcon = this.icons.get(i);
        AdaptiveIconImageView adaptiveIconImageView = new AdaptiveIconImageView(this, context, i);
        adaptiveIconImageView.setLayoutParams(LayoutHelper.createFrame(-2, -2, 17, 0, 52, 0, 0));
        adaptiveIconImageView.setForeground(launcherIcon.foreground);
        adaptiveIconImageView.setBackgroundResource(launcherIcon.background);
        adaptiveIconImageView.setPadding(AndroidUtilities.m50dp(8));
        adaptiveIconImageView.setBackgroundOuterPadding(AndroidUtilities.m50dp(32));
        addView(adaptiveIconImageView);
        return adaptiveIconImageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.isEmpty) {
            return;
        }
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        int m50dp = AndroidUtilities.m50dp(76);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.topIcon.getLayoutParams();
        layoutParams.height = m50dp;
        layoutParams.width = m50dp;
        float f = m50dp;
        layoutParams.bottomMargin = (int) ((min * 0.1f) + f);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.bottomLeftIcon.getLayoutParams();
        layoutParams2.height = m50dp;
        layoutParams2.width = m50dp;
        int i3 = (int) (f * 0.95f);
        layoutParams2.rightMargin = i3;
        FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.bottomRightIcon.getLayoutParams();
        layoutParams3.height = m50dp;
        layoutParams3.width = m50dp;
        layoutParams3.leftMargin = i3;
    }

    @Override // org.telegram.p048ui.Components.Premium.PagerHeaderView
    public void setOffset(float f) {
        if (this.isEmpty) {
            return;
        }
        float abs = Math.abs(f / getMeasuredWidth());
        float interpolation = CubicBezierInterpolator.EASE_IN.getInterpolation(abs);
        this.bottomRightIcon.setTranslationX(((getRight() - this.bottomRightIcon.getRight()) + (this.bottomRightIcon.getWidth() * 1.5f) + AndroidUtilities.m50dp(32)) * interpolation);
        this.bottomRightIcon.setTranslationY(AndroidUtilities.m50dp(16) * interpolation);
        float clamp = Utilities.clamp(AndroidUtilities.lerp(1.0f, 1.5f, interpolation), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        this.bottomRightIcon.setScaleX(clamp);
        this.bottomRightIcon.setScaleY(clamp);
        this.topIcon.setTranslationY((((getTop() - this.topIcon.getTop()) - (this.topIcon.getHeight() * 1.8f)) - AndroidUtilities.m50dp(32)) * abs);
        this.topIcon.setTranslationX(AndroidUtilities.m50dp(16) * abs);
        float clamp2 = Utilities.clamp(AndroidUtilities.lerp(1.0f, 1.8f, abs), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        this.topIcon.setScaleX(clamp2);
        this.topIcon.setScaleY(clamp2);
        float interpolation2 = CubicBezierInterpolator.EASE_OUT.getInterpolation(abs);
        this.bottomLeftIcon.setTranslationX((((getLeft() - this.bottomLeftIcon.getLeft()) - (this.bottomLeftIcon.getWidth() * 2.5f)) + AndroidUtilities.m50dp(32)) * interpolation2);
        this.bottomLeftIcon.setTranslationY(interpolation2 * ((getBottom() - this.bottomLeftIcon.getBottom()) + (this.bottomLeftIcon.getHeight() * 2.5f) + AndroidUtilities.m50dp(32)));
        float clamp3 = Utilities.clamp(AndroidUtilities.lerp(1.0f, 2.5f, abs), 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        this.bottomLeftIcon.setScaleX(clamp3);
        this.bottomLeftIcon.setScaleY(clamp3);
        float f2 = abs < 0.4f ? abs / 0.4f : 1.0f;
        this.bottomRightIcon.particlesScale = f2;
        this.topIcon.particlesScale = f2;
        this.bottomLeftIcon.particlesScale = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.PremiumAppIconsPreviewView$AdaptiveIconImageView */
    /* loaded from: classes6.dex */
    public class AdaptiveIconImageView extends AppIconsSelectorCell.AdaptiveIconImageView {
        StarParticlesView.Drawable drawable;
        Paint paint;
        float particlesScale;

        public AdaptiveIconImageView(PremiumAppIconsPreviewView premiumAppIconsPreviewView, Context context, int i) {
            super(context);
            this.drawable = new StarParticlesView.Drawable(20);
            this.paint = new Paint(1);
            StarParticlesView.Drawable drawable = this.drawable;
            drawable.size1 = 12;
            drawable.size2 = 8;
            drawable.size3 = 6;
            if (i == 1) {
                drawable.type = 1001;
            }
            if (i == 0) {
                drawable.type = 1002;
            }
            drawable.colorKey = "premiumStartSmallStarsColor2";
            drawable.init();
            this.paint.setColor(-1);
        }

        @Override // org.telegram.p048ui.Cells.AppIconsSelectorCell.AdaptiveIconImageView, android.view.View
        public void draw(Canvas canvas) {
            int m50dp = AndroidUtilities.m50dp(10);
            this.drawable.excludeRect.set(AndroidUtilities.m50dp(5), AndroidUtilities.m50dp(5), getMeasuredWidth() - AndroidUtilities.m50dp(5), getMeasuredHeight() - AndroidUtilities.m50dp(5));
            float f = -m50dp;
            this.drawable.rect.set(f, f, getWidth() + m50dp, getHeight() + m50dp);
            canvas.save();
            float f2 = this.particlesScale;
            canvas.scale(1.0f - f2, 1.0f - f2, getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
            this.drawable.onDraw(canvas);
            canvas.restore();
            invalidate();
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            canvas.drawRoundRect(rectF, AndroidUtilities.m51dp(18.0f), AndroidUtilities.m51dp(18.0f), this.paint);
            super.draw(canvas);
        }
    }
}
