package com.smedialink.p031ui.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.model.staking.StakingDashboardItem;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.databinding.ForkContentStakingDashboardBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.StorageDiagramView;
/* compiled from: StakingDashboardView.kt */
/* renamed from: com.smedialink.ui.custom.StakingDashboardView */
/* loaded from: classes3.dex */
public class StakingDashboardView extends FrameLayout implements KoinComponent {
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new StakingDashboardView$special$$inlined$inject$default$1(this, null, null));
        this.resourceManager$delegate = lazy;
        ForkContentStakingDashboardBinding inflate = ForkContentStakingDashboardBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        this.binding = inflate;
        this.onCalculatorClick = StakingDashboardView$$ExternalSyntheticLambda1.INSTANCE;
        this.onHistoryClick = StakingDashboardView$$ExternalSyntheticLambda0.INSTANCE;
        setupView();
    }

    protected final ResourceManager getResourceManager() {
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
        setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        AppCompatTextView setupColors$lambda$6$lambda$3 = forkContentStakingDashboardBinding.textHeader;
        setupColors$lambda$6$lambda$3.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$3, "setupColors$lambda$6$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$3);
        forkContentStakingDashboardBinding.cardStakingDashboard.setCardBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        forkContentStakingDashboardBinding.viewDiagram.invalidate();
        TextView textStakedTitle = forkContentStakingDashboardBinding.textStakedTitle;
        Intrinsics.checkNotNullExpressionValue(textStakedTitle, "textStakedTitle");
        TextView textProfitTitle = forkContentStakingDashboardBinding.textProfitTitle;
        Intrinsics.checkNotNullExpressionValue(textProfitTitle, "textProfitTitle");
        ViewExtKt.setTextsColor("windowBackgroundWhiteGrayText", textStakedTitle, textProfitTitle);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TextView[]{forkContentStakingDashboardBinding.textStakedValue, forkContentStakingDashboardBinding.textProfitValue});
        for (TextView setupColors$lambda$6$lambda$4 : listOf) {
            setupColors$lambda$6$lambda$4.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$4, "setupColors$lambda$6$lambda$4");
            ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$4);
        }
        forkContentStakingDashboardBinding.viewStakedDot.setBackground(Theme.createCircleDrawable(AndroidUtilities.m50dp(6), Theme.getColor("statisticChartLine_blue")));
        forkContentStakingDashboardBinding.viewProfitDot.setBackground(Theme.createCircleDrawable(AndroidUtilities.m50dp(6), Theme.getColor("statisticChartLine_green")));
        forkContentStakingDashboardBinding.divider.setBackgroundColor(Theme.getColor("divider"));
        HorizontalActionButtonsView horizontalActionButtonsView = forkContentStakingDashboardBinding.horizontalActionButtons;
        horizontalActionButtonsView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
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
                clearViewData.setStrokeWidth(AndroidUtilities.m51dp(1.5f));
                clearViewData.setSize(1L);
                clearViewData.color = "dialogIcon";
                Unit unit = Unit.INSTANCE;
                clearViewDataArr[i] = clearViewData;
            }
            storageDiagramView.setData(null, clearViewDataArr);
            storageDiagramView.setArcDrawingRadianOffset(6);
        } else {
            ArrayList arrayList = new ArrayList();
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                StorageDiagramView.ClearViewData clearViewData2 = new StorageDiagramView.ClearViewData(null);
                clearViewData2.setStrokeWidth(AndroidUtilities.m50dp(3));
                clearViewData2.setSizeAsDouble(Double.valueOf(f2));
                clearViewData2.color = "statisticChartLine_green";
                arrayList.add(clearViewData2);
            }
            if (f > BitmapDescriptorFactory.HUE_RED) {
                StorageDiagramView.ClearViewData clearViewData3 = new StorageDiagramView.ClearViewData(null);
                clearViewData3.setStrokeWidth(AndroidUtilities.m50dp(3));
                clearViewData3.setSizeAsDouble(Double.valueOf(f));
                clearViewData3.color = "statisticChartLine_blue";
                arrayList.add(clearViewData3);
            }
            Unit unit2 = Unit.INSTANCE;
            storageDiagramView.setData(null, (StorageDiagramView.ClearViewData[]) arrayList.toArray(new StorageDiagramView.ClearViewData[0]));
            storageDiagramView.setArcDrawingRadianOffset(0);
        }
        StringBuilder sb = new StringBuilder();
        sb.append('~');
        BalanceFormatter balanceFormatter = BalanceFormatter.INSTANCE;
        sb.append(balanceFormatter.formatShortFiatBalance(Float.valueOf(f3), getResourceManager()));
        storageDiagramView.setCustomCenterText(sb.toString());
        TextView textView = forkContentStakingDashboardBinding.textStakedValue;
        Float valueOf = Float.valueOf(f);
        ResourceManager resourceManager = getResourceManager();
        TokenInfo.Fiat.USD usd = TokenInfo.Fiat.USD.INSTANCE;
        textView.setText(balanceFormatter.formatFiatBalance(valueOf, resourceManager, Integer.valueOf(usd.getDecimals())));
        forkContentStakingDashboardBinding.textProfitValue.setText(balanceFormatter.formatFiatBalance(Float.valueOf(f2), getResourceManager(), Integer.valueOf(usd.getDecimals())));
    }

    private final void showLoading() {
        ForkContentStakingDashboardBinding forkContentStakingDashboardBinding = this.binding;
        StorageDiagramView storageDiagramView = forkContentStakingDashboardBinding.viewDiagram;
        StorageDiagramView.ClearViewData clearViewData = new StorageDiagramView.ClearViewData(null);
        clearViewData.setStrokeWidth(AndroidUtilities.m51dp(1.5f));
        clearViewData.setSize(1L);
        clearViewData.color = "dialogIcon";
        Unit unit = Unit.INSTANCE;
        storageDiagramView.setData(null, new StorageDiagramView.ClearViewData[]{clearViewData});
        storageDiagramView.setArcDrawingRadianOffset(0);
        storageDiagramView.setCustomCenterText("_");
        TextView textView = forkContentStakingDashboardBinding.textStakedValue;
        ResourceManager resourceManager = getResourceManager();
        int i = C3301R.string.common_progress_state_title;
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
        forkContentStakingDashboardBinding.textHeader.setText(getResourceManager().getString(C3301R.string.staking_dashboard_header));
        forkContentStakingDashboardBinding.viewDiagram.setCustomSize(AndroidUtilities.m50dp(75));
        forkContentStakingDashboardBinding.textStakedTitle.setText(getResourceManager().getString(C3301R.string.staking_dashboard_staked_title));
        forkContentStakingDashboardBinding.textProfitTitle.setText(getResourceManager().getString(C3301R.string.staking_dashboard_profit_title));
        HorizontalActionButtonsView horizontalActionButtonsView = forkContentStakingDashboardBinding.horizontalActionButtons;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new HorizontalActionButtonItem[]{new HorizontalActionButtonItem(C3301R.C3303drawable.fork_wallet_staking_dashboard_calculator, getResourceManager().getString(C3301R.string.staking_dashboard_calculator), false, new StakingDashboardView$setupViews$1$1(this), 4, null), new HorizontalActionButtonItem(C3301R.C3303drawable.fork_wallet_staking_dashboard_history, getResourceManager().getString(C3301R.string.staking_dashboard_history), false, new StakingDashboardView$setupViews$1$2(this), 4, null)});
        horizontalActionButtonsView.initButtons(listOf);
        showLoading();
    }
}
