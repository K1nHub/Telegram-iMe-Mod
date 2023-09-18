package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkContentNetworkCellBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ImageTextCheckCell.kt */
/* renamed from: com.iMe.ui.custom.ImageTextCheckCell */
/* loaded from: classes4.dex */
public final class ImageTextCheckCell extends FrameLayout {
    private final ForkContentNetworkCellBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageTextCheckCell(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ImageTextCheckCell(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageTextCheckCell(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentNetworkCellBinding inflate = ForkContentNetworkCellBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setCustomCheckResId(int i) {
        this.binding.imageCheck.setImageResource(i);
    }

    public final void setupViewData(String name, String str, Integer num, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(name, "name");
        ForkContentNetworkCellBinding forkContentNetworkCellBinding = this.binding;
        forkContentNetworkCellBinding.textNetwork.setText(name);
        AppCompatImageView setupViewData$lambda$1$lambda$0 = forkContentNetworkCellBinding.imageNetwork;
        if (str != null) {
            Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$1$lambda$0, "setupViewData$lambda$1$lambda$0");
            ImageViewExtKt.loadFrom$default(setupViewData$lambda$1$lambda$0, str, null, false, 6, null);
        } else if (num != null) {
            setupViewData$lambda$1$lambda$0.setImageResource(num.intValue());
        }
        AppCompatImageView imageCheck = forkContentNetworkCellBinding.imageCheck;
        Intrinsics.checkNotNullExpressionValue(imageCheck, "imageCheck");
        imageCheck.setVisibility(z ? 0 : 8);
        DividerView divider = forkContentNetworkCellBinding.divider;
        Intrinsics.checkNotNullExpressionValue(divider, "divider");
        divider.setVisibility(z2 ? 0 : 8);
    }

    public final void setupColors() {
        ForkContentNetworkCellBinding forkContentNetworkCellBinding = this.binding;
        forkContentNetworkCellBinding.textNetwork.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        AppCompatImageView imageCheck = forkContentNetworkCellBinding.imageCheck;
        Intrinsics.checkNotNullExpressionValue(imageCheck, "imageCheck");
        ImageViewExtKt.setImageColor(imageCheck, Theme.getColor(Theme.key_windowBackgroundWhiteBlueIcon));
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }
}
