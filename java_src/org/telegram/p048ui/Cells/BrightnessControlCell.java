package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.SeekBarView;
/* renamed from: org.telegram.ui.Cells.BrightnessControlCell */
/* loaded from: classes5.dex */
public class BrightnessControlCell extends FrameLayout {
    private ImageView leftImageView;
    private ImageView rightImageView;
    private SeekBarView seekBarView;

    protected void didChangedValue(float f) {
    }

    public BrightnessControlCell(Context context) {
        super(context);
        ImageView imageView = new ImageView(context);
        this.leftImageView = imageView;
        imageView.setImageResource(C3158R.C3160drawable.msg_brightness_low);
        addView(this.leftImageView, LayoutHelper.createFrame(24, 24, 51, 17, 12, 0, 0));
        SeekBarView seekBarView = new SeekBarView(this, context, true, null) { // from class: org.telegram.ui.Cells.BrightnessControlCell.1
            @Override // org.telegram.p048ui.Components.SeekBarView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                return super.onTouchEvent(motionEvent);
            }
        };
        this.seekBarView = seekBarView;
        seekBarView.setReportChanges(true);
        this.seekBarView.setDelegate(new SeekBarView.SeekBarViewDelegate() { // from class: org.telegram.ui.Cells.BrightnessControlCell.2
            @Override // org.telegram.p048ui.Components.SeekBarView.SeekBarViewDelegate
            public CharSequence getContentDescription() {
                return " ";
            }

            @Override // org.telegram.p048ui.Components.SeekBarView.SeekBarViewDelegate
            public /* synthetic */ int getStepsCount() {
                return SeekBarView.SeekBarViewDelegate.CC.$default$getStepsCount(this);
            }

            @Override // org.telegram.p048ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarPressed(boolean z) {
            }

            @Override // org.telegram.p048ui.Components.SeekBarView.SeekBarViewDelegate
            public void onSeekBarDrag(boolean z, float f) {
                BrightnessControlCell.this.didChangedValue(f);
            }
        });
        this.seekBarView.setImportantForAccessibility(2);
        addView(this.seekBarView, LayoutHelper.createFrame(-1, 38, 51, 54, 5, 54, 0));
        ImageView imageView2 = new ImageView(context);
        this.rightImageView = imageView2;
        imageView2.setImageResource(C3158R.C3160drawable.msg_brightness_high);
        addView(this.rightImageView, LayoutHelper.createFrame(24, 24, 53, 0, 12, 17, 0));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.leftImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.MULTIPLY));
        this.rightImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteGrayIcon"), PorterDuff.Mode.MULTIPLY));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
    }

    public void setProgress(float f) {
        this.seekBarView.setProgress(f);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.seekBarView.getSeekBarAccessibilityDelegate().onInitializeAccessibilityNodeInfoInternal(this, accessibilityNodeInfo);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return super.performAccessibilityAction(i, bundle) || this.seekBarView.getSeekBarAccessibilityDelegate().performAccessibilityActionInternal(this, i, bundle);
    }
}
