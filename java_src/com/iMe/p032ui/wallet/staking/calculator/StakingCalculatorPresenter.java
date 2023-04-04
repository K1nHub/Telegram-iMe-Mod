package com.iMe.p032ui.wallet.staking.calculator;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.model.common.TelegramStatisticsChartData;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.Charts.data.ChartData;
import org.telegram.p048ui.StatisticActivity;
import timber.log.Timber;
/* compiled from: StakingCalculatorPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter */
/* loaded from: classes4.dex */
public final class StakingCalculatorPresenter extends BasePresenter<StakingCalculatorView> {
    private AccountLevel accountLevel;
    private final AccountLevelInteractor accountLevelInteractor;
    private final BehaviorSubject<Double> amountSubject;
    private StatisticActivity.ChartViewData chartViewData;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private double selectedAmount;
    private StakingDetailsItem selectedStakingProgramme;
    private boolean shouldResetAmount;
    private TokenBalance tokenBalance;
    private String tokenProfitText;
    private final WalletInteractor walletInteractor;

    public StakingCalculatorPresenter(StakingDetailsItem stakingDetailsItem, AccountLevelInteractor accountLevelInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.accountLevelInteractor = accountLevelInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        this.tokenProfitText = "";
        this.selectedStakingProgramme = stakingDetailsItem;
        BehaviorSubject<Double> create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create<Double>()");
        this.amountSubject = create;
    }

