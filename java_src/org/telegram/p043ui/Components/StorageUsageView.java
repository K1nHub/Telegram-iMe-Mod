package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.TextSettingsCell;
import org.telegram.p043ui.Components.voip.CellFlickerDrawable;
/* renamed from: org.telegram.ui.Components.StorageUsageView */
/* loaded from: classes6.dex */
public class StorageUsageView extends FrameLayout {
    private Paint bgPaint;
    private boolean calculating;
    float calculatingProgress;
    boolean calculatingProgressIncrement;
    TextView calculatingTextView;
    CellFlickerDrawable cellFlickerDrawable;
    View divider;
    EllipsizeSpanAnimator ellipsizeSpanAnimator;
    TextView freeSizeTextView;
    int lastProgressColor;
    public ViewGroup legendLayout;
    private Paint paintCalculcating;
    private Paint paintFill;
    private Paint paintProgress;
    private Paint paintProgress2;
    float progress;
    float progress2;
    ProgressView progressView;
    TextView telegramCacheTextView;
    TextView telegramDatabaseTextView;
    TextSettingsCell textSettingsCell;
    TextView totlaSizeTextView;
    ValueAnimator valueAnimator;
    ValueAnimator valueAnimator2;

    public StorageUsageView(Context context) {
        super(context);
        this.paintFill = new Paint(1);
        this.paintCalculcating = new Paint(1);
        this.paintProgress = new Paint(1);
        this.paintProgress2 = new Paint(1);
        this.bgPaint = new Paint();
        this.cellFlickerDrawable = new CellFlickerDrawable(220, 255);
        setWillNotDraw(false);
        this.cellFlickerDrawable.drawFrame = false;
        this.paintFill.setStrokeWidth(AndroidUtilities.m72dp(6));
        this.paintCalculcating.setStrokeWidth(AndroidUtilities.m72dp(6));
        this.paintProgress.setStrokeWidth(AndroidUtilities.m72dp(6));
        this.paintProgress2.setStrokeWidth(AndroidUtilities.m72dp(6));
        this.paintFill.setStrokeCap(Paint.Cap.ROUND);
        this.paintCalculcating.setStrokeCap(Paint.Cap.ROUND);
        this.paintProgress.setStrokeCap(Paint.Cap.ROUND);
        this.paintProgress2.setStrokeCap(Paint.Cap.ROUND);
        ProgressView progressView = new ProgressView(context);
        this.progressView = progressView;
        addView(progressView, LayoutHelper.createFrame(-1, -2));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        addView(linearLayout, LayoutHelper.createFrame(-1, -2));
        FrameLayout frameLayout = new FrameLayout(this, context) { // from class: org.telegram.ui.Components.StorageUsageView.1
            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), i2);
                int childCount = getChildCount();
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < childCount; i6++) {
                    if (getChildAt(i6).getVisibility() != 8) {
                        if (getChildAt(i6).getMeasuredWidth() + i4 > View.MeasureSpec.getSize(i)) {
                            i5 += getChildAt(i6).getMeasuredHeight() + AndroidUtilities.m72dp(8);
                            i4 = 0;
                        }
                        i4 += getChildAt(i6).getMeasuredWidth() + AndroidUtilities.m72dp(16);
                        i3 = getChildAt(i6).getMeasuredHeight() + i5;
                    }
                }
                setMeasuredDimension(getMeasuredWidth(), i3);
            }

            @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int childCount = getChildCount();
                int i5 = 0;
                int i6 = 0;
                for (int i7 = 0; i7 < childCount; i7++) {
                    if (getChildAt(i7).getVisibility() != 8) {
                        if (getChildAt(i7).getMeasuredWidth() + i5 > getMeasuredWidth()) {
                            i6 += getChildAt(i7).getMeasuredHeight() + AndroidUtilities.m72dp(8);
                            i5 = 0;
                        }
                        getChildAt(i7).layout(i5, i6, getChildAt(i7).getMeasuredWidth() + i5, getChildAt(i7).getMeasuredHeight() + i6);
                        i5 += getChildAt(i7).getMeasuredWidth() + AndroidUtilities.m72dp(16);
                    }
                }
            }
        };
        this.legendLayout = frameLayout;
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2, 21, 40, 21, 16));
        TextView textView = new TextView(context);
        this.calculatingTextView = textView;
        int i = Theme.key_windowBackgroundWhiteGrayText;
        textView.setTextColor(Theme.getColor(i));
        String string = LocaleController.getString("CalculatingSize", C3419R.string.CalculatingSize);
        int indexOf = string.indexOf("...");
        if (indexOf >= 0) {
            SpannableString spannableString = new SpannableString(string);
            EllipsizeSpanAnimator ellipsizeSpanAnimator = new EllipsizeSpanAnimator(this.calculatingTextView);
            this.ellipsizeSpanAnimator = ellipsizeSpanAnimator;
            ellipsizeSpanAnimator.wrap(spannableString, indexOf);
            this.calculatingTextView.setText(spannableString);
        } else {
            this.calculatingTextView.setText(string);
        }
        TextView textView2 = new TextView(context);
        this.telegramCacheTextView = textView2;
        textView2.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.telegramCacheTextView.setTextColor(Theme.getColor(i));
        TextView textView3 = new TextView(context);
        this.telegramDatabaseTextView = textView3;
        textView3.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.telegramDatabaseTextView.setTextColor(Theme.getColor(i));
        TextView textView4 = new TextView(context);
        this.freeSizeTextView = textView4;
        textView4.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.freeSizeTextView.setTextColor(Theme.getColor(i));
        TextView textView5 = new TextView(context);
        this.totlaSizeTextView = textView5;
        textView5.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.totlaSizeTextView.setTextColor(Theme.getColor(i));
        this.lastProgressColor = Theme.getColor(Theme.key_player_progress);
        this.telegramCacheTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
        this.telegramCacheTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.freeSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), ColorUtils.setAlphaComponent(this.lastProgressColor, 64)), (Drawable) null, (Drawable) null, (Drawable) null);
        this.freeSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.totlaSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), ColorUtils.setAlphaComponent(this.lastProgressColor, MessagesStorage.LAST_DB_VERSION)), (Drawable) null, (Drawable) null, (Drawable) null);
        this.totlaSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.telegramDatabaseTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
        this.telegramDatabaseTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        this.legendLayout.addView(this.calculatingTextView, LayoutHelper.createFrame(-2, -2));
        this.legendLayout.addView(this.telegramDatabaseTextView, LayoutHelper.createFrame(-2, -2));
        this.legendLayout.addView(this.telegramCacheTextView, LayoutHelper.createFrame(-2, -2));
        this.legendLayout.addView(this.totlaSizeTextView, LayoutHelper.createFrame(-2, -2));
        this.legendLayout.addView(this.freeSizeTextView, LayoutHelper.createFrame(-2, -2));
        View view = new View(getContext());
        this.divider = view;
        linearLayout.addView(view, LayoutHelper.createLinear(-1, -2, 0, 21, 0, 0, 0));
        this.divider.getLayoutParams().height = 1;
        this.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
        TextSettingsCell textSettingsCell = new TextSettingsCell(getContext());
        this.textSettingsCell = textSettingsCell;
        linearLayout.addView(textSettingsCell, LayoutHelper.createLinear(-1, -2));
    }

    public void setStorageUsage(boolean z, long j, long j2, long j3, long j4) {
        this.calculating = z;
        this.freeSizeTextView.setText(LocaleController.formatString("TotalDeviceFreeSize", C3419R.string.TotalDeviceFreeSize, AndroidUtilities.formatFileSize(j3)));
        long j5 = j4 - j3;
        this.totlaSizeTextView.setText(LocaleController.formatString("TotalDeviceSize", C3419R.string.TotalDeviceSize, AndroidUtilities.formatFileSize(j5)));
        if (z) {
            this.calculatingTextView.setVisibility(0);
            this.telegramCacheTextView.setVisibility(8);
            this.freeSizeTextView.setVisibility(8);
            this.totlaSizeTextView.setVisibility(8);
            this.telegramDatabaseTextView.setVisibility(8);
            this.divider.setVisibility(8);
            this.textSettingsCell.setVisibility(8);
            this.progress = BitmapDescriptorFactory.HUE_RED;
            this.progress2 = BitmapDescriptorFactory.HUE_RED;
            EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator != null) {
                ellipsizeSpanAnimator.addView(this.calculatingTextView);
            }
        } else {
            EllipsizeSpanAnimator ellipsizeSpanAnimator2 = this.ellipsizeSpanAnimator;
            if (ellipsizeSpanAnimator2 != null) {
                ellipsizeSpanAnimator2.removeView(this.calculatingTextView);
            }
            this.calculatingTextView.setVisibility(8);
            if (j2 > 0) {
                this.divider.setVisibility(0);
                this.textSettingsCell.setVisibility(0);
                this.telegramCacheTextView.setVisibility(0);
                this.telegramDatabaseTextView.setVisibility(8);
                this.textSettingsCell.setTextAndValue(LocaleController.getString("ClearTelegramCache", C3419R.string.ClearTelegramCache), AndroidUtilities.formatFileSize(j2), true);
                this.telegramCacheTextView.setText(LocaleController.formatString("TelegramCacheSize", C3419R.string.TelegramCacheSize, AndroidUtilities.formatFileSize(j2 + j)));
            } else {
                this.telegramCacheTextView.setVisibility(8);
                this.telegramDatabaseTextView.setVisibility(0);
                this.telegramDatabaseTextView.setText(LocaleController.formatString("LocalDatabaseSize", C3419R.string.LocalDatabaseSize, AndroidUtilities.formatFileSize(j)));
                this.divider.setVisibility(8);
                this.textSettingsCell.setVisibility(8);
            }
            this.freeSizeTextView.setVisibility(0);
            this.totlaSizeTextView.setVisibility(0);
            float f = (float) j4;
            float f2 = ((float) (j2 + j)) / f;
            float f3 = ((float) j5) / f;
            if (this.progress != f2) {
                ValueAnimator valueAnimator = this.valueAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(this.progress, f2);
                this.valueAnimator = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageUsageView$$ExternalSyntheticLambda1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        StorageUsageView.this.lambda$setStorageUsage$0(valueAnimator2);
                    }
                });
                this.valueAnimator.start();
            }
            if (this.progress2 != f3) {
                ValueAnimator valueAnimator2 = this.valueAnimator2;
                if (valueAnimator2 != null) {
                    valueAnimator2.cancel();
                }
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.progress2, f3);
                this.valueAnimator2 = ofFloat2;
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.StorageUsageView$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        StorageUsageView.this.lambda$setStorageUsage$1(valueAnimator3);
                    }
                });
                this.valueAnimator2.start();
            }
        }
        this.textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStorageUsage$0(ValueAnimator valueAnimator) {
        this.progress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStorageUsage$1(ValueAnimator valueAnimator) {
        this.progress2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.progressView.invalidate();
        int i = this.lastProgressColor;
        int i2 = Theme.key_player_progress;
        if (i != Theme.getColor(i2)) {
            this.lastProgressColor = Theme.getColor(i2);
            this.telegramCacheTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
            this.telegramCacheTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
            this.telegramDatabaseTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), this.lastProgressColor), (Drawable) null, (Drawable) null, (Drawable) null);
            this.telegramDatabaseTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
            this.freeSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), ColorUtils.setAlphaComponent(this.lastProgressColor, 64)), (Drawable) null, (Drawable) null, (Drawable) null);
            this.freeSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
            this.totlaSizeTextView.setCompoundDrawablesWithIntrinsicBounds(Theme.createCircleDrawable(AndroidUtilities.m72dp(10), ColorUtils.setAlphaComponent(this.lastProgressColor, MessagesStorage.LAST_DB_VERSION)), (Drawable) null, (Drawable) null, (Drawable) null);
            this.totlaSizeTextView.setCompoundDrawablePadding(AndroidUtilities.m72dp(6));
        }
        this.textSettingsCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        this.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.StorageUsageView$ProgressView */
    /* loaded from: classes6.dex */
    public class ProgressView extends View {
        public ProgressView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(40), 1073741824));
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int color = Theme.getColor(Theme.key_player_progress);
            StorageUsageView.this.paintFill.setColor(color);
            StorageUsageView.this.paintProgress.setColor(color);
            StorageUsageView.this.paintProgress2.setColor(color);
            StorageUsageView.this.paintProgress.setAlpha(255);
            StorageUsageView.this.paintProgress2.setAlpha(82);
            StorageUsageView.this.paintFill.setAlpha(46);
            StorageUsageView.this.bgPaint.setColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            canvas.drawLine(AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(20), getMeasuredWidth() - AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(20), StorageUsageView.this.paintFill);
            if (StorageUsageView.this.calculating || StorageUsageView.this.calculatingProgress != BitmapDescriptorFactory.HUE_RED) {
                if (StorageUsageView.this.calculating) {
                    StorageUsageView storageUsageView = StorageUsageView.this;
                    if (storageUsageView.calculatingProgressIncrement) {
                        float f = storageUsageView.calculatingProgress + 0.024615385f;
                        storageUsageView.calculatingProgress = f;
                        if (f > 1.0f) {
                            storageUsageView.calculatingProgress = 1.0f;
                            storageUsageView.calculatingProgressIncrement = false;
                        }
                    } else {
                        float f2 = storageUsageView.calculatingProgress - 0.024615385f;
                        storageUsageView.calculatingProgress = f2;
                        if (f2 < BitmapDescriptorFactory.HUE_RED) {
                            storageUsageView.calculatingProgress = BitmapDescriptorFactory.HUE_RED;
                            storageUsageView.calculatingProgressIncrement = true;
                        }
                    }
                } else {
                    StorageUsageView storageUsageView2 = StorageUsageView.this;
                    float f3 = storageUsageView2.calculatingProgress - 0.10666667f;
                    storageUsageView2.calculatingProgress = f3;
                    if (f3 < BitmapDescriptorFactory.HUE_RED) {
                        storageUsageView2.calculatingProgress = BitmapDescriptorFactory.HUE_RED;
                    }
                }
                invalidate();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(17), getMeasuredWidth() - AndroidUtilities.m72dp(24), AndroidUtilities.m72dp(23));
                StorageUsageView.this.cellFlickerDrawable.setParentWidth(getMeasuredWidth());
                StorageUsageView.this.cellFlickerDrawable.draw(canvas, rectF, AndroidUtilities.m72dp(3), null);
            }
            int m72dp = AndroidUtilities.m72dp(24);
            if (!StorageUsageView.this.calculating) {
                int measuredWidth = (int) ((getMeasuredWidth() - (AndroidUtilities.m72dp(24) * 2)) * StorageUsageView.this.progress2);
                int m72dp2 = AndroidUtilities.m72dp(24) + measuredWidth;
                canvas.drawLine(m72dp, AndroidUtilities.m72dp(20), AndroidUtilities.m72dp(24) + measuredWidth, AndroidUtilities.m72dp(20), StorageUsageView.this.paintProgress2);
                canvas.drawRect(m72dp2, AndroidUtilities.m72dp(20) - AndroidUtilities.m72dp(3), m72dp2 + AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(20) + AndroidUtilities.m72dp(3), StorageUsageView.this.bgPaint);
            }
            if (StorageUsageView.this.calculating) {
                return;
            }
            int measuredWidth2 = (int) ((getMeasuredWidth() - (AndroidUtilities.m72dp(24) * 2)) * StorageUsageView.this.progress);
            if (measuredWidth2 < AndroidUtilities.m73dp(1.0f)) {
                measuredWidth2 = AndroidUtilities.m73dp(1.0f);
            }
            int m72dp3 = AndroidUtilities.m72dp(24) + measuredWidth2;
            canvas.drawLine(m72dp, AndroidUtilities.m72dp(20), AndroidUtilities.m72dp(24) + measuredWidth2, AndroidUtilities.m72dp(20), StorageUsageView.this.paintProgress);
            canvas.drawRect(m72dp3, AndroidUtilities.m72dp(20) - AndroidUtilities.m72dp(3), m72dp3 + AndroidUtilities.m72dp(3), AndroidUtilities.m72dp(20) + AndroidUtilities.m72dp(3), StorageUsageView.this.bgPaint);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
        if (ellipsizeSpanAnimator != null) {
            ellipsizeSpanAnimator.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        EllipsizeSpanAnimator ellipsizeSpanAnimator = this.ellipsizeSpanAnimator;
        if (ellipsizeSpanAnimator != null) {
            ellipsizeSpanAnimator.onDetachedFromWindow();
        }
    }
}
