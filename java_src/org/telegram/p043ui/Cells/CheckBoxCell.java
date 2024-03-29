package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CheckBoxSquare;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
/* renamed from: org.telegram.ui.Cells.CheckBoxCell */
/* loaded from: classes5.dex */
public class CheckBoxCell extends FrameLayout {
    private final View checkBox;
    private CheckBox2 checkBoxRound;
    private final int checkBoxSize;
    private CheckBoxSquare checkBoxSquare;
    private View click1Container;
    private View click2Container;
    private View collapsedArrow;
    private final int currentType;
    private boolean isMultiline;
    private boolean needDivider;
    private final Theme.ResourcesProvider resourcesProvider;
    private final LinkSpanDrawable.LinksTextView textView;
    private final TextView valueTextView;

    public CheckBoxCell(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, i2, resourcesProvider, null);
    }

    public CheckBoxCell(Context context, AttributeSet attributeSet) {
        this(context, 4, 17, null, attributeSet);
    }

    public void toggle(boolean z) {
        setChecked(!isChecked(), z);
    }

    public void updateTextViewMarginForSorting() {
        LinkSpanDrawable.LinksTextView linksTextView = this.textView;
        boolean z = LocaleController.isRTL;
        updateViewLayout(linksTextView, LayoutHelper.createFrame(-2, -2, (z ? 5 : 3) | 16, z ? 17 : 49, 0, z ? 56 : 17, 0));
    }

    public CheckBoxCell(Context context, int i) {
        this(context, i, 17, null, null);
    }

    public CheckBoxCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, 17, resourcesProvider, null);
    }

    public CheckBoxCell(Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resourcesProvider = resourcesProvider;
        this.currentType = i;
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.Cells.CheckBoxCell.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p043ui.Components.LinkSpanDrawable.LinksTextView, android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                CheckBoxCell.this.updateCollapseArrowTranslation();
            }

            @Override // android.widget.TextView
            public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                super.setText(Emoji.replaceEmoji(charSequence, getPaint().getFontMetricsInt(), false), bufferType);
            }
        };
        this.textView = linksTextView;
        NotificationCenter.listenEmojiLoading(linksTextView);
        boolean z = true;
        linksTextView.setTag(Integer.valueOf(getThemedColor((i == 1 || i == 5) ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText)));
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setLines(1);
        linksTextView.setMaxLines(1);
        linksTextView.setSingleLine(true);
        linksTextView.setEllipsize(TextUtils.TruncateAt.END);
        linksTextView.setIncludeFontPadding(false);
        int i3 = IdFabric$ViewTypes.TON_ADDRESS_VERSION;
        if (i == i3) {
            ViewExtKt.withMediumTypeface(linksTextView);
            linksTextView.setPadding(AndroidUtilities.m107dp(16), 0, 0, 0);
        }
        if (i == 3) {
            linksTextView.setGravity(19);
            addView(linksTextView, LayoutHelper.createFrame(-1, -2, 19, 29, 0, 0, 0));
            linksTextView.setPadding(0, 0, 0, AndroidUtilities.m107dp(3));
        } else {
            linksTextView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
            if (i == 2) {
                boolean z2 = LocaleController.isRTL;
                addView(linksTextView, LayoutHelper.createFrame(-1, -2, (z2 ? 5 : 3) | 16, z2 ? 8 : 29, 0, z2 ? 29 : 8, 0));
            } else {
                int i4 = i == 4 ? 56 : 46;
                int i5 = i == 4 ? -2 : -1;
                boolean z3 = LocaleController.isRTL;
                addView(linksTextView, LayoutHelper.createFrame(i5, -2, (z3 ? 5 : 3) | 16, z3 ? i2 : i4 + (i2 - 17), 0, z3 ? i4 + (i2 - 17) : i2, 0));
            }
        }
        TextView textView = new TextView(context);
        this.valueTextView = textView;
        textView.setTag(Integer.valueOf((i == 1 || i == 5) ? Theme.key_dialogTextBlue : Theme.key_windowBackgroundWhiteValueText));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity((LocaleController.isRTL ? 3 : 5) | 16);
        addView(textView, LayoutHelper.createFrame(-2, -1, (LocaleController.isRTL ? 3 : 5) | 48, i2, 0, i2, 0));
        if (i == i3) {
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(C3632R.C3634drawable.account_check);
            ImageViewExtKt.setImageColor(imageView, getThemedColor(Theme.key_actionBarDefaultSubmenuItemIcon));
            this.checkBox = imageView;
            this.checkBoxSize = 20;
            addView(imageView, LayoutHelper.createFrame(20, 20, (LocaleController.isRTL ? 5 : 3) | 17, 22, 0, 0, 0));
        } else if (i == 4) {
            CheckBox2 checkBox2 = new CheckBox2(context, 21, resourcesProvider);
            this.checkBoxRound = checkBox2;
            this.checkBox = checkBox2;
            checkBox2.setDrawUnchecked(true);
            this.checkBoxRound.setChecked(true, false);
            this.checkBoxRound.setDrawBackgroundAsArc(10);
            this.checkBoxSize = 21;
            boolean z4 = LocaleController.isRTL;
            addView(checkBox2, LayoutHelper.createFrame(21, 21, (z4 ? 5 : 3) | 48, z4 ? 0 : i2, 16, z4 ? i2 : 0, 0));
        } else {
            if (i != 1 && i != 5) {
                z = false;
            }
            CheckBoxSquare checkBoxSquare = new CheckBoxSquare(context, z, resourcesProvider);
            this.checkBoxSquare = checkBoxSquare;
            this.checkBox = checkBoxSquare;
            this.checkBoxSize = 18;
            if (i == 5) {
                boolean z5 = LocaleController.isRTL;
                addView(checkBoxSquare, LayoutHelper.createFrame(18, 18, (z5 ? 5 : 3) | 16, z5 ? 0 : i2, 0, z5 ? i2 : 0, 0));
            } else if (i == 3) {
                addView(checkBoxSquare, LayoutHelper.createFrame(18, 18, 51, 0, 15, 0, 0));
            } else if (i == 2) {
                addView(checkBoxSquare, LayoutHelper.createFrame(18, 18, (LocaleController.isRTL ? 5 : 3) | 48, 0, 15, 0, 0));
            } else {
                boolean z6 = LocaleController.isRTL;
                addView(checkBoxSquare, LayoutHelper.createFrame(18, 18, (z6 ? 5 : 3) | 48, z6 ? 0 : i2, 16, z6 ? i2 : 0, 0));
            }
        }
        updateTextColor();
    }

    public void allowMultiline() {
        this.textView.setLines(3);
        this.textView.setMaxLines(3);
        this.textView.setSingleLine(false);
    }

    public void updateTextColor() {
        LinkSpanDrawable.LinksTextView linksTextView = this.textView;
        int i = this.currentType;
        linksTextView.setTextColor(getThemedColor((i == 1 || i == 5) ? Theme.key_dialogTextBlack : Theme.key_windowBackgroundWhiteBlackText));
        LinkSpanDrawable.LinksTextView linksTextView2 = this.textView;
        int i2 = this.currentType;
        linksTextView2.setLinkTextColor(getThemedColor((i2 == 1 || i2 == 5) ? Theme.key_dialogTextLink : Theme.key_windowBackgroundWhiteLinkText));
        int i3 = this.currentType;
        if (i3 == IdFabric$ViewTypes.TON_ADDRESS_VERSION) {
            this.valueTextView.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        } else {
            this.valueTextView.setTextColor(getThemedColor((i3 == 1 || i3 == 5) ? Theme.key_dialogTextBlue : Theme.key_windowBackgroundWhiteValueText));
        }
    }

    public void setOnSectionsClickListener(View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (onClickListener == null) {
            View view = this.click1Container;
            if (view != null) {
                removeView(view);
                this.click1Container = null;
            }
        } else {
            if (this.click1Container == null) {
                View view2 = new View(getContext());
                this.click1Container = view2;
                view2.setBackground(Theme.createSelectorDrawable(getThemedColor(Theme.key_listSelector), 2));
                addView(this.click1Container, LayoutHelper.createFrame(-1, -1, 119));
            }
            this.click1Container.setOnClickListener(onClickListener);
        }
        if (onClickListener2 == null) {
            View view3 = this.click2Container;
            if (view3 != null) {
                removeView(view3);
                this.click2Container = null;
                return;
            }
            return;
        }
        if (this.click2Container == null) {
            View view4 = new View(getContext());
            this.click2Container = view4;
            addView(view4, LayoutHelper.createFrame(56, -1, LocaleController.isRTL ? 5 : 3));
        }
        this.click2Container.setOnClickListener(onClickListener2);
    }

    public void setCollapsed(Boolean bool) {
        if (bool == null) {
            View view = this.collapsedArrow;
            if (view != null) {
                removeView(view);
                this.collapsedArrow = null;
                return;
            }
            return;
        }
        if (this.collapsedArrow == null) {
            this.collapsedArrow = new View(getContext());
            Drawable mutate = getContext().getResources().getDrawable(C3632R.C3634drawable.arrow_more).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_windowBackgroundWhiteBlackText), PorterDuff.Mode.MULTIPLY));
            this.collapsedArrow.setBackground(mutate);
            addView(this.collapsedArrow, LayoutHelper.createFrame(16, 16, 16));
        }
        updateCollapseArrowTranslation();
        this.collapsedArrow.animate().cancel();
        this.collapsedArrow.animate().rotation(bool.booleanValue() ? BitmapDescriptorFactory.HUE_RED : 180.0f).setDuration(340L).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCollapseArrowTranslation() {
        float left;
        if (this.collapsedArrow == null) {
            return;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        try {
            f = this.textView.getMeasuredWidth();
        } catch (Exception unused) {
        }
        if (LocaleController.isRTL) {
            left = (this.textView.getRight() - f) - AndroidUtilities.m107dp(20);
        } else {
            left = this.textView.getLeft() + f + AndroidUtilities.m107dp(4);
        }
        this.collapsedArrow.setTranslationX(left);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int i3 = this.currentType;
        if (i3 == IdFabric$ViewTypes.TON_ADDRESS_VERSION) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(50) + (this.needDivider ? 1 : 0));
            int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m107dp(34);
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth / 3) * 2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            this.textView.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m107dp(8), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            this.checkBox.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), 1073741824));
        } else if (i3 == 3) {
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(10), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m107dp(34), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), Integer.MIN_VALUE));
            this.checkBox.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), 1073741824));
            setMeasuredDimension(this.textView.getMeasuredWidth() + AndroidUtilities.m107dp(29), AndroidUtilities.m107dp(50));
        } else if (this.isMultiline) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        } else {
            setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m107dp(50) + (this.needDivider ? 1 : 0));
            int measuredWidth2 = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m107dp(this.currentType == 4 ? 60 : 34);
            if (this.valueTextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                measuredWidth2 -= ((ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams()).rightMargin;
            }
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2 / 2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            if (this.textView.getLayoutParams().width == -1) {
                LinkSpanDrawable.LinksTextView linksTextView = this.textView;
                linksTextView.measure(View.MeasureSpec.makeMeasureSpec(((measuredWidth2 - ((int) Math.abs(linksTextView.getTranslationX()))) - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m107dp(8), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            } else {
                LinkSpanDrawable.LinksTextView linksTextView2 = this.textView;
                linksTextView2.measure(View.MeasureSpec.makeMeasureSpec(((measuredWidth2 - ((int) Math.abs(linksTextView2.getTranslationX()))) - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m107dp(8), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
            }
            this.checkBox.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.checkBoxSize), 1073741824));
        }
        View view = this.click1Container;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            this.click1Container.measure(View.MeasureSpec.makeMeasureSpec((size - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
        }
        View view2 = this.click2Container;
        if (view2 != null) {
            view2.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(56), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(50), 1073741824));
        }
        View view3 = this.collapsedArrow;
        if (view3 != null) {
            view3.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(16), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(16), 1073741824));
        }
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setText(CharSequence charSequence, String str, boolean z, boolean z2) {
        setText(charSequence, str, z, z2, false);
    }

    public void setText(CharSequence charSequence, String str, boolean z, boolean z2, boolean z3) {
        this.textView.setText(charSequence);
        if (this.currentType == IdFabric$ViewTypes.TON_ADDRESS_VERSION) {
            this.checkBox.setVisibility(z ? 0 : 4);
        } else {
            CheckBox2 checkBox2 = this.checkBoxRound;
            if (checkBox2 != null) {
                checkBox2.setChecked(z, z3);
            } else {
                this.checkBoxSquare.setChecked(z, z3);
            }
        }
        this.valueTextView.setText(str);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public void setPad(int i) {
        int m107dp = AndroidUtilities.m107dp(i * 40 * (LocaleController.isRTL ? -1 : 1));
        View view = this.checkBox;
        if (view != null) {
            view.setTranslationX(m107dp);
        }
        float f = m107dp;
        this.textView.setTranslationX(f);
        View view2 = this.click1Container;
        if (view2 != null) {
            view2.setTranslationX(f);
        }
        View view3 = this.click2Container;
        if (view3 != null) {
            view3.setTranslationX(f);
        }
    }

    public void setNeedDivider(boolean z) {
        this.needDivider = z;
    }

    public void setMultiline(boolean z) {
        this.isMultiline = z;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.textView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.checkBox.getLayoutParams();
        if (this.isMultiline) {
            this.textView.setLines(0);
            this.textView.setMaxLines(0);
            this.textView.setSingleLine(false);
            this.textView.setEllipsize(null);
            this.textView.setPadding(0, AndroidUtilities.m107dp(8), 0, AndroidUtilities.m107dp(8));
            if (this.currentType != 5) {
                layoutParams2.topMargin = AndroidUtilities.m107dp(10);
            }
        } else {
            this.textView.setLines(1);
            this.textView.setMaxLines(1);
            this.textView.setSingleLine(true);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            this.textView.setPadding(0, 0, 0, 0);
            layoutParams.height = -1;
            layoutParams.topMargin = 0;
            layoutParams2.topMargin = AndroidUtilities.m107dp(15);
        }
        this.textView.setLayoutParams(layoutParams);
        this.checkBox.setLayoutParams(layoutParams2);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.textView.setAlpha(z ? 1.0f : 0.5f);
        this.valueTextView.setAlpha(z ? 1.0f : 0.5f);
        this.checkBox.setAlpha(z ? 1.0f : 0.5f);
    }

    public void setChecked(boolean z, boolean z2) {
        CheckBox2 checkBox2 = this.checkBoxRound;
        if (checkBox2 != null) {
            checkBox2.setChecked(z, z2);
        } else {
            this.checkBoxSquare.setChecked(z, z2);
        }
    }

    public boolean isChecked() {
        CheckBox2 checkBox2 = this.checkBoxRound;
        if (checkBox2 != null) {
            return checkBox2.isChecked();
        }
        CheckBoxSquare checkBoxSquare = this.checkBoxSquare;
        if (checkBoxSquare == null) {
            return false;
        }
        return checkBoxSquare.isChecked();
    }

    public TextView getTextView() {
        return this.textView;
    }

    public TextView getValueTextView() {
        return this.valueTextView;
    }

    public View getCheckBoxView() {
        return this.checkBox;
    }

    public void setCheckBoxColor(int i, int i2, int i3) {
        CheckBox2 checkBox2 = this.checkBoxRound;
        if (checkBox2 != null) {
            checkBox2.setColor(i, i, i3);
        }
    }

    public CheckBox2 getCheckBoxRound() {
        return this.checkBoxRound;
    }

    public void setSquareCheckBoxColor(int i, int i2, int i3) {
        CheckBoxSquare checkBoxSquare = this.checkBoxSquare;
        if (checkBoxSquare != null) {
            checkBoxSquare.setColors(i, i2, i3);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            int m107dp = AndroidUtilities.m107dp(this.currentType == 4 ? 60 : 20) + ((int) Math.abs(this.textView.getTranslationX()));
            float f = LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : m107dp;
            float measuredHeight = getMeasuredHeight() - 1;
            int measuredWidth = getMeasuredWidth();
            if (!LocaleController.isRTL) {
                m107dp = 0;
            }
            canvas.drawLine(f, measuredHeight, measuredWidth - m107dp, getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.CheckBox");
        accessibilityNodeInfo.setCheckable(true);
        accessibilityNodeInfo.setChecked(isChecked());
    }

    private int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setIcon(int i) {
        this.checkBoxRound.setIcon(i);
    }

    public boolean hasIcon() {
        return this.checkBoxRound.hasIcon();
    }
}
