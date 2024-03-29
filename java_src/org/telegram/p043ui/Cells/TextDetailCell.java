package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
/* renamed from: org.telegram.ui.Cells.TextDetailCell */
/* loaded from: classes5.dex */
public class TextDetailCell extends FrameLayout {
    private boolean contentDescriptionValueFirst;
    private final ImageView imageView;
    private boolean multiline;
    private boolean needDivider;
    private Theme.ResourcesProvider resourcesProvider;
    private final TextView textView;
    public final LinkSpanDrawable.LinksTextView valueTextView;

    public TextDetailCell(Context context) {
        this(context, (Theme.ResourcesProvider) null, (AttributeSet) null);
    }

    public TextDetailCell(Context context, Theme.ResourcesProvider resourcesProvider, boolean z) {
        this(context, resourcesProvider, z, null);
    }

    public TextView getTitleTextView() {
        return this.textView;
    }

    public ImageView getImageView() {
        return this.imageView;
    }

    public void setupColors(int i, boolean z, int i2) {
        setupColors(i, z, i2, null);
    }

    public void setupColors(int i, boolean z, int i2, Integer num) {
        this.textView.setTextColor(i);
        if (z) {
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        }
        this.valueTextView.setTextColor(i2);
        if (num != null) {
            ImageViewExtKt.setImageColor(this.imageView, num.intValue());
        }
    }

    public TextDetailCell(Context context, AttributeSet attributeSet) {
        this(context, (Theme.ResourcesProvider) null, attributeSet);
    }

    public TextDetailCell(Context context, Theme.ResourcesProvider resourcesProvider, AttributeSet attributeSet) {
        this(context, resourcesProvider, false, attributeSet);
    }

    public TextDetailCell(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.resourcesProvider = resourcesProvider;
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setTextSize(1, 16.0f);
        textView.setGravity(LocaleController.isRTL ? 5 : 3);
        textView.setLines(1);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setImportantForAccessibility(2);
        addView(textView, LayoutHelper.createFrame(-2, -2, LocaleController.isRTL ? 5 : 3, 23, 8, 23, 0));
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        this.valueTextView = linksTextView;
        linksTextView.setOnLinkLongPressListener(new LinkSpanDrawable.LinksTextView.OnLinkPress() { // from class: org.telegram.ui.Cells.TextDetailCell$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.LinkSpanDrawable.LinksTextView.OnLinkPress
            public final void run(ClickableSpan clickableSpan) {
                TextDetailCell.this.lambda$new$0(clickableSpan);
            }
        });
        this.multiline = z;
        if (z) {
            setMinimumHeight(AndroidUtilities.m107dp(60));
        } else {
            linksTextView.setLines(1);
            linksTextView.setSingleLine(true);
        }
        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linksTextView.setTextSize(1, 13.0f);
        linksTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        linksTextView.setImportantForAccessibility(2);
        linksTextView.setEllipsize(TextUtils.TruncateAt.END);
        addView(linksTextView, LayoutHelper.createFrame(-1, -2, LocaleController.isRTL ? 5 : 3, 23, 33, 23, 10));
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setImportantForAccessibility(2);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(imageView, LayoutHelper.createFrameRelatively(48.0f, 48.0f, 8388629, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 12.0f, BitmapDescriptorFactory.HUE_RED));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(ClickableSpan clickableSpan) {
        if (clickableSpan != null) {
            try {
                performHapticFeedback(0, 1);
            } catch (Exception unused) {
            }
            clickableSpan.onClick(this.valueTextView);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.valueTextView.hit(((int) motionEvent.getX()) - this.valueTextView.getLeft(), ((int) motionEvent.getY()) - this.valueTextView.getTop()) != null) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824);
        if (!this.multiline) {
            i2 = View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(60) + (this.needDivider ? 1 : 0), 1073741824);
        }
        super.onMeasure(makeMeasureSpec, i2);
    }

    public void setTextAndValue(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        this.textView.setText(charSequence);
        this.valueTextView.setText(charSequence2);
        this.needDivider = z;
        setWillNotDraw(!z);
    }

    public void setImage(Drawable drawable) {
        setImage(drawable, null);
    }

    public void setImage(Drawable drawable, CharSequence charSequence) {
        ((ViewGroup.MarginLayoutParams) this.valueTextView.getLayoutParams()).rightMargin = (LocaleController.isRTL || drawable == null) ? AndroidUtilities.m107dp(23) : AndroidUtilities.m107dp(58);
        this.imageView.setImageDrawable(drawable);
        this.imageView.setFocusable(drawable != null);
        this.imageView.setContentDescription(charSequence);
        if (drawable == null) {
            this.imageView.setBackground(null);
            this.imageView.setImportantForAccessibility(2);
        } else {
            this.imageView.setBackground(Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(48), 0, Theme.getColor(Theme.key_listSelector, this.resourcesProvider)));
            this.imageView.setImportantForAccessibility(1);
        }
        int m107dp = AndroidUtilities.m107dp(23) + (drawable != null ? AndroidUtilities.m107dp(48) : 0);
        if (LocaleController.isRTL) {
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).leftMargin = m107dp;
        } else {
            ((ViewGroup.MarginLayoutParams) this.textView.getLayoutParams()).rightMargin = m107dp;
        }
        this.textView.requestLayout();
    }

    public void setImageClickListener(View.OnClickListener onClickListener) {
        this.imageView.setOnClickListener(onClickListener);
        if (onClickListener == null) {
            this.imageView.setClickable(false);
        }
    }

    public void setContentDescriptionValueFirst(boolean z) {
        this.contentDescriptionValueFirst = z;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.textView.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m107dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m107dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        CharSequence text = this.textView.getText();
        CharSequence text2 = this.valueTextView.getText();
        if (TextUtils.isEmpty(text) || TextUtils.isEmpty(text2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) (this.contentDescriptionValueFirst ? text2 : text));
        sb.append(": ");
        if (!this.contentDescriptionValueFirst) {
            text = text2;
        }
        sb.append((Object) text);
        accessibilityNodeInfo.setText(sb.toString());
    }
}
