package com.iMe.p031ui.custom;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.databinding.ForkContentImageHeaderBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ImageHeaderView.kt */
/* renamed from: com.iMe.ui.custom.ImageHeaderView */
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

    public final void setupViewData(String str, Integer num, String str2, String titleText, String subtitleText) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(subtitleText, "subtitleText");
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView setupViewData$lambda$2$lambda$0 = forkContentImageHeaderBinding.imageIcon;
        if (str != null) {
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$2$lambda$0, "setupViewData$lambda$2$lambda$0");
            ImageViewExtKt.loadFrom$default(setupViewData$lambda$2$lambda$0, str, null, false, 6, null);
        } else if (num != null) {
            setupViewData$lambda$2$lambda$0.setImageResource(num.intValue());
        }
        if (str2 != null) {
            AppCompatImageView setupViewData$lambda$2$lambda$1 = forkContentImageHeaderBinding.imageNetworkIcon;
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$2$lambda$1, "setupViewData$lambda$2$lambda$1");
            ViewExtKt.visible$default(setupViewData$lambda$2$lambda$1, false, 1, null);
            ImageViewExtKt.loadFrom$default(setupViewData$lambda$2$lambda$1, str2, null, false, 6, null);
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
        ImageViewExtKt.loadFrom$default(imageIcon, iconUrl, Integer.valueOf(C3417R.C3419drawable.fork_ic_internal_logo), false, 4, null);
        forkContentImageHeaderBinding.textTitle.setText(titleText);
        forkContentImageHeaderBinding.textSubtitle.setText(subtitleText);
    }

    public final void setupColors() {
        ForkContentImageHeaderBinding forkContentImageHeaderBinding = this.binding;
        AppCompatImageView appCompatImageView = forkContentImageHeaderBinding.imageNetworkIcon;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_windowBackgroundWhite)));
        materialShapeDrawable.setCornerSize(getNetworkIconCornerSize());
        appCompatImageView.setBackground(materialShapeDrawable);
        AppCompatTextView setupColors$lambda$6$lambda$5 = forkContentImageHeaderBinding.textTitle;
        setupColors$lambda$6$lambda$5.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$5, "setupColors$lambda$6$lambda$5");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$5);
        forkContentImageHeaderBinding.textSubtitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }
}
