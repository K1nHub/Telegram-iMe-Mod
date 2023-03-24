package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentStakingTransactionActionsBinding;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: StakingTransactionActionButtonsView.kt */
/* renamed from: com.smedialink.ui.custom.StakingTransactionActionButtonsView */
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

    public final void setupViewData(String actionText, boolean z, boolean z2, final Callbacks$Callback onActionClickAction, final Callbacks$Callback onConditionsClickAction, final Callbacks$Callback onApproveInfoClickAction) {
        Intrinsics.checkNotNullParameter(actionText, "actionText");
        Intrinsics.checkNotNullParameter(onActionClickAction, "onActionClickAction");
        Intrinsics.checkNotNullParameter(onConditionsClickAction, "onConditionsClickAction");
        Intrinsics.checkNotNullParameter(onApproveInfoClickAction, "onApproveInfoClickAction");
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        BigActionButton bigActionButton = forkContentStakingTransactionActionsBinding.buttonAction;
        bigActionButton.setText(actionText);
        bigActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.setupViewData$lambda$6$lambda$1$lambda$0(Callbacks$Callback.this, view);
            }
        });
        AppCompatTextView setupViewData$lambda$6$lambda$3 = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$6$lambda$3, "setupViewData$lambda$6$lambda$3");
        setupViewData$lambda$6$lambda$3.setVisibility(z2 ? 0 : 8);
        setupViewData$lambda$6$lambda$3.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.setupViewData$lambda$6$lambda$3$lambda$2(Callbacks$Callback.this, view);
            }
        });
        AppCompatTextView setupViewData$lambda$6$lambda$5 = forkContentStakingTransactionActionsBinding.buttonConditions;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$6$lambda$5, "setupViewData$lambda$6$lambda$5");
        setupViewData$lambda$6$lambda$5.setVisibility(z && !z2 ? 0 : 8);
        setupViewData$lambda$6$lambda$5.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.setupViewData$lambda$6$lambda$5$lambda$4(Callbacks$Callback.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$6$lambda$1$lambda$0(Callbacks$Callback onActionClickAction, View view) {
        Intrinsics.checkNotNullParameter(onActionClickAction, "$onActionClickAction");
        onActionClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$6$lambda$3$lambda$2(Callbacks$Callback onApproveInfoClickAction, View view) {
        Intrinsics.checkNotNullParameter(onApproveInfoClickAction, "$onApproveInfoClickAction");
        onApproveInfoClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$6$lambda$5$lambda$4(Callbacks$Callback onConditionsClickAction, View view) {
        Intrinsics.checkNotNullParameter(onConditionsClickAction, "$onConditionsClickAction");
        onConditionsClickAction.invoke();
    }

    public final void setupColors() {
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.applyColors();
        AppCompatTextView setupColors$lambda$9$lambda$7 = forkContentStakingTransactionActionsBinding.buttonConditions;
        setupColors$lambda$9$lambda$7.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText"));
        setupColors$lambda$9$lambda$7.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor("listSelectorSDK21")));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$9$lambda$7, "setupColors$lambda$9$lambda$7");
        ViewExtKt.withMediumTypeface(setupColors$lambda$9$lambda$7);
        AppCompatTextView appCompatTextView = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        appCompatTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
        appCompatTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor("listSelectorSDK21")));
    }

    private final void setupView() {
        setupColors();
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.setForcedCustomHeight(36);
        forkContentStakingTransactionActionsBinding.buttonConditions.setText(LocaleController.getInternalString(C3301R.string.staking_deposit_conditions));
        forkContentStakingTransactionActionsBinding.buttonApproveInfo.setText(LocaleController.getInternalString(C3301R.string.wallet_swap_process_what_is_approve));
        addView(this.binding.getRoot());
    }
}
