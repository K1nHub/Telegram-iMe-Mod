package org.telegram.p048ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.SimpleTextView;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.AnimatedTextView;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RLottieDrawable;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.Components.Switch;
/* renamed from: org.telegram.ui.Cells.TextCell */
/* loaded from: classes5.dex */
public class TextCell extends FrameLayout {
    private int changeProgressStartDelay;
    private Switch checkBox;
    private boolean drawLoading;
    private float drawLoadingProgress;
    public int heightDp;
    public int imageLeft;
    public final RLottieImageView imageView;
    private boolean inDialogs;
    private boolean incrementLoadingProgress;
    private int lastWidth;
    private int leftPadding;
    private float loadingProgress;
    private int loadingSize;
    private boolean needDivider;
    private boolean needFullDivider;
    private int offsetFromImage;
    Paint paint;
    private boolean prioritizeTitleOverValue;
    private Theme.ResourcesProvider resourcesProvider;
    private final SimpleTextView subtitleView;
    public final SimpleTextView textView;
    private ImageView valueImageView;
    public final SimpleTextView valueSpoilersTextView;
    private CharSequence valueText;
    public final AnimatedTextView valueTextView;

    public void setFullDivider(boolean z) {
        this.needFullDivider = z;
    }

    public void showDivider(boolean z) {
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setText(String str) {
        this.textView.setText(str);
    }

    public TextCell(Context context) {
        this(context, 23, false);
    }

    public TextCell(Context context, int i, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        this(context, i, z, z2, resourcesProvider, null);
    }

    public TextCell(Context context, AttributeSet attributeSet) {
        this(context, 23, false, false, null, attributeSet);
    }

    public TextCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        this(context, 23, false, false, resourcesProvider, null);
    }

    public TextCell(Context context, int i, boolean z) {
        this(context, i, z, false, null, null);
    }

