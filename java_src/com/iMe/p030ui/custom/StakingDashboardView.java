package com.iMe.p030ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
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
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.databinding.ForkContentStakingDashboardBinding;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.StorageDiagramView;
/* compiled from: StakingDashboardView.kt */
/* renamed from: com.iMe.ui.custom.StakingDashboardView */
/* loaded from: classes3.dex */
public final class StakingDashboardView extends FrameLayout implements KoinComponent {
    private final ForkContentStakingDashboardBinding binding;
    private Callbacks$Callback onCalculatorClick;
    private Callbacks$Callback onHistoryClick;
    private final Lazy resourceManager$delegate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StakingDashboardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCalculatorClick$lambda$0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onHistoryClick$lambda$1() {
    }

    public /* synthetic */ StakingDashboardView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingDashboardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.ui.custom.StakingDashboardView$special$$inlined$inject$default$1
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
        ForkContentStakingDashboardBinding inflate = ForkContentStakingDashboardBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        this.onCalculatorClick = new Callbacks$Callback() { // from class: com.iMe.ui.custom.StakingDashboardView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingDashboardView.onCalculatorClick$lambda$0();
            }
        };
        this.onHistoryClick = new Callbacks$Callback() { // from class: com.iMe.ui.custom.StakingDashboardView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                StakingDashboardView.onHistoryClick$lambda$1();
            }
        };
        setupView();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    public final void setupItem(StakingDashboardItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof StakingDashboardItem.Data) {
            StakingDashboardItem.Data data = (StakingDashboardItem.Data) item;
            setupViewData(data.getStaked(), data.getProfit());
        } else if (item instanceof StakingDashboardItem.Loading) {
            showLoading();
        }
        setupColors();
    }

    public final void setupListeners(Callbacks$Callback onCalculatorClickAction, Callbacks$Callback onHistoryClickAction) {
        Intrinsics.checkNotNullParameter(onCalculatorClickAction, "onCalculatorClickAction");
        Intrinsics.checkNotNullParameter(onHistoryClickAction, "onHistoryClickAction");
        this.onCalculatorClick = onCalculatorClickAction;
        this.onHistoryClick = onHistoryClickAction;
    }

    public final void setupColors() {
        List<TextView> listOf;
        ForkContentStakingDashboardBinding forkContentStakingDashboardBinding = this.binding;
        setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        AppCompatTextView setupColors$lambda$6$lambda$3 = forkContentStakingDashboardBinding.textHeader;
        setupColors$lambda$6$lambda$3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$3, "setupColors$lambda$6$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$3);
        forkContentStakingDashboardBinding.cardStakingDashboard.setCardBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        forkContentStakingDashboardBinding.viewDiagram.invalidate();
        int i = Theme.key_windowBackgroundWhiteGrayText;
        TextView textStakedTitle = forkContentStakingDashboardBinding.textStakedTitle;
        Intrinsics.checkNotNullExpressionValue(textStakedTitle, "textStakedTitle");
        TextView textProfitTitle = forkContentStakingDashboardBinding.textProfitTitle;
        Intrinsics.checkNotNullExpressionValue(textProfitTitle, "textProfitTitle");
        ViewExtKt.setTextsColorKey(i, textStakedTitle, textProfitTitle);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentStakingDashboardBinding.textStakedValue, forkContentStakingDashboardBinding.textProfitValue});
        for (TextView setupColors$lambda$6$lambda$4 : listOf) {
            setupColors$lambda$6$lambda$4.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$4, "setupColors$lambda$6$lambda$4");
            ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$4);
        }
        forkContentStakingDashboardBinding.viewStakedDot.setBackground(Theme.createCircleDrawable(AndroidUtilities.m104dp(6), Theme.getColor(Theme.key_statisticChartLine_blue)));
        forkContentStakingDashboardBinding.viewProfitDot.setBackground(Theme.createCircleDrawable(AndroidUtilities.m104dp(6), Theme.getColor(Theme.key_statisticChartLine_green)));
        forkContentStakingDashboardBinding.divider.setBackgroundColor(Theme.getColor(Theme.key_divider));
        HorizontalActionButtonsView horizontalActionButtonsView = forkContentStakingDashboardBinding.horizontalActionButtons;
        horizontalActionButtonsView.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        horizontalActionButtonsView.setupColors();
    }

    private final void setupViewData(float f, float f2) {
        ForkContentStakingDashboardBinding forkContentStakingDashboardBinding = this.binding;
        StorageDiagramView storageDiagramView = forkContentStakingDashboardBinding.viewDiagram;
        float f3 = f + f2;
        if (NumberExtKt.isZero(Float.valueOf(f3))) {
            StorageDiagramView.ClearViewData[] clearViewDataArr = new StorageDiagramView.ClearViewData[16];
            for (int i = 0; i < 16; i++) {
                StorageDiagramView.ClearViewData clearViewData = new StorageDiagramView.ClearViewData(null);
                clearViewData.setStrokeWidth(AndroidUtilities.m105dp(1.5f));
                clearViewData.setSize(1L);
                clearViewData.colorKey = Theme.key_dialogIcon;
                Unit unit = Unit.INSTANCE;
                clearViewDataArr[i] = clearViewData;
            }
            storageDiagramView.setData(null, clearViewDataArr);
            storageDiagramView.setArcDrawingRadianOffset(6);
        } else {
            ArrayList arrayList = new ArrayList();
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                StorageDiagramView.ClearViewData clearViewData2 = new StorageDiagramView.ClearViewData(null);
                clearViewData2.setStrokeWidth(AndroidUtilities.m104dp(3));
                clearViewData2.setSizeAsDouble(Double.valueOf(f2));
                clearViewData2.colorKey = Theme.key_statisticChartLine_green;
                arrayList.add(clearViewData2);
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                StorageDiagramView.ClearViewData clearViewData3 = new StorageDiagramView.ClearViewData(null);
                clearViewData3.setStrokeWidth(AndroidUtilities.m104dp(3));
                clearViewData3.setSizeAsDouble(Double.valueOf(f));
                clearViewData3.colorKey = Theme.key_statisticChartLine_blue;
                arrayList.add(clearViewData3);
            }
            Unit unit2 = Unit.INSTANCE;
            storageDiagramView.setData(null, (StorageDiagramView.ClearViewData[]) arrayList.toArray(new StorageDiagramView.ClearViewData[0]));
            storageDiagramView.setArcDrawingRadianOffset(0);
        }
        StringBuilder sb = new StringBuilder();
        sb.append('~');
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        sb.append(balanceFormatter.formatShortFiatBalance(Float.valueOf(f3)));
        storageDiagramView.setCustomCenterText(sb.toString());
        TextView textView = forkContentStakingDashboardBinding.textStakedValue;
        Float valueOf = Float.valueOf(f);
        TokenDetailed.Companion companion = TokenDetailed.Companion;
        textView.setText(balanceFormatter.formatFiatBalance(valueOf, Integer.valueOf(companion.getUSD().getDecimals())));
        forkContentStakingDashboardBinding.textProfitValue.setText(balanceFormatter.formatFiatBalance(Float.valueOf(f2), Integer.valueOf(companion.getUSD().getDecimals())));
    }

    private final void showLoading() {
        ForkContentStakingDashboardBinding forkContentStakingDashboardBinding = this.binding;
        StorageDiagramView storageDiagramView = forkContentStakingDashboardBinding.viewDiagram;
        StorageDiagramView.ClearViewData clearViewData = new StorageDiagramView.ClearViewData(null);
        clearViewData.setStrokeWidth(AndroidUtilities.m105dp(1.5f));
        clearViewData.setSize(1L);
        clearViewData.colorKey = Theme.key_dialogIcon;
        Unit unit = Unit.INSTANCE;
        storageDiagramView.setData(null, new StorageDiagramView.ClearViewData[]{clearViewData});
        storageDiagramView.setArcDrawingRadianOffset(0);
        storageDiagramView.setCustomCenterText("_");
        TextView textView = forkContentStakingDashboardBinding.textStakedValue;
        ResourceManager resourceManager = getResourceManager();
        int i = C3634R.string.common_progress_state_title;
        textView.setText(resourceManager.getString(i));
        forkContentStakingDashboardBinding.textProfitValue.setText(getResourceManager().getString(i));
    }

    private final void setupView() {
        setupColors();
        setupViews();
        addView(this.binding.getRoot());
    }

    private final void setupViews() {
        List<HorizontalActionButtonItem> listOf;
        ForkContentStakingDashboardBinding forkContentStakingDashboardBinding = this.binding;
        forkContentStakingDashboardBinding.textHeader.setText(getResourceManager().getString(C3634R.string.staking_dashboard_header));
        forkContentStakingDashboardBinding.viewDiagram.setCustomSize(AndroidUtilities.m104dp(75));
        forkContentStakingDashboardBinding.textStakedTitle.setText(getResourceManager().getString(C3634R.string.staking_dashboard_staked_title));
        forkContentStakingDashboardBinding.textProfitTitle.setText(getResourceManager().getString(C3634R.string.staking_dashboard_profit_title));
        HorizontalActionButtonsView horizontalActionButtonsView = forkContentStakingDashboardBinding.horizontalActionButtons;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3634R.C3636drawable.fork_wallet_staking_dashboard_calculator, getResourceManager().getString(C3634R.string.staking_dashboard_calculator), false, new Function0<Unit>() { // from class: com.iMe.ui.custom.StakingDashboardView$setupViews$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Callbacks$Callback callbacks$Callback;
                callbacks$Callback = StakingDashboardView.this.onCalculatorClick;
                callbacks$Callback.invoke();
            }
        }, 4, null), new HorizontalActionButtonItem(C3634R.C3636drawable.fork_wallet_staking_dashboard_history, getResourceManager().getString(C3634R.string.staking_dashboard_history), false, new Function0<Unit>() { // from class: com.iMe.ui.custom.StakingDashboardView$setupViews$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Callbacks$Callback callbacks$Callback;
                callbacks$Callback = StakingDashboardView.this.onHistoryClick;
                callbacks$Callback.invoke();
            }
        }, 4, null)});
        horizontalActionButtonsView.initButtons(listOf);
        showLoading();
    }
}
