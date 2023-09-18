package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkContentDetailsIconCellBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: DetailsIconCellView.kt */
/* renamed from: com.iMe.ui.custom.DetailsIconCellView */
/* loaded from: classes4.dex */
public final class DetailsIconCellView extends FrameLayout {
    private ForkContentDetailsIconCellBinding binding;
    private boolean isIconTinted;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DetailsIconCellView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DetailsIconCellView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetailsIconCellView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.isIconTinted = true;
        ForkContentDetailsIconCellBinding inflate = ForkContentDetailsIconCellBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setIconTinted(boolean z) {
        this.isIconTinted = z;
    }

    public static /* synthetic */ void setupViewData$default(DetailsIconCellView detailsIconCellView, String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z = false;
        }
        detailsIconCellView.setupViewData(str, str2, i, z);
    }

    public final void setupViewData(String titleText, String valueText, int i, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(valueText, "valueText");
        ForkContentDetailsIconCellBinding forkContentDetailsIconCellBinding = this.binding;
        forkContentDetailsIconCellBinding.textTitle.setText(titleText);
        forkContentDetailsIconCellBinding.textValue.setText(valueText);
        forkContentDetailsIconCellBinding.imageIcon.setImageResource(i);
        DividerView divider = forkContentDetailsIconCellBinding.divider;
        Intrinsics.checkNotNullExpressionValue(divider, "divider");
        divider.setVisibility(z ? 0 : 8);
    }

    public final void setupViewData(String titleText, String valueText, String iconUrl, boolean z) {
        Intrinsics.checkNotNullParameter(titleText, "titleText");
        Intrinsics.checkNotNullParameter(valueText, "valueText");
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        ForkContentDetailsIconCellBinding forkContentDetailsIconCellBinding = this.binding;
        forkContentDetailsIconCellBinding.textTitle.setText(titleText);
        forkContentDetailsIconCellBinding.textValue.setText(valueText);
        AppCompatImageView imageIcon = forkContentDetailsIconCellBinding.imageIcon;
        Intrinsics.checkNotNullExpressionValue(imageIcon, "imageIcon");
        ImageViewExtKt.loadFrom$default(imageIcon, iconUrl, null, false, 2, null);
        DividerView divider = forkContentDetailsIconCellBinding.divider;
        Intrinsics.checkNotNullExpressionValue(divider, "divider");
        divider.setVisibility(z ? 0 : 8);
    }

    public final void setupColors() {
        ForkContentDetailsIconCellBinding forkContentDetailsIconCellBinding = this.binding;
        forkContentDetailsIconCellBinding.textTitle.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText));
        AppCompatTextView setupColors$lambda$4$lambda$2 = forkContentDetailsIconCellBinding.textValue;
        setupColors$lambda$4$lambda$2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$2, "setupColors$lambda$4$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$2);
        AppCompatImageView setupColors$lambda$4$lambda$3 = forkContentDetailsIconCellBinding.imageIcon;
        if (this.isIconTinted) {
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
            ImageViewExtKt.setImageColor(setupColors$lambda$4$lambda$3, Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        } else {
            setupColors$lambda$4$lambda$3.clearColorFilter();
        }
        forkContentDetailsIconCellBinding.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
    }

    private final void setupView() {
        setupColors();
        addView(this.binding.getRoot());
    }
}
