package com.smedialink.p031ui.custom;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.smedialink.p031ui.smartpanel.extension.ImageViewExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.databinding.ForkContentImageHeaderBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ImageHeaderView.kt */
/* renamed from: com.smedialink.ui.custom.ImageHeaderView */
/* loaded from: classes3.dex */
public final class ImageHeaderView extends FrameLayout {
    private ForkContentImageHeaderBinding binding;
    private final Lazy networkIconCornerSize$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ImageHeaderView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(new ImageHeaderView$networkIconCornerSize$2(this));
        this.networkIconCornerSize$delegate = lazy;
        ForkContentImageHeaderBinding inflate = ForkContentImageHeaderBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    public static /* synthetic */ void setupViewData$default(ImageHeaderView imageHeaderView, int i, Integer num, String str, String str2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        imageHeaderView.setupViewData(i, num, str, str2);
    }

    public final void setupViewData(int i, Integer num, String titleText, String subtitleText) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(subtitleText, "subtitleText");
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        forkContentImageHeaderBinding.imageIcon.setImageResource(i);
        if (num != null) {
            AppCompatImageView setupViewData$lambda$1$lambda$0 = forkContentImageHeaderBinding.imageNetworkIcon;
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$1$lambda$0, "setupViewData$lambda$1$lambda$0");
            ViewExtKt.visible(setupViewData$lambda$1$lambda$0);
            setupViewData$lambda$1$lambda$0.setImageResource(num.intValue());
        }
        forkContentImageHeaderBinding.textTitle.setText(titleText);
        forkContentImageHeaderBinding.textSubtitle.setText(subtitleText);
    }

    public final void setupViewData(String iconUrl, String titleText, String subtitleText) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(subtitleText, "subtitleText");
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView imageIcon = forkContentImageHeaderBinding.imageIcon;
        Intrinsics.checkNotNullExpressionValue(imageIcon, "imageIcon");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        ImageViewExtKt.loadFromWithPlaceholderResId(imageIcon, iconUrl, context, Integer.valueOf(C3301R.C3303drawable.fork_ic_internal_logo), true);
        forkContentImageHeaderBinding.textTitle.setText(titleText);
        forkContentImageHeaderBinding.textSubtitle.setText(subtitleText);
    }

    public final void setupColors() {
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView appCompatImageView = forkContentImageHeaderBinding.imageNetworkIcon;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor("windowBackgroundWhite")));
        materialShapeDrawable.setCornerSize(getNetworkIconCornerSize());
        appCompatImageView.setBackground(materialShapeDrawable);
        AppCompatTextView setupColors$lambda$5$lambda$4 = forkContentImageHeaderBinding.textTitle;
        setupColors$lambda$5$lambda$4.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$4, "setupColors$lambda$5$lambda$4");
        ViewExtKt.withMediumTypeface(setupColors$lambda$5$lambda$4);
        forkContentImageHeaderBinding.textSubtitle.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText"));
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }
}
