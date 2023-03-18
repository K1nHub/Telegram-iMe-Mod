package org.fork.p046ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.models.SortingTabState;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CheckBoxSquare;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: SortingFilterCell.kt */
/* renamed from: org.fork.ui.view.SortingFilterCell */
/* loaded from: classes4.dex */
public final class SortingFilterCell extends LinearLayout {
    private final Lazy checkBox$delegate;
    private final Lazy checkBoxLayout$delegate;
    private final Lazy fabsLayout$delegate;
    private final Lazy fabsView$delegate;
    private final Lazy iconView$delegate;
    private boolean needDivider;
    private Runnable onFabsClick;
    private final Lazy textView$delegate;
    private final Lazy verticalDivider$delegate;

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFabsClick$lambda$0() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortingFilterCell(Context context) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Intrinsics.checkNotNullParameter(context, "context");
        this.onFabsClick = SortingFilterCell$$ExternalSyntheticLambda1.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$checkBox$2(this));
        this.checkBox$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$iconView$2(this));
        this.iconView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$textView$2(this));
        this.textView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$checkBoxLayout$2(this));
        this.checkBoxLayout$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$verticalDivider$2(this));
        this.verticalDivider$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$fabsLayout$2(this));
        this.fabsLayout$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new SortingFilterCell$fabsView$2(this));
        this.fabsView$delegate = lazy7;
        setGravity(16);
        addView(getCheckBoxLayout(), LayoutHelper.createLinear(0, -1, 1.0f));
        addView(getVerticalDivider(), LayoutHelper.createLinear(1, 24));
        addView(getFabsLayout(), LayoutHelper.createLinear(-2, -1));
    }

    public final boolean isChecked() {
        return getCheckBox().isChecked();
    }

    public final void setChecked(boolean z) {
        getCheckBox().setChecked(z, true);
    }

    public final Runnable getOnFabsClick() {
        return this.onFabsClick;
    }

    public final void setOnFabsClick(Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "<set-?>");
        this.onFabsClick = runnable;
    }

    private final CheckBoxSquare getCheckBox() {
        return (CheckBoxSquare) this.checkBox$delegate.getValue();
    }

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    private final TextView getTextView() {
        return (TextView) this.textView$delegate.getValue();
    }

    private final LinearLayout getCheckBoxLayout() {
        return (LinearLayout) this.checkBoxLayout$delegate.getValue();
    }

    private final View getVerticalDivider() {
        return (View) this.verticalDivider$delegate.getValue();
    }

    private final FrameLayout getFabsLayout() {
        return (FrameLayout) this.fabsLayout$delegate.getValue();
    }

    private final FabsView getFabsView() {
        return (FabsView) this.fabsView$delegate.getValue();
    }

    public final void setState(SortingTabState state, boolean z) {
        Intrinsics.checkNotNullParameter(state, "state");
        getCheckBox().setChecked(state.isEnabled(), false);
        getIconView().setImageResource(state.getType().getDefaultIconResId());
        getTextView().setText(LocaleController.getInternalString(state.getType().getTitleResId()));
        getFabsView().setFabs(state.getFabs());
        this.needDivider = z;
        setWillNotDraw(!z);
        updateColors();
    }

    public final void setFabsVisible(boolean z) {
        getVerticalDivider().setVisibility(z ? 0 : 8);
        getFabsLayout().setVisibility(z ? 0 : 8);
        getFabsLayout().setClickable(z);
    }

    public final boolean checkFabTouch(float f) {
        return (getCheckBoxLayout().getVisibility() == 0) && f > ((float) getCheckBoxLayout().getRight());
    }

    public final void updateColors() {
        setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        getCheckBoxLayout().setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
        getFabsLayout().setBackground(Theme.createSelectorDrawable(Theme.getColor("listSelectorSDK21"), 2));
        getCheckBox().invalidate();
        getIconView().setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionBackground"), PorterDuff.Mode.SRC_IN));
        getTextView().setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        getFabsView().updateColors();
        getVerticalDivider().setBackgroundColor(Theme.getColor("divider"));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m50dp(48), 1073741824));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.needDivider) {
            float measuredHeight = getMeasuredHeight() - 1.0f;
            canvas.drawLine(BitmapDescriptorFactory.HUE_RED, measuredHeight, getMeasuredWidth(), measuredHeight, Theme.dividerPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CheckBoxSquare initCheckBox() {
        return new CheckBoxSquare(getContext(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initTextView() {
        TextView textView = new TextView(getContext());
        ViewExtKt.singleLine(textView);
        textView.setGravity(16);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextSize(1, 16.0f);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout initCheckBoxLayout() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.addView(getCheckBox(), LayoutHelper.createLinear(18, 18, 16, 21, 0, 0, 0));
        linearLayout.addView(getIconView(), LayoutHelper.createLinear(34, 34, 16, 23, 0, 17, 0));
        linearLayout.addView(getTextView(), LayoutHelper.createLinear(-1, -1, 16));
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initVerticalDivider() {
        return new View(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initFabsLayout() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.addView(getFabsView(), LayoutHelper.createFrame(-2, -2, 17, 21, 0, 21, 0));
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.fork.ui.view.SortingFilterCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SortingFilterCell.initFabsLayout$lambda$5$lambda$4(SortingFilterCell.this, view);
            }
        });
        return frameLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFabsLayout$lambda$5$lambda$4(SortingFilterCell this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFabsClick.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FabsView initFabsView() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new FabsView(context);
    }

    /* compiled from: SortingFilterCell.kt */
    /* renamed from: org.fork.ui.view.SortingFilterCell$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
