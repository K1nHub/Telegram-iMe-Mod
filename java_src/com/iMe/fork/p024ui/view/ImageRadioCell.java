package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RadioButton;
/* compiled from: ImageRadioCell.kt */
/* renamed from: com.iMe.fork.ui.view.ImageRadioCell */
/* loaded from: classes3.dex */
public final class ImageRadioCell extends FrameLayout {
    private final boolean dialog;
    private final Lazy imageView$delegate;
    private boolean needDivider;
    private final Lazy radioButton$delegate;
    private final Lazy textView$delegate;

    public /* synthetic */ ImageRadioCell(Context context, boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? 21 : i);
    }

    public final boolean getDialog() {
        return this.dialog;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageRadioCell(Context context, boolean z, int i) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        this.dialog = z;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AppCompatImageView>() { // from class: com.iMe.fork.ui.view.ImageRadioCell$imageView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AppCompatImageView invoke() {
                AppCompatImageView initImageView;
                initImageView = ImageRadioCell.this.initImageView();
                return initImageView;
            }
        });
        this.imageView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.ImageRadioCell$textView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initTextView;
                initTextView = ImageRadioCell.this.initTextView();
                return initTextView;
            }
        });
        this.textView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<RadioButton>() { // from class: com.iMe.fork.ui.view.ImageRadioCell$radioButton$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RadioButton invoke() {
                RadioButton initRadioButton;
                initRadioButton = ImageRadioCell.this.initRadioButton();
                return initRadioButton;
            }
        });
        this.radioButton$delegate = lazy3;
        addView(getImageView(), LayoutHelper.createFrame(30, 30, 8388627, i, 0, i, 0));
        addView(getTextView(), LayoutHelper.createFrame(-1, -1, 51, i + 30 + 11, 0, i, 0));
        addView(getRadioButton(), LayoutHelper.createFrame(22, 22, 53, 0, 14, i + 1, 0));
    }

    private final AppCompatImageView getImageView() {
        return (AppCompatImageView) this.imageView$delegate.getValue();
    }

    private final TextView getTextView() {
        return (TextView) this.textView$delegate.getValue();
    }

    private final RadioButton getRadioButton() {
        return (RadioButton) this.radioButton$delegate.getValue();
    }

    public final void setText(String str, boolean z, boolean z2) {
        getTextView().setText(str);
        getRadioButton().setChecked(z, false);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public final void setImage(Integer num) {
        AppCompatImageView imageView = getImageView();
        Intrinsics.checkNotNull(num);
        imageView.setImageResource(num.intValue());
    }

    public final void setImageUrl(String imageUrl) {
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        ImageViewExtKt.loadFrom$default(getImageView(), imageUrl, Integer.valueOf(C3419R.C3421drawable.fork_bg_white_circle), false, 4, null);
    }

    public final void setTextColor(int i) {
        getTextView().setTextColor(i);
    }

    public final boolean isChecked() {
        return getRadioButton().isChecked();
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(View.MeasureSpec.getSize(i), AndroidUtilities.m72dp(50) + (this.needDivider ? 1 : 0));
        int measuredWidth = ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) - AndroidUtilities.m72dp(34);
        getRadioButton().measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(22), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(22), 1073741824));
        getImageView().measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(30), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(30), 1073741824));
        getTextView().measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.needDivider) {
            canvas.drawLine(LocaleController.isRTL ? BitmapDescriptorFactory.HUE_RED : AndroidUtilities.m72dp(20), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.m72dp(20) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        super.onInitializeAccessibilityNodeInfo(info);
        info.setClassName("android.widget.RadioButton");
        info.setCheckable(true);
        info.setChecked(isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCompatImageView initImageView() {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        appCompatImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return appCompatImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setGravity((LocaleController.isRTL ? 5 : 3) | 16);
        textView.setTextSize(1, 16.0f);
        if (this.dialog) {
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        } else {
            textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RadioButton initRadioButton() {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setSize(AndroidUtilities.m72dp(20));
        if (this.dialog) {
            radioButton.setColor(Theme.getColor(Theme.key_dialogRadioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
        } else {
            radioButton.setColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_radioBackgroundChecked));
        }
        return radioButton;
    }
}
