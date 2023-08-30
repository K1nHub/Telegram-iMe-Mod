package com.iMe.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.databinding.ForkContentStakingPrognosisBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.StatisticActivity;
/* compiled from: StakingPrognosisView.kt */
/* renamed from: com.iMe.ui.custom.StakingPrognosisView */
/* loaded from: classes3.dex */
public final class StakingPrognosisView extends FrameLayout implements KoinComponent {
    private final ForkContentStakingPrognosisBinding binding;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingPrognosisView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ StakingPrognosisView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingPrognosisView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.StakingPrognosisView$special$$inlined$inject$default$1
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
        ForkContentStakingPrognosisBinding inflate = ForkContentStakingPrognosisBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setupViewData(String datesText, String percentageText, String modeText, String tokenProfitText, StatisticActivity.ChartViewData chartViewData, final Callbacks$Callback onDepositClickAction) {
        Intrinsics.checkNotNullParameter(datesText, "datesText");
        Intrinsics.checkNotNullParameter(percentageText, "percentageText");
        Intrinsics.checkNotNullParameter(modeText, "modeText");
        Intrinsics.checkNotNullParameter(tokenProfitText, "tokenProfitText");
        Intrinsics.checkNotNullParameter(onDepositClickAction, "onDepositClickAction");
        ForkContentStakingPrognosisBinding forkContentStakingPrognosisBinding = this.binding;
        forkContentStakingPrognosisBinding.textDates.setText(datesText);
        forkContentStakingPrognosisBinding.textPercentageValue.setText(percentageText);
        forkContentStakingPrognosisBinding.textModeValue.setText(modeText);
        forkContentStakingPrognosisBinding.textProfitTokenValue.setText(tokenProfitText);
        forkContentStakingPrognosisBinding.viewChart.updateData(chartViewData, false);
        BigActionButton buttonDeposit = forkContentStakingPrognosisBinding.buttonDeposit;
        Intrinsics.checkNotNullExpressionValue(buttonDeposit, "buttonDeposit");
        ViewExtKt.setMixedClickListener(buttonDeposit, new Callbacks$Callback1() { // from class: com.iMe.ui.custom.StakingPrognosisView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                StakingPrognosisView.setupViewData$lambda$1$lambda$0(Callbacks$Callback.this, (View) obj);
            }
        });
        setupColors();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewData$lambda$1$lambda$0(Callbacks$Callback onDepositClickAction, View view) {
        Intrinsics.checkNotNullParameter(onDepositClickAction, "$onDepositClickAction");
        onDepositClickAction.invoke();
    }

    public final void setupColors() {
        List<ViewGroup> listOf;
        List<TextView> listOf2;
        List<TextView> listOf3;
        ForkContentStakingPrognosisBinding forkContentStakingPrognosisBinding = this.binding;
        ConstraintLayout constraintStatistics = forkContentStakingPrognosisBinding.constraintStatistics;
        Intrinsics.checkNotNullExpressionValue(constraintStatistics, "constraintStatistics");
        LinearLayout linearDeposit = forkContentStakingPrognosisBinding.linearDeposit;
        Intrinsics.checkNotNullExpressionValue(linearDeposit, "linearDeposit");
        ChartCellView viewChart = forkContentStakingPrognosisBinding.viewChart;
        Intrinsics.checkNotNullExpressionValue(viewChart, "viewChart");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ViewGroup[]{constraintStatistics, linearDeposit, viewChart});
        for (ViewGroup viewGroup : listOf) {
            viewGroup.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        }
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentStakingPrognosisBinding.textStatistics, forkContentStakingPrognosisBinding.textDates, forkContentStakingPrognosisBinding.textPercentageValue, forkContentStakingPrognosisBinding.textModeValue});
        for (TextView setupColors$lambda$6$lambda$3 : listOf2) {
            setupColors$lambda$6$lambda$3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$3, "setupColors$lambda$6$lambda$3");
            ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$3);
        }
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentStakingPrognosisBinding.textProfitTokenValue, forkContentStakingPrognosisBinding.textProfitUsdValue});
        for (TextView setupColors$lambda$6$lambda$4 : listOf3) {
            setupColors$lambda$6$lambda$4.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGreenText2));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$4, "setupColors$lambda$6$lambda$4");
            ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$4);
        }
        int i = Theme.key_windowBackgroundWhiteGrayText;
        TextView textModeTitle = forkContentStakingPrognosisBinding.textModeTitle;
        Intrinsics.checkNotNullExpressionValue(textModeTitle, "textModeTitle");
        TextView textProfitTitle = forkContentStakingPrognosisBinding.textProfitTitle;
        Intrinsics.checkNotNullExpressionValue(textProfitTitle, "textProfitTitle");
        TextView textDepositDescription = forkContentStakingPrognosisBinding.textDepositDescription;
        Intrinsics.checkNotNullExpressionValue(textDepositDescription, "textDepositDescription");
        ViewExtKt.setTextsColor(i, textModeTitle, textProfitTitle, textDepositDescription);
        TextView setupColors$lambda$6$lambda$5 = forkContentStakingPrognosisBinding.textDepositTitle;
        setupColors$lambda$6$lambda$5.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$5, "setupColors$lambda$6$lambda$5");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$5);
        forkContentStakingPrognosisBinding.buttonDeposit.applyColors();
    }

    private final void setupView() {
        setupColors();
        ForkContentStakingPrognosisBinding forkContentStakingPrognosisBinding = this.binding;
        forkContentStakingPrognosisBinding.textStatistics.setText(getResourceManager().getString(C3558R.string.staking_calculator_statistics));
        forkContentStakingPrognosisBinding.textModeTitle.setText(getResourceManager().getString(C3558R.string.staking_calculator_mode));
        forkContentStakingPrognosisBinding.textProfitTitle.setText(getResourceManager().getString(C3558R.string.staking_calculator_income_profit));
        forkContentStakingPrognosisBinding.textDepositTitle.setText(getResourceManager().getString(C3558R.string.staking_calculator_deposit_title));
        forkContentStakingPrognosisBinding.textDepositDescription.setText(getResourceManager().getString(C3558R.string.staking_calculator_deposit_description));
        BigActionButton bigActionButton = forkContentStakingPrognosisBinding.buttonDeposit;
        bigActionButton.setForcedCustomHeight(36);
        bigActionButton.setText(getResourceManager().getString(C3558R.string.wallet_operation_deposit));
        addView(this.binding.getRoot());
    }
}
