package org.telegram.p044ui.Components;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.C3361ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.AnimatedAvatarContainer */
/* loaded from: classes6.dex */
public class AnimatedAvatarContainer extends FrameLayout {
    private int leftPadding;
    boolean occupyStatusBar;
    AnimatedTextView subtitleTextView;
    AnimatedTextView titleTextView;

    public AnimatedAvatarContainer(Context context) {
        super(context);
        this.occupyStatusBar = true;
        this.leftPadding = AndroidUtilities.m54dp(8);
        AnimatedTextView animatedTextView = new AnimatedTextView(context, true, true, true);
        this.titleTextView = animatedTextView;
        int i = Theme.key_actionBarDefaultTitle;
        animatedTextView.setTextColor(Theme.getColor(i));
        this.titleTextView.setTextSize(AndroidUtilities.m54dp(18));
        this.titleTextView.setGravity(3);
        this.titleTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.titleTextView.setPadding(0, AndroidUtilities.m54dp(6), 0, AndroidUtilities.m54dp(12));
        addView(this.titleTextView);
        AnimatedTextView animatedTextView2 = new AnimatedTextView(context, true, true, true);
        this.subtitleTextView = animatedTextView2;
        animatedTextView2.setTag(Integer.valueOf(Theme.key_actionBarDefaultSubtitle));
        this.subtitleTextView.setTextColor(Theme.getColor(i));
        this.subtitleTextView.setTextSize(AndroidUtilities.m54dp(14));
        this.subtitleTextView.setGravity(3);
        this.subtitleTextView.setPadding(0, 0, AndroidUtilities.m54dp(10), 0);
        addView(this.subtitleTextView);
        this.titleTextView.getDrawable().setAllowCancel(true);
        this.subtitleTextView.getDrawable().setAllowCancel(true);
        AnimatedTextView animatedTextView3 = this.titleTextView;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        animatedTextView3.setAnimationProperties(1.0f, 0L, 150L, cubicBezierInterpolator);
        this.subtitleTextView.setAnimationProperties(1.0f, 0L, 150L, cubicBezierInterpolator);
        setClipChildren(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i) + this.titleTextView.getPaddingRight();
        int m54dp = size - AndroidUtilities.m54dp(16);
        this.titleTextView.measure(View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(32) + this.titleTextView.getPaddingRight(), Integer.MIN_VALUE));
        this.subtitleTextView.measure(View.MeasureSpec.makeMeasureSpec(m54dp, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(20), Integer.MIN_VALUE));
        setMeasuredDimension(size, View.MeasureSpec.getSize(i2));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int currentActionBarHeight = ((C3361ActionBar.getCurrentActionBarHeight() - AndroidUtilities.m54dp(42)) / 2) + ((Build.VERSION.SDK_INT < 21 || !this.occupyStatusBar) ? 0 : AndroidUtilities.statusBarHeight);
        int i5 = this.leftPadding;
        if (this.subtitleTextView.getVisibility() != 8) {
            this.titleTextView.layout(i5, (AndroidUtilities.m55dp(1.0f) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + i5, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m55dp(1.3f)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
        } else {
            this.titleTextView.layout(i5, (AndroidUtilities.m54dp(11) + currentActionBarHeight) - this.titleTextView.getPaddingTop(), this.titleTextView.getMeasuredWidth() + i5, (((this.titleTextView.getTextHeight() + currentActionBarHeight) + AndroidUtilities.m54dp(11)) - this.titleTextView.getPaddingTop()) + this.titleTextView.getPaddingBottom());
        }
        this.subtitleTextView.layout(i5, AndroidUtilities.m54dp(20) + currentActionBarHeight, this.subtitleTextView.getMeasuredWidth() + i5, currentActionBarHeight + this.subtitleTextView.getTextHeight() + AndroidUtilities.m54dp(24));
    }

    public AnimatedTextView getTitle() {
        return this.titleTextView;
    }

    public AnimatedTextView getSubtitleTextView() {
        return this.subtitleTextView;
    }
}
