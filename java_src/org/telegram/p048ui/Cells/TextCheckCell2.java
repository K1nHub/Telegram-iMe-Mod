package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Components.CubicBezierInterpolator;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.Switch;
/* renamed from: org.telegram.ui.Cells.TextCheckCell2 */
/* loaded from: classes5.dex */
public class TextCheckCell2 extends FrameLayout {
    private AnimatedTextView animatedTextView;
    private Switch checkBox;
    private View checkBoxClickArea;
    private LinearLayout collapseViewContainer;
    private View collapsedArrow;
    private boolean isMultiline;
    private boolean needDivider;
    private TextView textView;
    private TextView valueTextView;

    public void setCollapseArrow(String str, boolean z, final Runnable runnable) {
        if (this.collapseViewContainer == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.collapseViewContainer = linearLayout;
            linearLayout.setOrientation(0);
            AnimatedTextView animatedTextView = new AnimatedTextView(getContext(), false, true, true);
            this.animatedTextView = animatedTextView;
            animatedTextView.setTextSize(AndroidUtilities.m50dp(14));
            this.animatedTextView.getDrawable().setAllowCancel(true);
            this.animatedTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.animatedTextView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.collapseViewContainer.addView(this.animatedTextView, LayoutHelper.createFrame(-2, 20));
            this.collapsedArrow = new View(getContext());
            Drawable mutate = getContext().getResources().getDrawable(C3316R.C3318drawable.arrow_more).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor("windowBackgroundWhiteBlackText"), PorterDuff.Mode.MULTIPLY));
            this.collapsedArrow.setBackground(mutate);
            this.collapseViewContainer.addView(this.collapsedArrow, LayoutHelper.createLinear(16, 16, 16));
            this.collapseViewContainer.setClipChildren(false);
            setClipChildren(false);
            addView(this.collapseViewContainer, LayoutHelper.createFrame(-2, -2, 16));
            View view = new View(this, getContext()) { // from class: org.telegram.ui.Cells.TextCheckCell2.1
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    canvas.drawLine(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(14), 2.0f, getMeasuredHeight() - AndroidUtilities.m50dp(14), Theme.dividerPaint);
                }
            };
            this.checkBoxClickArea = view;
            view.setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
            addView(this.checkBoxClickArea, LayoutHelper.createFrame(76, -1, LocaleController.isRTL ? 3 : 5));
        }
        this.animatedTextView.setText(str);
        this.collapsedArrow.animate().cancel();
        this.collapsedArrow.animate().rotation(z ? BitmapDescriptorFactory.HUE_RED : 180.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
        this.checkBoxClickArea.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Cells.TextCheckCell2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                runnable.run();
            }
        });
    }

    public TextCheckCell2(Context context) {
        this(context, null);
    }

    public TextCheckCell2(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText", resourcesProvider));
        this.textView.setTextSize(1, 16.0f);
        this.textView.setLines(1);
        this.textView.setMaxLines(1);
        this.textView.setSingleLine(true);
        this.textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        this.textView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView2 = this.textView;
        boolean z = LocaleController.isRTL;
        addView(textView2, LayoutHelper.createFrame(-2, -1, (z ? 5 : 3) | 48, z ? 64 : 21, 0, z ? 21 : 64, 0));
        TextView textView3 = new TextView(context);
        this.valueTextView = textView3;
        textView3.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2", resourcesProvider));
        this.valueTextView.setTextSize(1, 13.0f);
        this.valueTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.valueTextView.setLines(1);
        this.valueTextView.setMaxLines(1);
        this.valueTextView.setSingleLine(true);
        this.valueTextView.setPadding(0, 0, 0, 0);
        this.valueTextView.setEllipsize(TextUtils.TruncateAt.END);
        TextView textView4 = this.valueTextView;
        boolean z2 = LocaleController.isRTL;
        addView(textView4, LayoutHelper.createFrame(-2, -2, (z2 ? 5 : 3) | 48, z2 ? 64 : 21, 35, z2 ? 21 : 64, 0));
        Switch r2 = new Switch(context);
        this.checkBox = r2;
        r2.setDrawIconType(1);
        addView(this.checkBox, LayoutHelper.createFrame(37, 40, (LocaleController.isRTL ? 3 : 5) | 16, 22, 0, 22, 0));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(this.valueTextView.getVisibility() == 0 ? 64 : 50) + (this.needDivider ? 1 : 0), 1073741824));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        LinearLayout linearLayout = this.collapseViewContainer;
        if (linearLayout != null) {
            if (LocaleController.isRTL) {
                linearLayout.setTranslationX((this.textView.getLeft() - this.collapseViewContainer.getMeasuredWidth()) - AndroidUtilities.m50dp(4));
            } else {
                linearLayout.setTranslationX(this.textView.getRight() + AndroidUtilities.m50dp(4));
            }
        }
    }

    public void setTextAndCheck(String str, boolean z, boolean z2) {
        setTextAndCheck(str, z, z2, false);
    }

    public void setTextAndCheck(String str, boolean z, boolean z2, boolean z3) {
        this.textView.setText(str);
        this.isMultiline = false;
        this.checkBox.setChecked(z, z3);
        this.needDivider = z2;
        this.valueTextView.setVisibility(8);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.topMargin = 0;
        this.textView.setLayoutParams(layoutParams);
        setWillNotDraw(!z2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.textView.clearAnimation();
        this.valueTextView.clearAnimation();
        this.checkBox.clearAnimation();
        if (z) {
            this.textView.setAlpha(1.0f);
            this.valueTextView.setAlpha(1.0f);
            this.checkBox.setAlpha(1.0f);
            return;
        }
        this.checkBox.setAlpha(0.5f);
        this.textView.setAlpha(0.5f);
        this.valueTextView.setAlpha(0.5f);
    }

    public void setEnabled(boolean z, boolean z2) {
        super.setEnabled(z);
        if (z2) {
            this.textView.clearAnimation();
            this.valueTextView.clearAnimation();
            this.checkBox.clearAnimation();
            this.textView.animate().alpha(z ? 1.0f : 0.5f).start();
            this.valueTextView.animate().alpha(z ? 1.0f : 0.5f).start();
            this.checkBox.animate().alpha(z ? 1.0f : 0.5f).start();
        } else if (z) {
            this.textView.setAlpha(1.0f);
            this.valueTextView.setAlpha(1.0f);
            this.checkBox.setAlpha(1.0f);
        } else {
            this.checkBox.setAlpha(0.5f);
            this.textView.setAlpha(0.5f);
            this.valueTextView.setAlpha(0.5f);
        }
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public void setIcon(int i) {
        this.checkBox.setIcon(i);
    }

    public boolean hasIcon() {
        return this.checkBox.hasIcon();
    }

    public boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m50dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m50dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
    }
}
