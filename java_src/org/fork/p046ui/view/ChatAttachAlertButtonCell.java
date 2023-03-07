package org.fork.p046ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.ChatAttachAlertButton;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CheckBoxSquare;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: ChatAttachAlertButtonCell.kt */
/* renamed from: org.fork.ui.view.ChatAttachAlertButtonCell */
/* loaded from: classes4.dex */
public final class ChatAttachAlertButtonCell extends LinearLayout {
    private final CheckBoxSquare checkBox;
    private final RLottieImageView lottieImageView;
    private boolean needDivider;
    private final TextView titleView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatAttachAlertButtonCell(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        RLottieImageView initLottieImageView = initLottieImageView();
        this.lottieImageView = initLottieImageView;
        TextView initTitleView = initTitleView();
        this.titleView = initTitleView;
        CheckBoxSquare initCheckBox = initCheckBox();
        this.checkBox = initCheckBox;
        addView(initLottieImageView, LayoutHelper.createLinear(36, 36, 16, 10, 0, 10, 0));
        addView(initTitleView, LayoutHelper.createLinear(0, -1, 1.0f, 16));
        addView(initCheckBox, LayoutHelper.createLinear(18, 18, 16, 0, 0, 21, 0));
        setClipChildren(false);
    }

    public final RLottieImageView getLottieImageView() {
        return this.lottieImageView;
    }

    public final boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public final void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public final void setButton(ChatAttachAlertButton button, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.titleView.setText(button.getTitle());
        this.lottieImageView.setAnimation(button.getIconResId(), 26, 26);
        this.lottieImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m50dp(46), Theme.getColor(button.getColorKey())));
        this.checkBox.setChecked(z, false);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48) + (this.needDivider ? 1 : 0), 1073741824));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.needDivider) {
            float measuredHeight = getMeasuredHeight() - 1.0f;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), measuredHeight, Theme.dividerPaint);
        }
    }

    private final RLottieImageView initLottieImageView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        return rLottieImageView;
    }

    private final TextView initTitleView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        textView.setGravity(8388627);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setTextSize(1, 16.0f);
        return textView;
    }

    private final CheckBoxSquare initCheckBox() {
        return new CheckBoxSquare(getContext(), false);
    }
}