    public TextCell(Context context, int i, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.offsetFromImage = 71;
        this.heightDp = 48;
        this.imageLeft = 21;
        this.resourcesProvider = resourcesProvider;
        this.leftPadding = i;
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.textView = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(z ? "dialogTextBlack" : "windowBackgroundWhiteBlackText", resourcesProvider));
        simpleTextView.setTextSize(16);
        simpleTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView.setImportantForAccessibility(2);
        addView(simpleTextView, LayoutHelper.createFrame(-2, -1));
        SimpleTextView simpleTextView2 = new SimpleTextView(context);
        this.subtitleView = simpleTextView2;
        simpleTextView2.setTextColor(Theme.getColor(z ? "dialogTextGray" : "windowBackgroundWhiteGrayText", resourcesProvider));
        simpleTextView2.setTextSize(13);
        simpleTextView2.setGravity(LocaleController.isRTL ? 5 : 3);
        simpleTextView2.setImportantForAccessibility(2);
        addView(simpleTextView2, LayoutHelper.createFrame(-2, -1));
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, false, true);
        this.valueTextView = animatedTextView;
        animatedTextView.setTextColor(Theme.getColor(z ? "dialogTextBlue2" : "windowBackgroundWhiteValueText", resourcesProvider));
        animatedTextView.setPadding(0, AndroidUtilities.m50dp(18), 0, AndroidUtilities.m50dp(18));
        animatedTextView.setTextSize(AndroidUtilities.m50dp(16));
        animatedTextView.setGravity(LocaleController.isRTL ? 3 : 5);
        animatedTextView.setImportantForAccessibility(2);
        animatedTextView.setTranslationY(AndroidUtilities.m50dp(-2));
        addView(animatedTextView);
        SimpleTextView simpleTextView3 = new SimpleTextView(context);
        this.valueSpoilersTextView = simpleTextView3;
        simpleTextView3.setEllipsizeByGradient(18, Boolean.FALSE);
        simpleTextView3.setTextColor(Theme.getColor(z ? "dialogTextBlue2" : "windowBackgroundWhiteValueText", resourcesProvider));
        simpleTextView3.setGravity(LocaleController.isRTL ? 3 : 5);
        simpleTextView3.setTextSize(16);
        simpleTextView3.setImportantForAccessibility(2);
        simpleTextView3.setVisibility(8);
        addView(simpleTextView3);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        this.imageView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        rLottieImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(z ? "dialogIcon" : "windowBackgroundWhiteGrayIcon", resourcesProvider), PorterDuff.Mode.MULTIPLY));
        addView(rLottieImageView);
        ImageView imageView = new ImageView(context);
        this.valueImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.valueImageView);
        if (z2) {
            Switch r3 = new Switch(context, resourcesProvider);
            this.checkBox = r3;
            r3.setColors("switchTrack", "switchTrackChecked", "windowBackgroundWhite", "windowBackgroundWhite");
            addView(this.checkBox, LayoutHelper.createFrame(37, 20, (LocaleController.isRTL ? 3 : 5) | 16, 22, 0, 22, 0));
        }
        setFocusable(true);
    }

    public boolean isChecked() {
        Switch r0 = this.checkBox;
        return r0 != null && r0.isChecked();
    }

    public Switch getCheckBox() {
        return this.checkBox;
    }

    public void setIsInDialogs() {
        this.inDialogs = true;
    }

    public SimpleTextView getTextView() {
        return this.textView;
    }

    public RLottieImageView getImageView() {
        return this.imageView;
    }

    public AnimatedTextView getValueTextView() {
        return this.valueTextView;
    }

    public ImageView getValueImageView() {
        return this.valueImageView;
    }

    public void setPrioritizeTitleOverValue(boolean z) {
        if (this.prioritizeTitleOverValue != z) {
            this.prioritizeTitleOverValue = z;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        CharSequence charSequence;
        int size = View.MeasureSpec.getSize(i);
        int m50dp = AndroidUtilities.m50dp(this.heightDp);
        int i3 = this.lastWidth;
        if (i3 != 0 && i3 != size && (charSequence = this.valueText) != null) {
            AnimatedTextView animatedTextView = this.valueTextView;
            animatedTextView.setText(TextUtils.ellipsize(charSequence, animatedTextView.getPaint(), AndroidUtilities.displaySize.x / 2.5f, TextUtils.TruncateAt.END), false);
        }
        this.lastWidth = size;
        if (this.prioritizeTitleOverValue) {
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(this.leftPadding + 71), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.subtitleView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(this.leftPadding + 71), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec((size - AndroidUtilities.m50dp(this.leftPadding + 103)) - this.textView.getTextWidth(), LocaleController.isRTL ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.valueSpoilersTextView.measure(View.MeasureSpec.makeMeasureSpec((size - AndroidUtilities.m50dp(this.leftPadding + 103)) - this.textView.getTextWidth(), LocaleController.isRTL ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        } else {
            this.valueTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(this.leftPadding), LocaleController.isRTL ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.valueSpoilersTextView.measure(View.MeasureSpec.makeMeasureSpec(size - AndroidUtilities.m50dp(this.leftPadding), LocaleController.isRTL ? Integer.MIN_VALUE : 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            int max = Math.max(this.valueTextView.width(), this.valueSpoilersTextView.getTextWidth());
            this.textView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (size - AndroidUtilities.m50dp(this.leftPadding + 71)) - max), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
            this.subtitleView.measure(View.MeasureSpec.makeMeasureSpec((size - AndroidUtilities.m50dp(this.leftPadding + 71)) - max, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        }
        if (this.imageView.getVisibility() == 0) {
            this.imageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m50dp, Integer.MIN_VALUE));
        }
        if (this.valueImageView.getVisibility() == 0) {
            this.valueImageView.measure(View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(m50dp, Integer.MIN_VALUE));
        }
        Switch r9 = this.checkBox;
        if (r9 != null) {
            r9.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(37), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(20), 1073741824));
        }
        setMeasuredDimension(size, AndroidUtilities.m50dp(50) + (this.needDivider ? 1 : 0));
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Switch r0 = this.checkBox;
        if (r0 != null) {
            r0.setEnabled(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int m50dp;
        int i5 = i4 - i2;
        int i6 = i3 - i;
        int max = (i5 - Math.max(this.valueSpoilersTextView.getTextHeight(), this.valueTextView.getTextHeight())) / 2;
        int m50dp2 = LocaleController.isRTL ? AndroidUtilities.m50dp(this.leftPadding) : (i6 - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.leftPadding);
        if (this.prioritizeTitleOverValue && !LocaleController.isRTL) {
            m50dp2 = (i6 - this.valueTextView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.leftPadding);
        }
        AnimatedTextView animatedTextView = this.valueTextView;
        animatedTextView.layout(m50dp2, max, animatedTextView.getMeasuredWidth() + m50dp2, this.valueTextView.getMeasuredHeight() + max);
        int m50dp3 = LocaleController.isRTL ? AndroidUtilities.m50dp(this.leftPadding) : (i6 - this.valueSpoilersTextView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.leftPadding);
        SimpleTextView simpleTextView = this.valueSpoilersTextView;
        simpleTextView.layout(m50dp3, max, simpleTextView.getMeasuredWidth() + m50dp3, this.valueSpoilersTextView.getMeasuredHeight() + max);
        if (LocaleController.isRTL) {
            m50dp = (getMeasuredWidth() - this.textView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.imageView.getVisibility() == 0 ? this.offsetFromImage : this.leftPadding);
        } else {
            m50dp = AndroidUtilities.m50dp(this.imageView.getVisibility() == 0 ? this.offsetFromImage : this.leftPadding);
        }
        if (this.subtitleView.getVisibility() == 0) {
            int textHeight = (((i5 - this.textView.getTextHeight()) - this.subtitleView.getTextHeight()) - AndroidUtilities.m50dp(2)) / 2;
            SimpleTextView simpleTextView2 = this.textView;
            simpleTextView2.layout(m50dp, textHeight, simpleTextView2.getMeasuredWidth() + m50dp, this.textView.getMeasuredHeight() + textHeight);
            int textHeight2 = textHeight + this.textView.getTextHeight() + AndroidUtilities.m50dp(2);
            SimpleTextView simpleTextView3 = this.subtitleView;
            simpleTextView3.layout(m50dp, textHeight2, simpleTextView3.getMeasuredWidth() + m50dp, this.subtitleView.getMeasuredHeight() + textHeight2);
        } else {
            int textHeight3 = (i5 - this.textView.getTextHeight()) / 2;
            SimpleTextView simpleTextView4 = this.textView;
            simpleTextView4.layout(m50dp, textHeight3, simpleTextView4.getMeasuredWidth() + m50dp, this.textView.getMeasuredHeight() + textHeight3);
        }
        if (this.imageView.getVisibility() == 0) {
            int m50dp4 = AndroidUtilities.m50dp(5);
            int m50dp5 = !LocaleController.isRTL ? AndroidUtilities.m50dp(this.imageLeft) : (i6 - this.imageView.getMeasuredWidth()) - AndroidUtilities.m50dp(this.imageLeft);
            RLottieImageView rLottieImageView = this.imageView;
            rLottieImageView.layout(m50dp5, m50dp4, rLottieImageView.getMeasuredWidth() + m50dp5, this.imageView.getMeasuredHeight() + m50dp4);
        }
        if (this.valueImageView.getVisibility() == 0) {
            int measuredHeight = (i5 - this.valueImageView.getMeasuredHeight()) / 2;
            int m50dp6 = LocaleController.isRTL ? AndroidUtilities.m50dp(23) : (i6 - this.valueImageView.getMeasuredWidth()) - AndroidUtilities.m50dp(23);
            ImageView imageView = this.valueImageView;
            imageView.layout(m50dp6, measuredHeight, imageView.getMeasuredWidth() + m50dp6, this.valueImageView.getMeasuredHeight() + measuredHeight);
        }
        Switch r4 = this.checkBox;
        if (r4 == null || r4.getVisibility() != 0) {
            return;
        }
        int measuredHeight2 = (i5 - this.checkBox.getMeasuredHeight()) / 2;
        int m50dp7 = LocaleController.isRTL ? AndroidUtilities.m50dp(22) : (i6 - this.checkBox.getMeasuredWidth()) - AndroidUtilities.m50dp(22);
        Switch r5 = this.checkBox;
        r5.layout(m50dp7, measuredHeight2, r5.getMeasuredWidth() + m50dp7, this.checkBox.getMeasuredHeight() + measuredHeight2);
    }

    public void setTextColor(int i) {
        this.textView.setTextColor(i);
    }

    public void setColors(String str, String str2) {
        this.textView.setTextColor(Theme.getColor(str2, this.resourcesProvider));
        this.textView.setTag(str2);
        if (str != null) {
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(str, this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            this.imageView.setTag(str);
        }
    }

    public void setText(String str, boolean z) {
        this.imageLeft = 21;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = null;
        animatedTextView.setText(null, false);
        this.imageView.setVisibility(8);
        this.valueTextView.setVisibility(8);
        this.valueSpoilersTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndIcon(String str, int i, boolean z) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = null;
        animatedTextView.setText(null, false);
        this.imageView.setImageResource(i);
        this.imageView.setVisibility(0);
        this.valueTextView.setVisibility(8);
        this.valueSpoilersTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(7), 0, 0);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setTextAndIcon(String str, Drawable drawable, boolean z) {
        this.offsetFromImage = 68;
        this.imageLeft = 18;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = null;
        animatedTextView.setText(null, false);
        this.imageView.setColorFilter((ColorFilter) null);
        if (drawable instanceof RLottieDrawable) {
            this.imageView.setAnimation((RLottieDrawable) drawable);
        } else {
            this.imageView.setImageDrawable(drawable);
        }
        this.imageView.setVisibility(0);
        this.valueTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(6), 0, 0);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setOffsetFromImage(int i) {
        this.offsetFromImage = i;
    }

    public void setImageLeft(int i) {
        this.imageLeft = i;
    }

    public void setTextAndValue(String str, String str2, boolean z) {
        setTextAndValue(str, str2, false, z);
    }

    public void setTextAndValue(String str, String str2, boolean z, boolean z2) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = str2;
        animatedTextView.setText(TextUtils.ellipsize(str2, animatedTextView.getPaint(), AndroidUtilities.displaySize.x / 2.5f, TextUtils.TruncateAt.END), z);
        this.valueTextView.setVisibility(0);
        this.valueSpoilersTextView.setVisibility(8);
        this.imageView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.needDivider = z2;
        setWillNotDraw(!z2);
        Switch r4 = this.checkBox;
        if (r4 != null) {
            r4.setVisibility(8);
        }
    }

    public void setTextAndValueAndColorfulIcon(String str, CharSequence charSequence, boolean z, int i, int i2, boolean z2) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = charSequence;
        animatedTextView.setText(TextUtils.ellipsize(charSequence, animatedTextView.getPaint(), AndroidUtilities.displaySize.x / 2.5f, TextUtils.TruncateAt.END), z);
        this.valueTextView.setVisibility(0);
        this.valueSpoilersTextView.setVisibility(8);
        setColorfulIcon(i2, i);
        this.valueImageView.setVisibility(8);
        this.needDivider = z2;
        setWillNotDraw(!z2);
        Switch r4 = this.checkBox;
        if (r4 != null) {
            r4.setVisibility(8);
        }
    }

    public void setTextAndSpoilersValueAndIcon(String str, CharSequence charSequence, int i, boolean z) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        this.valueSpoilersTextView.setVisibility(0);
        this.valueSpoilersTextView.setText(charSequence);
        this.valueTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.imageView.setVisibility(0);
        this.imageView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.imageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(7), 0, 0);
        this.imageView.setImageResource(i);
        this.needDivider = z;
        setWillNotDraw(!z);
        Switch r3 = this.checkBox;
        if (r3 != null) {
            r3.setVisibility(8);
        }
    }

    public void setTextAndValueAndIcon(String str, String str2, int i, boolean z) {
        setTextAndValueAndIcon(str, str2, false, i, z);
    }

    public void setTextAndValueAndIcon(String str, String str2, boolean z, int i, boolean z2) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = str2;
        animatedTextView.setText(TextUtils.ellipsize(str2, animatedTextView.getPaint(), AndroidUtilities.displaySize.x / 2.5f, TextUtils.TruncateAt.END), z);
        this.valueTextView.setVisibility(0);
        this.valueSpoilersTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.imageView.setVisibility(0);
        this.imageView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
        this.imageView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(7), 0, 0);
        this.imageView.setImageResource(i);
        this.needDivider = z2;
        setWillNotDraw(!z2);
        Switch r4 = this.checkBox;
        if (r4 != null) {
            r4.setVisibility(8);
        }
    }

    public void setColorfulIcon(int i, int i2) {
        this.offsetFromImage = 65;
        this.imageView.setVisibility(0);
        this.imageView.setPadding(AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2), AndroidUtilities.m50dp(2));
        this.imageView.setTranslationX(AndroidUtilities.m50dp(LocaleController.isRTL ? 0 : -3));
        this.imageView.setTranslationY(AndroidUtilities.m50dp(6));
        this.imageView.setImageResource(i2);
        this.imageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        this.imageView.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m50dp(9), i));
    }

    public void setTextAndCheck(CharSequence charSequence, boolean z, boolean z2) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(charSequence);
        this.imageView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        this.needDivider = z2;
        Switch r2 = this.checkBox;
        if (r2 != null) {
            r2.setVisibility(0);
            this.checkBox.setChecked(z, false);
        }
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public void setTextAndCheckAndIcon(CharSequence charSequence, boolean z, int i, boolean z2) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(charSequence);
        this.valueTextView.setVisibility(8);
        this.valueSpoilersTextView.setVisibility(8);
        this.valueImageView.setVisibility(8);
        Switch r2 = this.checkBox;
        if (r2 != null) {
            r2.setVisibility(0);
            this.checkBox.setChecked(z, false);
        }
        this.imageView.setVisibility(0);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(7), 0, 0);
        this.imageView.setImageResource(i);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public void setTextAndValueDrawable(String str, Drawable drawable, boolean z) {
        this.imageLeft = 21;
        this.offsetFromImage = 71;
        this.textView.setText(str);
        AnimatedTextView animatedTextView = this.valueTextView;
        this.valueText = null;
        animatedTextView.setText(null, false);
        this.valueImageView.setVisibility(0);
        this.valueImageView.setImageDrawable(drawable);
        this.valueTextView.setVisibility(8);
        this.valueSpoilersTextView.setVisibility(8);
        this.imageView.setVisibility(8);
        this.imageView.setPadding(0, AndroidUtilities.m50dp(7), 0, 0);
        this.needDivider = z;
        setWillNotDraw(!z);
        Switch r3 = this.checkBox;
        if (r3 != null) {
            r3.setVisibility(8);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        int i;
        if (this.needDivider) {
            int i2 = 72;
            if (this.needFullDivider || LocaleController.isRTL) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else {
                f = AndroidUtilities.m50dp(this.imageView.getVisibility() == 0 ? this.inDialogs ? 72 : 68 : 20);
            }
            float f2 = f;
            float measuredHeight = getMeasuredHeight() - 1;
            int measuredWidth = getMeasuredWidth();
            if (LocaleController.isRTL) {
                if (this.imageView.getVisibility() != 0) {
                    i2 = 20;
                } else if (!this.inDialogs) {
                    i2 = 68;
                }
                i = AndroidUtilities.m50dp(i2);
            } else {
                i = 0;
            }
            canvas.drawLine(f2, measuredHeight, measuredWidth - i, getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        CharSequence text = this.textView.getText();
        if (!TextUtils.isEmpty(text)) {
            CharSequence text2 = this.valueTextView.getText();
            if (!TextUtils.isEmpty(text2)) {
                text = TextUtils.concat(text, ": ", text2);
            }
        }
        if (this.checkBox != null) {
            accessibilityNodeInfo.setClassName("android.widget.Switch");
            accessibilityNodeInfo.setCheckable(true);
            accessibilityNodeInfo.setChecked(this.checkBox.isChecked());
            StringBuilder sb = new StringBuilder();
            sb.append(this.textView.getText());
            if (!TextUtils.isEmpty(this.valueTextView.getText())) {
                sb.append('\n');
                sb.append(this.valueTextView.getText());
            }
            accessibilityNodeInfo.setContentDescription(sb);
        } else if (!TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(text);
        }
        accessibilityNodeInfo.addAction(16);
    }

    public void setNeedDivider(boolean z) {
        if (this.needDivider != z) {
            this.needDivider = z;
            setWillNotDraw(!z);
            invalidate();
        }
    }

    public void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setDrawLoading(boolean z, int i, boolean z2) {
        this.drawLoading = z;
        this.loadingSize = i;
        if (!z2) {
            this.drawLoadingProgress = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.drawLoading || this.drawLoadingProgress != BitmapDescriptorFactory.HUE_RED) {
            if (this.paint == null) {
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(Theme.getColor("dialogSearchBackground", this.resourcesProvider));
            }
            if (this.incrementLoadingProgress) {
                float f = this.loadingProgress + 0.016f;
                this.loadingProgress = f;
                if (f > 1.0f) {
                    this.loadingProgress = 1.0f;
                    this.incrementLoadingProgress = false;
                }
            } else {
                float f2 = this.loadingProgress - 0.016f;
                this.loadingProgress = f2;
                if (f2 < BitmapDescriptorFactory.HUE_RED) {
                    this.loadingProgress = BitmapDescriptorFactory.HUE_RED;
                    this.incrementLoadingProgress = true;
                }
            }
            int i = this.changeProgressStartDelay;
            if (i > 0) {
                this.changeProgressStartDelay = i - 15;
            } else {
                boolean z = this.drawLoading;
                if (z) {
                    float f3 = this.drawLoadingProgress;
                    if (f3 != 1.0f) {
                        float f4 = f3 + 0.10666667f;
                        this.drawLoadingProgress = f4;
                        if (f4 > 1.0f) {
                            this.drawLoadingProgress = 1.0f;
                        }
                    }
                }
                if (!z) {
                    float f5 = this.drawLoadingProgress;
                    if (f5 != BitmapDescriptorFactory.HUE_RED) {
                        float f6 = f5 - 0.10666667f;
                        this.drawLoadingProgress = f6;
                        if (f6 < BitmapDescriptorFactory.HUE_RED) {
                            this.drawLoadingProgress = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                }
            }
            this.paint.setAlpha((int) (((this.loadingProgress * 0.4f) + 0.6f) * this.drawLoadingProgress * 255.0f));
            int measuredHeight = getMeasuredHeight() >> 1;
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((getMeasuredWidth() - AndroidUtilities.m50dp(21)) - AndroidUtilities.m50dp(this.loadingSize), measuredHeight - AndroidUtilities.m50dp(3), getMeasuredWidth() - AndroidUtilities.m50dp(21), measuredHeight + AndroidUtilities.m50dp(3));
            if (LocaleController.isRTL) {
                rectF.left = getMeasuredWidth() - rectF.left;
                rectF.right = getMeasuredWidth() - rectF.right;
            }
            canvas.drawRoundRect(rectF, AndroidUtilities.m50dp(3), AndroidUtilities.m50dp(3), this.paint);
            invalidate();
        }
        this.valueTextView.setAlpha(1.0f - this.drawLoadingProgress);
        this.valueSpoilersTextView.setAlpha(1.0f - this.drawLoadingProgress);
        super.dispatchDraw(canvas);
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            this.subtitleView.setVisibility(0);
            this.subtitleView.setText(charSequence);
            return;
        }
        this.subtitleView.setVisibility(8);
    }
}
