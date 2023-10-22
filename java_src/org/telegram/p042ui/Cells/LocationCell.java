package org.telegram.p042ui.Cells;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.AnimatedTextView;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.CombinedDrawable;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.FlickerLoadingView;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
/* renamed from: org.telegram.ui.Cells.LocationCell */
/* loaded from: classes5.dex */
public class LocationCell extends FrameLayout {
    private static FlickerLoadingView globalGradientView;
    private AnimatedTextView addressTextView;
    private boolean allowTextAnimation;
    private ShapeDrawable circleDrawable;
    private float enterAlpha;
    private ValueAnimator enterAnimator;
    private BackupImageView imageView;
    private CharSequence lastCompleteTitle;
    private String lastEmoji;
    private String lastTitle;
    private AnimatedTextView nameTextView;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private boolean wrapContent;

    public LocationCell(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.enterAlpha = BitmapDescriptorFactory.HUE_RED;
        this.resourcesProvider = resourcesProvider;
        this.wrapContent = z;
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        ShapeDrawable createCircleDrawable = Theme.createCircleDrawable(AndroidUtilities.m102dp(42), -1);
        this.circleDrawable = createCircleDrawable;
        backupImageView.setBackground(createCircleDrawable);
        this.imageView.setSize(AndroidUtilities.m102dp(30), AndroidUtilities.m102dp(30));
        BackupImageView backupImageView2 = this.imageView;
        boolean z2 = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(42, 42, (z2 ? 5 : 3) | 48, z2 ? 0 : 15, 11, z2 ? 15 : 0, 0));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.nameTextView = animatedTextView;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        animatedTextView.setAnimationProperties(0.4f, 0L, 240L, cubicBezierInterpolator);
        this.nameTextView.setTextSize(AndroidUtilities.m102dp(16));
        this.nameTextView.setEllipsizeByGradient(true);
        this.nameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.nameTextView.getDrawable().setOverrideFullWidth(AndroidUtilities.displaySize.x);
        NotificationCenter.listenEmojiLoading(this.nameTextView);
        AnimatedTextView animatedTextView2 = this.nameTextView;
        boolean z3 = LocaleController.isRTL;
        addView(animatedTextView2, LayoutHelper.createFrame(-1, 22, (z3 ? 5 : 3) | 48, z3 ? 16 : 73, 10, z3 ? 73 : 16, 0));
        AnimatedTextView animatedTextView3 = new AnimatedTextView(context, true, true, true);
        this.addressTextView = animatedTextView3;
        animatedTextView3.setAnimationProperties(0.4f, 0L, 240L, cubicBezierInterpolator);
        this.addressTextView.setTextSize(AndroidUtilities.m102dp(14));
        this.addressTextView.setEllipsizeByGradient(true);
        this.addressTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        this.addressTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        AnimatedTextView animatedTextView4 = this.addressTextView;
        boolean z4 = LocaleController.isRTL;
        addView(animatedTextView4, LayoutHelper.createFrame(-1, 20, (z4 ? 5 : 3) | 48, z4 ? 16 : 73, 35, z4 ? 73 : 16, 0));
        this.imageView.setAlpha(this.enterAlpha);
        this.nameTextView.setAlpha(this.enterAlpha);
        this.addressTextView.setAlpha(this.enterAlpha);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.wrapContent) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(64) + (this.needDivider ? 1 : 0), 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(64) + (this.needDivider ? 1 : 0), 1073741824));
        }
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public void setLocation(TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue, int i, boolean z) {
        setLocation(tLRPC$TL_messageMediaVenue, null, i, z, false);
    }

    public void setAllowTextAnimation(boolean z) {
        this.allowTextAnimation = z;
    }

    public static int getColorForIndex(int i) {
        int i2 = i % 7;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return i2 != 5 ? -1285237 : -12338729;
                        }
                        return -7900675;
                    }
                    return -13187226;
                }
                return -12214795;
            }
            return -868277;
        }
        return -1351584;
    }

    private CharSequence getTitle(TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue) {
        if (tLRPC$TL_messageMediaVenue == null) {
            return "";
        }
        if (TextUtils.equals(this.lastEmoji, tLRPC$TL_messageMediaVenue.emoji) && TextUtils.equals(this.lastTitle, tLRPC$TL_messageMediaVenue.title)) {
            return this.lastCompleteTitle;
        }
        CharSequence charSequence = tLRPC$TL_messageMediaVenue.title;
        if (!TextUtils.isEmpty(tLRPC$TL_messageMediaVenue.emoji)) {
            charSequence = Emoji.replaceEmoji(tLRPC$TL_messageMediaVenue.emoji + " " + ((Object) charSequence), this.nameTextView.getPaint().getFontMetricsInt(), false);
        }
        this.lastEmoji = tLRPC$TL_messageMediaVenue.emoji;
        this.lastTitle = tLRPC$TL_messageMediaVenue.title;
        this.lastCompleteTitle = charSequence;
        return charSequence;
    }

    public void setLocation(TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue, String str, int i, boolean z, boolean z2) {
        String str2;
        this.needDivider = z;
        if (tLRPC$TL_messageMediaVenue != null) {
            this.nameTextView.setText(getTitle(tLRPC$TL_messageMediaVenue), this.allowTextAnimation && !LocaleController.isRTL && z2);
        }
        if (str != null) {
            this.addressTextView.setText(str, this.allowTextAnimation && !LocaleController.isRTL);
        } else if (tLRPC$TL_messageMediaVenue != null) {
            this.addressTextView.setText(tLRPC$TL_messageMediaVenue.address, this.allowTextAnimation && !LocaleController.isRTL && z2);
        }
        int colorForIndex = getColorForIndex(i);
        if (tLRPC$TL_messageMediaVenue != null && (str2 = tLRPC$TL_messageMediaVenue.icon) != null) {
            if ("pin".equals(str2) || tLRPC$TL_messageMediaVenue.icon.startsWith("emoji")) {
                Drawable mutate = getResources().getDrawable(C3630R.C3632drawable.pin).mutate();
                mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_location_sendLocationIcon), PorterDuff.Mode.MULTIPLY));
                CombinedDrawable combinedDrawable = new CombinedDrawable(Theme.createCircleDrawable(AndroidUtilities.m102dp(42), 0), mutate);
                combinedDrawable.setCustomSize(AndroidUtilities.m102dp(42), AndroidUtilities.m102dp(42));
                combinedDrawable.setIconSize(AndroidUtilities.m102dp(24), AndroidUtilities.m102dp(24));
                this.imageView.setImageDrawable(combinedDrawable);
            } else {
                this.imageView.setImage(tLRPC$TL_messageMediaVenue.icon, null, null);
            }
        }
        this.circleDrawable.getPaint().setColor(colorForIndex);
        setWillNotDraw(false);
        setClickable(tLRPC$TL_messageMediaVenue == null);
        ValueAnimator valueAnimator = this.enterAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        boolean z3 = tLRPC$TL_messageMediaVenue == null;
        final float f = this.enterAlpha;
        final float f2 = z3 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
        final long abs = Math.abs(f - f2) * 150.0f;
        this.enterAnimator = ValueAnimator.ofFloat(f, f2);
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        this.enterAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Cells.LocationCell$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LocationCell.this.lambda$setLocation$0(elapsedRealtime, abs, f, f2, valueAnimator2);
            }
        });
        ValueAnimator valueAnimator2 = this.enterAnimator;
        if (z3) {
            abs = Long.MAX_VALUE;
        }
        valueAnimator2.setDuration(abs);
        this.enterAnimator.start();
        this.imageView.setAlpha(f);
        this.nameTextView.setAlpha(f);
        this.addressTextView.setAlpha(f);
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLocation$0(long j, long j2, float f, float f2, ValueAnimator valueAnimator) {
        float lerp = AndroidUtilities.lerp(f, f2, j2 > 0 ? Math.min(Math.max(((float) (SystemClock.elapsedRealtime() - j)) / ((float) j2), (float) BitmapDescriptorFactory.HUE_RED), 1.0f) : 1.0f);
        this.enterAlpha = lerp;
        this.imageView.setAlpha(lerp);
        this.nameTextView.setAlpha(this.enterAlpha);
        this.addressTextView.setAlpha(this.enterAlpha);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (globalGradientView == null) {
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext(), this.resourcesProvider);
            globalGradientView = flickerLoadingView;
            flickerLoadingView.setIsSingleCell(true);
        }
        globalGradientView.setParentSize(getMeasuredWidth(), getMeasuredHeight(), (-(getParent() instanceof ViewGroup ? ((ViewGroup) getParent()).indexOfChild(this) : 0)) * AndroidUtilities.m102dp(56));
        globalGradientView.setViewType(4);
        globalGradientView.updateColors();
        globalGradientView.updateGradient();
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) ((1.0f - this.enterAlpha) * 255.0f), 31);
        canvas.translate(AndroidUtilities.m102dp(2), (getMeasuredHeight() - AndroidUtilities.m102dp(56)) / 2);
        globalGradientView.draw(canvas);
        canvas.restore();
        super.onDraw(canvas);
        if (this.needDivider) {
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            Paint paint = resourcesProvider == null ? null : resourcesProvider.getPaint("paintDivider");
            if (paint == null) {
                paint = Theme.dividerPaint;
            }
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m102dp(72), getHeight() - 1, LocaleController.isRTL ? getWidth() - AndroidUtilities.m102dp(72) : getWidth(), getHeight() - 1, paint);
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
