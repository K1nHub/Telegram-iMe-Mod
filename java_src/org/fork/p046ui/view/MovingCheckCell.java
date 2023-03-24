package org.fork.p046ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CheckBoxSquare;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: MovingCheckCell.kt */
/* renamed from: org.fork.ui.view.MovingCheckCell */
/* loaded from: classes4.dex */
public final class MovingCheckCell extends FrameLayout {
    private final CheckBoxSquare checkBox;
    private final AppCompatImageView iconView;
    private final ImageView moveIconView;
    private boolean needDivider;
    private final TextView secondTitleView;
    private final TextView subtitleView;
    private final LinearLayout titleContainer;
    private final TextView titleView;

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovingCheckCell(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        AppCompatImageView initIconView = initIconView();
        this.iconView = initIconView;
        ImageView initMoveIconView = initMoveIconView();
        this.moveIconView = initMoveIconView;
        LinearLayout initTitleContainer = initTitleContainer();
        this.titleContainer = initTitleContainer;
        TextView initTitleView = initTitleView();
        this.titleView = initTitleView;
        TextView initSecondTitleView = initSecondTitleView();
        this.secondTitleView = initSecondTitleView;
        TextView initSubtitleView = initSubtitleView();
        this.subtitleView = initSubtitleView;
        CheckBoxSquare initCheckBox = initCheckBox();
        this.checkBox = initCheckBox;
        addView(initMoveIconView, LayoutHelper.createFrame(48, 48, 8388627, 6, 0, 6, 0));
        addView(initIconView, LayoutHelper.createFrame(-2, -2, 8388627, 60, 0, 0, 0));
        initTitleContainer.addView(initTitleView, LayoutHelper.createFrame(-2, -1));
        initTitleContainer.addView(initSecondTitleView, LayoutHelper.createLinear(-2, -1, 10, 0, 0, 0));
        addView(initTitleContainer, LayoutHelper.createFrame(-1, -1, 8388659, 60, 0, 60, 0));
        addView(initSubtitleView, LayoutHelper.createFrame(-2, -2, 8388691, 60, 0, 60, 10));
        addView(initCheckBox, LayoutHelper.createFrame(18, 18, 8388629, 21, 0, 21, 0));
        setClipChildren(false);
    }

    public final AppCompatImageView getIconView() {
        return this.iconView;
    }

    public final boolean isChecked() {
        return this.checkBox.isChecked();
    }

    public final void setChecked(boolean z) {
        this.checkBox.setChecked(z, true);
    }

    public final void setTextAndCheck(String text, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.titleView.setText(text);
        setFullHeightTitleView(true);
        ViewExtKt.gone(this.subtitleView);
        this.checkBox.setChecked(z, false);
        this.needDivider = z2;
        setWillNotDraw(true ^ z2);
    }

    public final void setTextAndValueAndCheck(String text, String value, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(value, "value");
        this.titleView.setText(text);
        setFullHeightTitleView(false);
        this.subtitleView.setText(value);
        ViewExtKt.visible(this.subtitleView);
        this.checkBox.setChecked(z, false);
        this.needDivider = z2;
        setWillNotDraw(!z2);
    }

    public final void setSecondText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.secondTitleView.setText(text);
    }

    public final void setImage(Bitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        AppCompatImageView appCompatImageView = this.iconView;
        ViewExtKt.visible(appCompatImageView);
        appCompatImageView.setImageBitmap(image);
        updateLeftMargins();
    }

    public static /* synthetic */ void setIcon$default(MovingCheckCell movingCheckCell, int i, String str, PorterDuff.Mode mode, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        if ((i2 & 4) != 0) {
            mode = null;
        }
        movingCheckCell.setIcon(i, str, mode);
    }

    public final void setIcon(int i, String str, PorterDuff.Mode mode) {
        ViewExtKt.visible(this.iconView);
        if (str != null && mode != null) {
            this.iconView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(str), mode));
        } else {
            this.iconView.clearColorFilter();
        }
        this.iconView.setImageResource(i);
        updateLeftMargins();
    }

    private final void updateLeftMargins() {
        List<View> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new View[]{this.titleContainer, this.subtitleView});
        for (View view : listOf) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.leftMargin = AndroidUtilities.m50dp(108);
            view.setLayoutParams(layoutParams2);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(this.subtitleView.getVisibility() == 0 ? 64 : 48) + (this.needDivider ? 1 : 0), 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.needDivider) {
            float measuredHeight = getMeasuredHeight() - 1.0f;
            canvas.drawLine(AndroidUtilities.m50dp(60), measuredHeight, getMeasuredWidth(), measuredHeight, Theme.dividerPaint);
        }
    }

    private final ImageView initMoveIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setFocusable(false);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor("stickers_menu"), PorterDuff.Mode.MULTIPLY));
        imageView.setClickable(true);
        imageView.setImageResource(C3301R.C3303drawable.list_reorder);
        return imageView;
    }

    private final LinearLayout initTitleContainer() {
        return new LinearLayout(getContext());
    }

    private final AppCompatImageView initIconView() {
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        appCompatImageView.setVisibility(8);
        appCompatImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        return appCompatImageView;
    }

    private final TextView initTitleView() {
        TextView textView = new TextView(getContext());
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setGravity(8388627);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        return textView;
    }

    private final TextView initSecondTitleView() {
        TextView textView = new TextView(getContext());
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setGravity(8388627);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        textView.setTextSize(1, 16.0f);
        textView.setLines(1);
        return textView;
    }

    private final TextView initSubtitleView() {
        TextView textView = new TextView(getContext());
        textView.setGravity(8388611);
        textView.setMaxLines(1);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        textView.setTextSize(1, 13.0f);
        textView.setLines(1);
        return textView;
    }

    private final CheckBoxSquare initCheckBox() {
        return new CheckBoxSquare(getContext(), false);
    }

    private final void setFullHeightTitleView(boolean z) {
        LinearLayout linearLayout = this.titleContainer;
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.height = z ? -1 : -2;
        layoutParams2.topMargin = z ? 0 : AndroidUtilities.m50dp(10);
        linearLayout.setLayoutParams(layoutParams2);
    }

    /* compiled from: MovingCheckCell.kt */
    /* renamed from: org.fork.ui.view.MovingCheckCell$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
