package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingTransactionActionsBinding;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: StakingTransactionActionButtonsView.kt */
/* renamed from: com.iMe.ui.custom.StakingTransactionActionButtonsView */
/* loaded from: classes3.dex */
public final class StakingTransactionActionButtonsView extends FrameLayout {
    private ForkContentStakingTransactionActionsBinding binding;
    private final Lazy cornerRadius$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingTransactionActionButtonsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingTransactionActionButtonsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingTransactionActionButtonsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(StakingTransactionActionButtonsView$cornerRadius$2.INSTANCE);
        this.cornerRadius$delegate = lazy;
        ForkContentStakingTransactionActionsBinding inflate = ForkContentStakingTransactionActionsBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    public final void setupViewData(String actionText, boolean z, boolean z2, Callbacks$Callback onActionClickAction, Callbacks$Callback onConditionsClickAction, Callbacks$Callback onApproveInfoClickAction) {
        Intrinsics.checkNotNullParameter(actionText, "actionText");
        Intrinsics.checkNotNullParameter(onActionClickAction, "onActionClickAction");
        Intrinsics.checkNotNullParameter(onConditionsClickAction, "onConditionsClickAction");
        Intrinsics.checkNotNullParameter(onApproveInfoClickAction, "onApproveInfoClickAction");
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        BigActionButton setupViewData$lambda$3$lambda$0 = forkContentStakingTransactionActionsBinding.buttonAction;
        setupViewData$lambda$3$lambda$0.setText(actionText);
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$3$lambda$0, "setupViewData$lambda$3$lambda$0");
        ViewExtKt.setMixedClickListener(setupViewData$lambda$3$lambda$0, new StakingTransactionActionButtonsView$setupViewData$1$1$1(onActionClickAction));
        AppCompatTextView setupViewData$lambda$3$lambda$1 = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$3$lambda$1, "setupViewData$lambda$3$lambda$1");
        setupViewData$lambda$3$lambda$1.setVisibility(z2 ? 0 : 8);
        ViewExtKt.setMixedClickListener(setupViewData$lambda$3$lambda$1, new StakingTransactionActionButtonsView$setupViewData$1$2$1(onApproveInfoClickAction));
        AppCompatTextView setupViewData$lambda$3$lambda$2 = forkContentStakingTransactionActionsBinding.buttonConditions;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$3$lambda$2, "setupViewData$lambda$3$lambda$2");
        setupViewData$lambda$3$lambda$2.setVisibility(z && !z2 ? 0 : 8);
        ViewExtKt.setMixedClickListener(setupViewData$lambda$3$lambda$2, new StakingTransactionActionButtonsView$setupViewData$1$3$1(onConditionsClickAction));
    }

    public final void setupColors() {
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.applyColors();
        AppCompatTextView setupColors$lambda$6$lambda$4 = forkContentStakingTransactionActionsBinding.buttonConditions;
        setupColors$lambda$6$lambda$4.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
        int cornerRadius = getCornerRadius();
        int i = Theme.key_listSelector;
        setupColors$lambda$6$lambda$4.setBackground(Theme.createSimpleSelectorRoundRectDrawable(cornerRadius, 0, Theme.getColor(i)));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$4, "setupColors$lambda$6$lambda$4");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$4);
        AppCompatTextView appCompatTextView = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        appCompatTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        appCompatTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor(i)));
    }

    private final void setupView() {
        setupColors();
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.setForcedCustomHeight(36);
        forkContentStakingTransactionActionsBinding.buttonConditions.setText(LocaleController.getInternalString(C3295R.string.staking_deposit_conditions));
        forkContentStakingTransactionActionsBinding.buttonApproveInfo.setText(LocaleController.getInternalString(C3295R.string.wallet_swap_process_what_is_approve));
        addView(this.binding.getRoot());
    }
}