    public final StakingAnnualPercentageData getStakingAnnualPercentageData() {
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem != null) {
            String formattedAPR = stakingDetailsItem.getFormattedAPR();
            String formattedAPY = stakingDetailsItem.getFormattedAPY();
            String bigDecimal = stakingDetailsItem.getCompoundAccrualThreshold().toString();
            Intrinsics.checkNotNullExpressionValue(bigDecimal, "compoundAccrualThreshold.toString()");
            return new StakingAnnualPercentageData(formattedAPR, formattedAPY, bigDecimal);
        }
        return null;
    }

    public final TokenCode getTokenCode() {
        TokenCode.Companion companion = TokenCode.Companion;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        String tokenTicker = stakingDetailsItem != null ? stakingDetailsItem.getTokenTicker() : null;
        if (tokenTicker == null) {
            tokenTicker = "";
        }
        return companion.map(tokenTicker);
    }

    public final TokenInfo getTokenInfo() {
        return TokenInfo.Companion.map(getTokenCode());
    }

    public final String getDatesText() {
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        String str = null;
        if (stakingDetailsItem != null) {
            Date date = new Date(Math.max(StringExtKt.parseISODate(stakingDetailsItem.getStartsAtISO()), DateExtKt.now()));
            str = DateFormatter.format$default(DateFormatter.DateType.ONLY_DATE, date, null, 4, null) + " - " + stakingDetailsItem.getEndsAt();
        }
        return str == null ? "" : str;
    }

    public final String getPercentageText() {
        String str;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem != null) {
            str = (this.selectedAmount + stakingDetailsItem.getImpact().doubleValue() >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue() ? stakingDetailsItem.getFormattedAPY() : stakingDetailsItem.getFormattedAPR()) + "% ";
        } else {
            str = null;
        }
        return str == null ? "" : str;
    }

    public final String getModeText() {
        String str;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem != null) {
            str = '(' + this.resourceManager.getString(this.selectedAmount >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue() ? C3316R.string.staking_details_apy : C3316R.string.staking_details_apr) + ')';
        } else {
            str = null;
        }
        return str == null ? "" : str;
    }

    public final String getTokenProfitText() {
        return this.tokenProfitText;
    }

    public final StatisticActivity.ChartViewData getChartViewData() {
        return this.chartViewData;
    }

    public final TokenBalance getTokenBalance() {
        return this.tokenBalance;
    }

    public final StakingDetailsItem getSelectedStakingProgramme() {
        return this.selectedStakingProgramme;
    }

    public final float getCompoundThresholdProgress() {
        Float f;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem != null) {
            BigDecimal add = stakingDetailsItem.getImpact().add(new BigDecimal(String.valueOf(this.selectedAmount)));
            Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
            f = Float.valueOf(((BigDecimal) ComparisonsKt.minOf(add.divide(stakingDetailsItem.getCompoundAccrualThreshold()), new BigDecimal(1))).floatValue());
        } else {
            f = null;
        }
        return NumberExtKt.orZero(f);
    }

    public final boolean checkAmountReset() {
        boolean z = this.shouldResetAmount;
        this.shouldResetAmount = false;
        return z;
    }

    public final void onStakingSelected(StakingDetailsItem stakingDetails) {
        Intrinsics.checkNotNullParameter(stakingDetails, "stakingDetails");
        this.selectedStakingProgramme = stakingDetails;
        this.selectedAmount = 0.0d;
        this.chartViewData = null;
        this.shouldResetAmount = true;
        ((StakingCalculatorView) getViewState()).updateStakingCalculatorViews();
        loadBalance();
    }

    public final void onAmountChanged(String amountText) {
        Intrinsics.checkNotNullParameter(amountText, "amountText");
        try {
            double parseDouble = amountText.length() == 0 ? 0.0d : Double.parseDouble(amountText);
            if (NumberExtKt.isZero(Double.valueOf(parseDouble))) {
                return;
            }
            this.amountSubject.onNext(Double.valueOf(parseDouble));
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    public final void onDepositClick() {
        AccountLevel accountLevel = this.accountLevel;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            return;
        }
        if (accountLevel != null) {
            openStakingCheckingAccountLevel(stakingDetailsItem, accountLevel);
        } else {
            loadAccountLevelAndOpenStaking(stakingDetailsItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadBalance();
        setupAmountListener();
    }

    private final void loadAccountLevelAndOpenStaking(StakingDetailsItem stakingDetailsItem) {
        Observable observeOn = AccountLevelInteractor.getAccountLevelRemote$default(this.accountLevelInteractor, 0L, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2307xca1b89cb(this, stakingDetailsItem)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2308xca1b89cc((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openStakingCheckingAccountLevel(StakingDetailsItem stakingDetailsItem, AccountLevel accountLevel) {
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevel)) {
            StakingCalculatorView stakingCalculatorView = (StakingCalculatorView) getViewState();
            StakingDetailsItem stakingDetailsItem2 = this.selectedStakingProgramme;
            if (stakingDetailsItem2 == null) {
                return;
            }
            stakingCalculatorView.openDepositScreen(stakingDetailsItem2, this.selectedAmount);
            return;
        }
        ((StakingCalculatorView) getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank());
    }

    private final void loadBalance() {
        NetworkType networkType;
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenCode tokenCode = getTokenCode();
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null || (networkType = stakingDetailsItem.getNetworkType()) == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, tokenCode, false, networkType, 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2309x30d40fe4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2310x30d40fe5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCommonErrorToast(ErrorModel errorModel) {
        String message;
        StakingCalculatorView stakingCalculatorView = (StakingCalculatorView) getViewState();
        if (errorModel.isNoConnectionStatus()) {
            message = this.resourceManager.getString(C3316R.string.common_error_no_internet);
        } else {
            message = errorModel.getMessage(this.resourceManager);
            if (message.length() == 0) {
                message = this.resourceManager.getString(C3316R.string.common_error_unexpected);
            }
        }
        stakingCalculatorView.showToast(message);
    }

    private final void setupAmountListener() {
        Observable<Double> debounce = this.amountSubject.debounce(500L, TimeUnit.MILLISECONDS);
        final StakingCalculatorPresenter$setupAmountListener$1 stakingCalculatorPresenter$setupAmountListener$1 = new StakingCalculatorPresenter$setupAmountListener$1(this);
        Observable observeOn = debounce.map(new Function() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                StatisticActivity.ChartViewData chartViewData;
                chartViewData = StakingCalculatorPresenter.setupAmountListener$lambda$12(Function1.this, obj);
                return chartViewData;
            }
        }).subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui());
        final StakingCalculatorPresenter$setupAmountListener$2 stakingCalculatorPresenter$setupAmountListener$2 = new StakingCalculatorPresenter$setupAmountListener$2(this);
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                StakingCalculatorPresenter.setupAmountListener$lambda$13(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun setupAmountL…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StatisticActivity.ChartViewData setupAmountListener$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (StatisticActivity.ChartViewData) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAmountListener$lambda$13(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StatisticActivity.ChartViewData mapProfitPrognosis() {
        LongProgression step;
        List<Long> list;
        int collectionSizeOrDefault;
        boolean z;
        long j;
        double d;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            return null;
        }
        double doubleValue = this.selectedAmount + stakingDetailsItem.getImpact().doubleValue();
        boolean z2 = doubleValue >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue();
        long max = Math.max(StringExtKt.parseISODate(stakingDetailsItem.getStartsAtISO()), DateExtKt.now());
        double incomePercent = stakingDetailsItem.getIncomePercent() / 100.0d;
        long millis = TimeUnit.SECONDS.toMillis(stakingDetailsItem.getIncomePeriod());
        step = RangesKt___RangesKt.step(new LongRange(max, StringExtKt.parseISODate(stakingDetailsItem.getEndsAtISO())), TimeUnit.DAYS.toMillis(1L));
        list = CollectionsKt___CollectionsKt.toList(step);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : list) {
            long longValue = number.longValue();
            int i = (int) ((longValue - max) / millis);
            if (max % millis > longValue % millis) {
                i++;
            }
            if (z2) {
                j = max;
                z = z2;
                d = (Math.pow(incomePercent + 1.0d, i) - 1) * doubleValue;
            } else {
                z = z2;
                j = max;
                d = i * doubleValue * incomePercent;
            }
            arrayList.add(Double.valueOf(((int) (d * 100)) / 100.0d));
            z2 = z;
            max = j;
        }
        this.tokenProfitText = '+' + TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.copy$default(TokenBalance.Companion.createEmptyBalanceFor(getTokenInfo()), null, ((Number) CollectionsKt.last((List<? extends Object>) arrayList)).doubleValue(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null), this.resourceManager);
        ResourceManager resourceManager = this.resourceManager;
        int i2 = C3316R.string.staking_details_profit;
        StatisticActivity.ChartViewData chartViewData = new StatisticActivity.ChartViewData(resourceManager.getString(i2), 0);
        chartViewData.setup(new ChartData(TelegramStatisticsChartData.Companion.generateJSONObject(this.resourceManager.getString(i2), list, arrayList)));
        return chartViewData;
    }
}
