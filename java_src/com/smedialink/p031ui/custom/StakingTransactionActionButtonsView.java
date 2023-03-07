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
import org.telegram.messenger.C3158R;
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
        bigActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.m1448setupViewData$lambda6$lambda1$lambda0(Callbacks$Callback.this, view);
            }
        });
        AppCompatTextView appCompatTextView = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        appCompatTextView.setVisibility(z2 ? 0 : 8);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.m1449setupViewData$lambda6$lambda3$lambda2(Callbacks$Callback.this, view);
            }
        });
        AppCompatTextView appCompatTextView2 = forkContentStakingTransactionActionsBinding.buttonConditions;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "");
        appCompatTextView2.setVisibility(z && !z2 ? 0 : 8);
        appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.custom.StakingTransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StakingTransactionActionButtonsView.m1450setupViewData$lambda6$lambda5$lambda4(Callbacks$Callback.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupViewData$lambda-6$lambda-1$lambda-0  reason: not valid java name */
    public static final void m1448setupViewData$lambda6$lambda1$lambda0(Callbacks$Callback onActionClickAction, View view) {
        Intrinsics.checkNotNullParameter(onActionClickAction, "$onActionClickAction");
        onActionClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupViewData$lambda-6$lambda-3$lambda-2  reason: not valid java name */
    public static final void m1449setupViewData$lambda6$lambda3$lambda2(Callbacks$Callback onApproveInfoClickAction, View view) {
        Intrinsics.checkNotNullParameter(onApproveInfoClickAction, "$onApproveInfoClickAction");
        onApproveInfoClickAction.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupViewData$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m1450setupViewData$lambda6$lambda5$lambda4(Callbacks$Callback onConditionsClickAction, View view) {
        Intrinsics.checkNotNullParameter(onConditionsClickAction, "$onConditionsClickAction");
        onConditionsClickAction.invoke();
    }

    public final void setupColors() {
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.applyColors();
        AppCompatTextView appCompatTextView = forkContentStakingTransactionActionsBinding.buttonConditions;
        appCompatTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlueText"));
        appCompatTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor("listSelectorSDK21")));
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
        AppCompatTextView appCompatTextView2 = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        appCompatTextView2.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
        appCompatTextView2.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor("listSelectorSDK21")));
    }

    private final void setupView() {
        setupColors();
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.setForcedCustomHeight(36);
        forkContentStakingTransactionActionsBinding.buttonConditions.setText(LocaleController.getInternalString(C3158R.string.staking_deposit_conditions));
        forkContentStakingTransactionActionsBinding.buttonApproveInfo.setText(LocaleController.getInternalString(C3158R.string.wallet_swap_process_what_is_approve));
        addView(this.binding.getRoot());
    }
}
