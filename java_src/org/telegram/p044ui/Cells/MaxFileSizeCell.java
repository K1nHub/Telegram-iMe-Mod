package org.telegram.p044ui.Cells;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.SeekBarView;
/* renamed from: org.telegram.ui.Cells.MaxFileSizeCell */
/* loaded from: classes5.dex */
public class MaxFileSizeCell extends FrameLayout {
    private long currentSize;
    private SeekBarView seekBarView;
    private TextView sizeTextView;
    private TextView textView;

    protected void didChangedSizeValue(int i) {
    }

    public MaxFileSizeCell(Context context) {
        super(context);
        setWillNotDraw(false);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 48);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        this.textView.setImportantForAccessibility(2);
        addView(this.textView, LayoutHelper.createFrame(-1, -1, (LocaleController.isRTL ? 5 : 3) | 48, 21, 13, 21, 0));
        TextView textView2 = new TextView(context);
        this.sizeTextView = textView2;
        textView2.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2));
        this.sizeTextView.setTextSize(1, 16.0f);
        this.sizeTextView.setLines(1);
        this.sizeTextView.setMaxLines(1);
        this.sizeTextView.setSingleLine(true);
        this.sizeTextView.setGravity((LocaleController.isRTL ? 3 : 5) | 48);
        this.sizeTextView.setImportantForAccessibility(2);
        addView(this.sizeTextView, LayoutHelper.createFrame(-2, -1, (LocaleController.isRTL ? 3 : 5) | 48, 21, 13, 21, 0));
        SeekBarView seekBarView = new SeekBarView(this, context) { // from class: org.telegram.ui.Cells.MaxFileSizeCell.1
            @Override // org.telegram.p044ui.Components.SeekBarView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.seekBarView = seekBarView;
        seekBarView.setReportChanges(true);
        this.seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Cells.MaxFileSizeCell.2
            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public /* synthetic */ int getStepsCount() {
                return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarPressed(boolean z) {
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z, float f) {
                int i;
                float f2;
                float f3;
                if (f <= 0.25f) {
                    f2 = 512000;
                    f3 = 536576.0f;
                } else {
                    f -= 0.25f;
                    if (f < 0.25f) {
                        f2 = (float) ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
                        f3 = 9437184.0f;
                    } else {
                        f -= 0.25f;
                        if (f > 0.25f) {
                            i = (int) (104857600 + (((float) (FileLoader.DEFAULT_MAX_FILE_SIZE - 104857600)) * ((f - 0.25f) / 0.25f)));
                            long j = i;
                            MaxFileSizeCell.this.sizeTextView.setText(LocaleController.formatString("AutodownloadSizeLimitUpTo", C3290R.string.AutodownloadSizeLimitUpTo, AndroidUtilities.formatFileSize(j)));
                            MaxFileSizeCell.this.currentSize = j;
                            MaxFileSizeCell.this.didChangedSizeValue(i);
                        }
                        f2 = 10485760;
                        f3 = 9.437184E7f;
                    }
                }
                i = (int) (f2 + ((f / 0.25f) * f3));
                long j2 = i;
                MaxFileSizeCell.this.sizeTextView.setText(LocaleController.formatString("AutodownloadSizeLimitUpTo", C3290R.string.AutodownloadSizeLimitUpTo, AndroidUtilities.formatFileSize(j2)));
                MaxFileSizeCell.this.currentSize = j2;
                MaxFileSizeCell.this.didChangedSizeValue(i);
            }

            @Override // org.telegram.p044ui.Components.SeekBarView.SeekBarViewDelegate
            public CharSequence getContentDescription() {
                return ((Object) MaxFileSizeCell.this.textView.getText()) + " " + ((Object) MaxFileSizeCell.this.sizeTextView.getText());
            }
        });
        this.seekBarView.setImportantForAccessibility(2);
        addView(this.seekBarView, LayoutHelper.createFrame(-1, 38, 51, 6, 36, 6, 0));
        setImportantForAccessibility(1);
        setAccessibilityDelegate(this.seekBarView.getSeekBarAccessibilityDelegate());
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public long getSize() {
        return this.currentSize;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(80), 1073741824));
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m54dp(80));
        int measuredWidth = getMeasuredWidth() - AndroidUtilities.m54dp(42);
        this.sizeTextView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(30), 1073741824));
        this.textView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(AndroidUtilities.m54dp(10), (measuredWidth - this.sizeTextView.getMeasuredWidth()) - AndroidUtilities.m54dp(8)), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(30), 1073741824));
        this.seekBarView.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - AndroidUtilities.m54dp(20), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(30), 1073741824));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setSize(long j) {
        float max;
        float f;
        this.currentSize = j;
        this.sizeTextView.setText(LocaleController.formatString("AutodownloadSizeLimitUpTo", C3290R.string.AutodownloadSizeLimitUpTo, AndroidUtilities.formatFileSize(j)));
        long j2 = j - 512000;
        if (j2 < 536576) {
            f = Math.max((float) BitmapDescriptorFactory.HUE_RED, ((float) j2) / 536576.0f) * 0.25f;
        } else {
            long j3 = j2 - 536576;
            if (j3 < 9437184) {
                f = (Math.max((float) BitmapDescriptorFactory.HUE_RED, ((float) j3) / 9437184.0f) * 0.25f) + 0.25f;
            } else {
                float f2 = 0.5f;
                long j4 = j3 - 9437184;
                if (j4 < 94371840) {
                    max = Math.max((float) BitmapDescriptorFactory.HUE_RED, ((float) j4) / 9.437184E7f);
                } else {
                    f2 = 0.75f;
                    max = Math.max((float) BitmapDescriptorFactory.HUE_RED, ((float) (j4 - 94371840)) / 1.9922944E9f);
                }
                f = (max * 0.25f) + f2;
            }
        }
        this.seekBarView.setProgress(Math.min(1.0f, f));
    }

    public void setEnabled(boolean z, ArrayList<Animator> arrayList) {
        super.setEnabled(z);
        if (arrayList != null) {
            TextView textView = this.textView;
            float[] fArr = new float[1];
            fArr[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(textView, "alpha", fArr));
            SeekBarView seekBarView = this.seekBarView;
            float[] fArr2 = new float[1];
            fArr2[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(seekBarView, "alpha", fArr2));
            TextView textView2 = this.sizeTextView;
            float[] fArr3 = new float[1];
            fArr3[0] = z ? 1.0f : 0.5f;
            arrayList.add(ObjectAnimator.ofFloat(textView2, "alpha", fArr3));
            return;
        }
        this.textView.setAlpha(z ? 1.0f : 0.5f);
        this.seekBarView.setAlpha(z ? 1.0f : 0.5f);
        this.sizeTextView.setAlpha(z ? 1.0f : 0.5f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m54dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m54dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
    }
}
