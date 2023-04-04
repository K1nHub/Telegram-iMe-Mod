package com.iMe.fork.p025ui.view;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.CheckBox2;
import org.telegram.p048ui.Components.CheckBoxBase;
import org.telegram.p048ui.Components.LayoutHelper;
/* compiled from: CircleCheckCell.kt */
/* renamed from: com.iMe.fork.ui.view.CircleCheckCell */
/* loaded from: classes3.dex */
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

    public final ImageView.ScaleType getIconScaleType() {
        return this.iconScaleType;
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
        lazy = LazyKt__LazyJVMKt.lazy(new CircleCheckCell$circleView$2(this));
        this.circleView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new CircleCheckCell$iconView$2(this));
        this.iconView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new CircleCheckCell$nameTextView$2(this));
        this.nameTextView$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new CircleCheckCell$checkBox$2(this));
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

    private final ImageView getIconView() {
        return (ImageView) this.iconView$delegate.getValue();
    }

    private final TextView getNameTextView() {
        return (TextView) this.nameTextView$delegate.getValue();
    }

    private final CheckBox2 getCheckBox() {
        return (CheckBox2) this.checkBox$delegate.getValue();
    }

    public final void setData(int i, int i2, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        getNameTextView().setText(name);
        getIconView().setImageResource(i2);
        View circleView = getCircleView();
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(i);
        circleView.setBackground(gradientDrawable);
    }

    private final void init() {
        addView(getCircleView(), LayoutHelper.createFrame(62, 62, 1, 0, 7, 0, 0));
        ImageView iconView = getIconView();
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
    public final ImageView initIconView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(this.iconScaleType);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView initNameTextView() {
        TextView textView = new TextView(getContext());
        textView.setAllCaps(true);
        textView.setMaxLines(2);
        textView.setGravity(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextColor(Theme.getColor("dialogTextBlack"));
        textView.setTextSize(1, 11.0f);
        textView.setLines(2);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CheckBox2 initCheckBox() {
        final CheckBox2 checkBox2 = new CheckBox2(getContext(), 21);
        checkBox2.setColor(null, "dialogBackground", "dialogRoundCheckBoxCheck");
        checkBox2.setDrawUnchecked(false);
        checkBox2.setDrawBackgroundAsArc(4);
        checkBox2.setProgressDelegate(new CheckBoxBase.ProgressDelegate() { // from class: com.iMe.fork.ui.view.CircleCheckCell$$ExternalSyntheticLambda0
            @Override // org.telegram.p048ui.Components.CheckBoxBase.ProgressDelegate
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
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
