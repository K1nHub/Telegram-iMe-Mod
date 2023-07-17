package org.telegram.p043ui.Cells;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.ShapeDrawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC$TL_messageMediaVenue;
/* renamed from: org.telegram.ui.Cells.LocationCell */
/* loaded from: classes5.dex */
public class LocationCell extends FrameLayout {
    private static FlickerLoadingView globalGradientView;
    private TextView addressTextView;
    private ShapeDrawable circleDrawable;
    private float enterAlpha;
    private ValueAnimator enterAnimator;
    private BackupImageView imageView;
    private TextView nameTextView;
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
        ShapeDrawable createCircleDrawable = Theme.createCircleDrawable(AndroidUtilities.m54dp(42), -1);
        this.circleDrawable = createCircleDrawable;
        backupImageView.setBackground(createCircleDrawable);
        this.imageView.setSize(AndroidUtilities.m54dp(30), AndroidUtilities.m54dp(30));
        BackupImageView backupImageView2 = this.imageView;
        boolean z2 = LocaleController.isRTL;
        addView(backupImageView2, LayoutHelper.createFrame(42, 42, (z2 ? 5 : 3) | 48, z2 ? 0 : 15, 11, z2 ? 15 : 0, 0));
        TextView textView = new TextView(context);
        this.nameTextView = textView;
        textView.setTextSize(1, 16.0f);
        this.nameTextView.setMaxLines(1);
        this.nameTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.nameTextView.setSingleLine(true);
        this.nameTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        this.nameTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.nameTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        TextView textView2 = this.nameTextView;
        boolean z3 = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -2, (z3 ? 5 : 3) | 48, z3 ? 16 : 73, 10, z3 ? 73 : 16, 0));
        TextView textView3 = new TextView(context);
        this.addressTextView = textView3;
        textView3.setTextSize(1, 14.0f);
        this.addressTextView.setMaxLines(1);
        this.addressTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.addressTextView.setSingleLine(true);
        this.addressTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText3));
        this.addressTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        TextView textView4 = this.addressTextView;
        boolean z4 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, (z4 ? 5 : 3) | 48, z4 ? 16 : 73, 35, z4 ? 73 : 16, 0));
        this.imageView.setAlpha(this.enterAlpha);
        this.nameTextView.setAlpha(this.enterAlpha);
        this.addressTextView.setAlpha(this.enterAlpha);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.wrapContent) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(64) + (this.needDivider ? 1 : 0), 1073741824));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(64) + (this.needDivider ? 1 : 0), 1073741824));
        }
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    public void setLocation(TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue, String str, int i, boolean z) {
        setLocation(tLRPC$TL_messageMediaVenue, str, null, i, z);
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

    public void setLocation(TLRPC$TL_messageMediaVenue tLRPC$TL_messageMediaVenue, String str, String str2, int i, boolean z) {
        this.needDivider = z;
        this.circleDrawable.getPaint().setColor(getColorForIndex(i));
        if (tLRPC$TL_messageMediaVenue != null) {
            this.nameTextView.setText(tLRPC$TL_messageMediaVenue.title);
        }
        if (str2 != null) {
            this.addressTextView.setText(str2);
        } else if (tLRPC$TL_messageMediaVenue != null) {
            this.addressTextView.setText(tLRPC$TL_messageMediaVenue.address);
        }
        if (str != null) {
            this.imageView.setImage(str, null, null);
        }
        setWillNotDraw(false);
        setClickable(tLRPC$TL_messageMediaVenue == null);
        ValueAnimator valueAnimator = this.enterAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        boolean z2 = tLRPC$TL_messageMediaVenue == null;
        final float f = this.enterAlpha;
        final float f2 = z2 ? BitmapDescriptorFactory.HUE_RED : 1.0f;
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
        if (z2) {
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
            FlickerLoadingView flickerLoadingView = new FlickerLoadingView(getContext());
            globalGradientView = flickerLoadingView;
            flickerLoadingView.setIsSingleCell(true);
        }
        globalGradientView.setParentSize(getMeasuredWidth(), getMeasuredHeight(), (-(getParent() instanceof ViewGroup ? ((ViewGroup) getParent()).indexOfChild(this) : 0)) * AndroidUtilities.m54dp(56));
        globalGradientView.setViewType(4);
        globalGradientView.updateColors();
        globalGradientView.updateGradient();
        canvas.saveLayerAlpha(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight(), (int) ((1.0f - this.enterAlpha) * 255.0f), 31);
        canvas.translate(AndroidUtilities.m54dp(2), (getMeasuredHeight() - AndroidUtilities.m54dp(56)) / 2);
        globalGradientView.draw(canvas);
        canvas.restore();
        super.onDraw(canvas);
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m54dp(72), getHeight() - 1, LocaleController.isRTL ? getWidth() - AndroidUtilities.m54dp(72) : getWidth(), getHeight() - 1, Theme.dividerPaint);
        }
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }
}
