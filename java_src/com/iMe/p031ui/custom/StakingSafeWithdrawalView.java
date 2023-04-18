package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingSafeWithdrawalBinding;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.CheckBoxSquare;
/* compiled from: StakingSafeWithdrawalView.kt */
/* renamed from: com.iMe.ui.custom.StakingSafeWithdrawalView */
/* loaded from: classes3.dex */
public final class StakingSafeWithdrawalView extends FrameLayout {
    private ForkContentStakingSafeWithdrawalBinding binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingSafeWithdrawalView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingSafeWithdrawalView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingSafeWithdrawalView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        ForkContentStakingSafeWithdrawalBinding inflate = ForkContentStakingSafeWithdrawalBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    public final void setupViewData(boolean z, Callbacks$Callback1<Boolean> onCheckedAction, Callbacks$Callback onInfoClickAction) {
        Intrinsics.checkNotNullParameter(onCheckedAction, "onCheckedAction");
        Intrinsics.checkNotNullParameter(onInfoClickAction, "onInfoClickAction");
        ForkContentStakingSafeWithdrawalBinding forkContentStakingSafeWithdrawalBinding = this.binding;
        CheckBoxSquare checkBoxSquare = forkContentStakingSafeWithdrawalBinding.checkboxSafeWithdrawal;
        checkBoxSquare.setChecked(z, false);
        LinearLayoutCompat linearSafeWithdrawal = forkContentStakingSafeWithdrawalBinding.linearSafeWithdrawal;
        Intrinsics.checkNotNullExpressionValue(linearSafeWithdrawal, "linearSafeWithdrawal");
        ViewExtKt.setMixedClickListener(linearSafeWithdrawal, new StakingSafeWithdrawalView$setupViewData$1$1$1(checkBoxSquare, onCheckedAction));
        AppCompatImageView imageHelp = forkContentStakingSafeWithdrawalBinding.imageHelp;
        Intrinsics.checkNotNullExpressionValue(imageHelp, "imageHelp");
        ViewExtKt.setMixedClickListener(imageHelp, new StakingSafeWithdrawalView$setupViewData$1$2(onInfoClickAction));
    }

    public final void setupColors() {
        ForkContentStakingSafeWithdrawalBinding forkContentStakingSafeWithdrawalBinding = this.binding;
        forkContentStakingSafeWithdrawalBinding.checkboxSafeWithdrawal.setColors("checkboxSquareUnchecked", "checkboxSquareBackground", "checkboxSquareCheck");
        forkContentStakingSafeWithdrawalBinding.textSafeWithdrawal.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        AppCompatImageView setupColors$lambda$3$lambda$2 = forkContentStakingSafeWithdrawalBinding.imageHelp;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$3$lambda$2, "setupColors$lambda$3$lambda$2");
        ViewExtKt.setImageColor(setupColors$lambda$3$lambda$2, Theme.getColor("windowBackgroundWhiteGrayIcon"));
        ViewExtKt.setBoundedCircleRippleBackground(setupColors$lambda$3$lambda$2);
    }

    private final void setupView() {
        setupColors();
        this.binding.textSafeWithdrawal.setText(LocaleController.getInternalString(C3242R.string.staking_withdraw_safe_withdrawal));
        addView(this.binding.getRoot());
    }
}
