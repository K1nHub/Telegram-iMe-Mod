package com.iMe.p030ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkContentStakingTransactionActionsBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TransactionActionButtonsView.kt */
/* renamed from: com.iMe.ui.custom.TransactionActionButtonsView */
/* loaded from: classes3.dex */
public final class TransactionActionButtonsView extends FrameLayout implements KoinComponent {
    private ForkContentStakingTransactionActionsBinding binding;
    private final Lazy cornerRadius$delegate;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransactionActionButtonsView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransactionActionButtonsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$2() {
    }

    public /* synthetic */ TransactionActionButtonsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionActionButtonsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        this.resourceManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$cornerRadius$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(AndroidUtilities.m105dp(4.0f));
            }
        });
        this.cornerRadius$delegate = lazy2;
        ForkContentStakingTransactionActionsBinding inflate = ForkContentStakingTransactionActionsBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(\n        LayoutI…later.from(context)\n    )");
        this.binding = inflate;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final int getCornerRadius() {
        return ((Number) this.cornerRadius$delegate.getValue()).intValue();
    }

    public final void performActionButtonClick() {
        this.binding.buttonAction.performClick();
    }

    public final void setupViewData(String actionText, boolean z, boolean z2, boolean z3, final Callbacks$Callback onActionClickAction, final Callbacks$Callback onConditionsClickAction, final Callbacks$Callback onApproveInfoClickAction) {
        Intrinsics.checkNotNullParameter(actionText, "actionText");
        Intrinsics.checkNotNullParameter(onActionClickAction, "onActionClickAction");
        Intrinsics.checkNotNullParameter(onConditionsClickAction, "onConditionsClickAction");
        Intrinsics.checkNotNullParameter(onApproveInfoClickAction, "onApproveInfoClickAction");
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        BigActionButton setupViewData$lambda$6$lambda$3 = forkContentStakingTransactionActionsBinding.buttonAction;
        setupViewData$lambda$6$lambda$3.setText(actionText);
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$6$lambda$3, "setupViewData$lambda$6$lambda$3");
        ViewExtKt.safeThrottledClick$default(setupViewData$lambda$6$lambda$3, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$setupViewData$4$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Callbacks$Callback.this.invoke();
            }
        }, 1, null);
        ViewExtKt.setEnabledWithAlpha(setupViewData$lambda$6$lambda$3, z);
        AppCompatTextView setupViewData$lambda$6$lambda$4 = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$6$lambda$4, "setupViewData$lambda$6$lambda$4");
        setupViewData$lambda$6$lambda$4.setVisibility(z3 ? 0 : 8);
        ViewExtKt.safeThrottledClick$default(setupViewData$lambda$6$lambda$4, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$setupViewData$4$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Callbacks$Callback.this.invoke();
            }
        }, 1, null);
        AppCompatTextView setupViewData$lambda$6$lambda$5 = forkContentStakingTransactionActionsBinding.buttonConditions;
        Intrinsics.checkNotNullExpressionValue(setupViewData$lambda$6$lambda$5, "setupViewData$lambda$6$lambda$5");
        setupViewData$lambda$6$lambda$5.setVisibility(z2 && !z3 ? 0 : 8);
        ViewExtKt.safeThrottledClick$default(setupViewData$lambda$6$lambda$5, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$setupViewData$4$3$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Callbacks$Callback.this.invoke();
            }
        }, 1, null);
    }

    public final void setApproveInfoButtonVisibility(boolean z) {
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        AppCompatTextView buttonApproveInfo = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        Intrinsics.checkNotNullExpressionValue(buttonApproveInfo, "buttonApproveInfo");
        buttonApproveInfo.setVisibility(z ? 0 : 8);
        AppCompatTextView buttonConditions = forkContentStakingTransactionActionsBinding.buttonConditions;
        Intrinsics.checkNotNullExpressionValue(buttonConditions, "buttonConditions");
        buttonConditions.setVisibility(z ^ true ? 0 : 8);
    }

    public final void setActionButtonText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.binding.buttonAction.setText(text);
    }

    public final void setActionButtonEnabled(boolean z) {
        BigActionButton bigActionButton = this.binding.buttonAction;
        Intrinsics.checkNotNullExpressionValue(bigActionButton, "binding.buttonAction");
        ViewExtKt.setEnabledWithAlpha(bigActionButton, z);
    }

    public final void setupColors() {
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonAction.applyColors();
        AppCompatTextView setupColors$lambda$10$lambda$8 = forkContentStakingTransactionActionsBinding.buttonConditions;
        setupColors$lambda$10$lambda$8.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
        int cornerRadius = getCornerRadius();
        int i = Theme.key_listSelector;
        setupColors$lambda$10$lambda$8.setBackground(Theme.createSimpleSelectorRoundRectDrawable(cornerRadius, 0, Theme.getColor(i)));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$10$lambda$8, "setupColors$lambda$10$lambda$8");
        ViewExtKt.withMediumTypeface(setupColors$lambda$10$lambda$8);
        AppCompatTextView appCompatTextView = forkContentStakingTransactionActionsBinding.buttonApproveInfo;
        appCompatTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
        appCompatTextView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(getCornerRadius(), 0, Theme.getColor(i)));
    }

    private final void setupView() {
        setupColors();
        ForkContentStakingTransactionActionsBinding forkContentStakingTransactionActionsBinding = this.binding;
        forkContentStakingTransactionActionsBinding.buttonConditions.setText(getResourceManager().getString(C3634R.string.staking_deposit_conditions));
        forkContentStakingTransactionActionsBinding.buttonApproveInfo.setText(getResourceManager().getString(C3634R.string.wallet_swap_process_what_is_approve));
        addView(this.binding.getRoot());
    }
}
