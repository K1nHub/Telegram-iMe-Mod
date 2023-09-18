package com.iMe.fork.p024ui.view;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.utils.extentions.model.filter.FilterFabExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CheckBox2;
import org.telegram.p043ui.Components.CheckBoxBase;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: CircleCheckCell.kt */
/* renamed from: com.iMe.fork.ui.view.CircleCheckCell */
/* loaded from: classes4.dex */
public abstract class CircleCheckCell extends FrameLayout {
    private final Lazy checkBox$delegate;
    private final Lazy circleView$delegate;
    private final ImageView.ScaleType iconScaleType;
    private final int iconSize;
    private final Lazy iconView$delegate;
    private final Lazy nameTextView$delegate;

    static {
        new Companion(null);
    }

    public final int getIconSize() {
        return this.iconSize;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircleCheckCell(Context context, int i, ImageView.ScaleType iconScaleType) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(iconScaleType, "iconScaleType");
        this.iconSize = i;
        this.iconScaleType = iconScaleType;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<View>() { // from class: com.iMe.fork.ui.view.CircleCheckCell$circleView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View initCircleView;
                initCircleView = CircleCheckCell.this.initCircleView();
                return initCircleView;
            }
        });
        this.circleView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<RLottieImageView>() { // from class: com.iMe.fork.ui.view.CircleCheckCell$iconView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final RLottieImageView invoke() {
                RLottieImageView initIconView;
                initIconView = CircleCheckCell.this.initIconView();
                return initIconView;
            }
        });
        this.iconView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TextView>() { // from class: com.iMe.fork.ui.view.CircleCheckCell$nameTextView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TextView invoke() {
                TextView initNameTextView;
                initNameTextView = CircleCheckCell.this.initNameTextView();
                return initNameTextView;
            }
        });
        this.nameTextView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<CheckBox2>() { // from class: com.iMe.fork.ui.view.CircleCheckCell$checkBox$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CheckBox2 invoke() {
                CheckBox2 initCheckBox;
                initCheckBox = CircleCheckCell.this.initCheckBox();
                return initCheckBox;
            }
        });
        this.checkBox$delegate = lazy4;
        init();
    }

    public final boolean isChecked() {
        return getCheckBox().isChecked();
    }

    public final void setChecked(boolean z) {
        getCheckBox().setChecked(z, true);
    }

    private final View getCircleView() {
        return (View) this.circleView$delegate.getValue();
    }

    private final RLottieImageView getIconView() {
        return (RLottieImageView) this.iconView$delegate.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.nameTextView$delegate.getValue();
    }

    private final CheckBox2 getCheckBox() {
        return (CheckBox2) this.checkBox$delegate.getValue();
    }

    public final void setColor(int i) {
        View circleView = getCircleView();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        circleView.setBackground(gradientDrawable);
    }

    public final void setIcon(int i) {
        getIconView().setImageResource(i);
    }

    public final void setFabIcon(FilterFab fab) {
        Intrinsics.checkNotNullParameter(fab, "fab");
        FilterFabExtKt.bindBig(fab, getIconView());
    }

    public final void setName(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        getNameTextView().setText(name);
    }

    private final void init() {
        addView(getCircleView(), LayoutHelper.createFrame(62, 62, 1, 0, 7, 0, 0));
        RLottieImageView iconView = getIconView();
        int i = this.iconSize;
        addView(iconView, LayoutHelper.createFrame(i, i, 1, 0, ((62 - i) / 2) + 7, 0, 0));
        addView(getNameTextView(), LayoutHelper.createFrame(-1, -2, 3, 6, 72, 6, 0));
        addView(getCheckBox(), LayoutHelper.createFrame(24, 24, 1, 19, 48, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final View initCircleView() {
        return new View(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RLottieImageView initIconView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        rLottieImageView.setScaleType(this.iconScaleType);
        return rLottieImageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initNameTextView() {
        TextView textView = new TextView(getContext());
        textView.setAllCaps(true);
        textView.setMaxLines(2);
        textView.setGravity(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 11.0f);
        textView.setLines(2);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CheckBox2 initCheckBox() {
        final CheckBox2 checkBox2 = new CheckBox2(getContext(), 21);
        checkBox2.setColor(-1, Theme.key_dialogBackground, Theme.key_dialogRoundCheckBoxCheck);
        checkBox2.setDrawUnchecked(false);
        checkBox2.setDrawBackgroundAsArc(4);
        checkBox2.setProgressDelegate(new CheckBoxBase.ProgressDelegate() { // from class: com.iMe.fork.ui.view.CircleCheckCell$$ExternalSyntheticLambda0
            @Override // org.telegram.p043ui.Components.CheckBoxBase.ProgressDelegate
            public final void setProgress(float f) {
                CircleCheckCell.initCheckBox$lambda$4$lambda$3(CheckBox2.this, this, f);
            }
        });
        return checkBox2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initCheckBox$lambda$4$lambda$3(CheckBox2 this_apply, CircleCheckCell this$0, float f) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        float progress = 1.0f - (this_apply.getProgress() * 0.143f);
        this$0.getCircleView().setScaleX(progress);
        this$0.getCircleView().setScaleY(progress);
    }

    /* compiled from: CircleCheckCell.kt */
    /* renamed from: com.iMe.fork.ui.view.CircleCheckCell$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
