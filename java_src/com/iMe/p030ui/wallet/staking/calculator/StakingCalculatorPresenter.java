package com.iMe.p030ui.wallet.staking.calculator;

import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.TelegramStatisticsChartData;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.extensions.TokenExtKt;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p031rx.SchedulersExtKt;
import com.iMe.utils.formatter.DateFormatter;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.BehaviorSubject;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
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
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.Charts.data.ChartData;
import org.telegram.p042ui.StatisticActivity;
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

    public final TokenDetailed getToken() {
        TokenItem tokenItem;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null || (tokenItem = stakingDetailsItem.getTokenItem()) == null) {
            return null;
        }
        return TokenUiMappingKt.mapToDomain(tokenItem);
    }

    public final String getDatesText() {
        String str;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem != null) {
            Date date = new Date(Math.max(StringExtKt.parseISODate(stakingDetailsItem.getStartsAtISO()), DateExtKt.now()));
            str = DateFormatter.format$default(DateFormatter.DateType.ONLY_DATE, date, null, null, 12, null) + " - " + stakingDetailsItem.getEndsAt();
        } else {
            str = null;
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
            str = '(' + this.resourceManager.getString(this.selectedAmount >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue() ? C3630R.string.staking_details_apy : C3630R.string.staking_details_apr) + ')';
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
            Timber.m6e(e);
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

    private final void loadAccountLevelAndOpenStaking(final StakingDetailsItem stakingDetailsItem) {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(AccountLevelInteractor.getAccountLevelRemote$default(this.accountLevelInteractor, 0L, 1, null));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(scheduleIO, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends AccountLevel>, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevel> result) {
                m1807invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1807invoke(Result<? extends AccountLevel> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends AccountLevel> result = it;
                if (result instanceof Result.Success) {
                    StakingCalculatorPresenter.this.openStakingCheckingAccountLevel(stakingDetailsItem, (AccountLevel) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    StakingCalculatorPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
        ((StakingCalculatorView) getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank(), TokenDetailed.Companion.getLIME(stakingDetailsItem.getTokenItem().getNetworkId()));
    }

    private final void loadBalance() {
        Token indexedToken;
        TokenDetailed token;
        String networkId;
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenDetailed token2 = getToken();
        if (token2 == null || (indexedToken = TokenExtKt.toIndexedToken(token2)) == null || (token = getToken()) == null || (networkId = token.getNetworkId()) == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, indexedToken, false, networkId, 2, null).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1808invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1808invoke(Result<? extends TokenBalance> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    StakingCalculatorPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    ((StakingCalculatorView) StakingCalculatorPresenter.this.getViewState()).showBalance((TokenBalance) success.getData());
                } else if (result instanceof Result.Error) {
                    StakingCalculatorPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCommonErrorToast(ErrorModel errorModel) {
        String message;
        StakingCalculatorView stakingCalculatorView = (StakingCalculatorView) getViewState();
        if (errorModel.isNoConnectionStatus()) {
            message = this.resourceManager.getString(C3630R.string.common_error_no_internet);
        } else {
            message = errorModel.getMessage(this.resourceManager);
            if (message.length() == 0) {
                message = this.resourceManager.getString(C3630R.string.common_error_unexpected);
            }
        }
        stakingCalculatorView.showToast(message);
    }

    private final void setupAmountListener() {
        Observable<Double> debounce = this.amountSubject.debounce(500L, TimeUnit.MILLISECONDS);
        final Function1<Double, StatisticActivity.ChartViewData> function1 = new Function1<Double, StatisticActivity.ChartViewData>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$setupAmountListener$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final StatisticActivity.ChartViewData invoke(Double amount) {
                StatisticActivity.ChartViewData mapProfitPrognosis;
                Intrinsics.checkNotNullParameter(amount, "amount");
                StakingCalculatorPresenter.this.selectedAmount = amount.doubleValue();
                mapProfitPrognosis = StakingCalculatorPresenter.this.mapProfitPrognosis();
                return mapProfitPrognosis;
            }
        };
        Observable observeOn = debounce.map(new Function() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                StatisticActivity.ChartViewData chartViewData;
                chartViewData = StakingCalculatorPresenter.setupAmountListener$lambda$12(Function1.this, obj);
                return chartViewData;
            }
        }).subscribeOn(this.schedulersProvider.mo1010io()).observeOn(this.schedulersProvider.mo1009ui());
        final Function1<StatisticActivity.ChartViewData, Unit> function12 = new Function1<StatisticActivity.ChartViewData, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.StakingCalculatorPresenter$setupAmountListener$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StatisticActivity.ChartViewData chartViewData) {
                invoke2(chartViewData);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(StatisticActivity.ChartViewData chartViewData) {
                StakingCalculatorPresenter.this.chartViewData = chartViewData;
                ((StakingCalculatorView) StakingCalculatorPresenter.this.getViewState()).updateStakingCalculatorViews();
            }
        };
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
        TokenBalance copy;
        long j;
        long j2;
        double d;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            return null;
        }
        double doubleValue = this.selectedAmount + stakingDetailsItem.getImpact().doubleValue();
        boolean z = doubleValue >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue();
        long max = Math.max(StringExtKt.parseISODate(stakingDetailsItem.getStartsAtISO()), DateExtKt.now());
        double incomePercent = stakingDetailsItem.getIncomePercent() / 100.0d;
        long millis = TimeUnit.SECONDS.toMillis(stakingDetailsItem.getIncomePeriod());
        step = RangesKt___RangesKt.step(new LongRange(max, StringExtKt.parseISODate(stakingDetailsItem.getEndsAtISO())), TimeUnit.DAYS.toMillis(1L));
        list = CollectionsKt___CollectionsKt.toList(step);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            long longValue = ((Number) it.next()).longValue();
            Iterator it2 = it;
            int i = (int) ((longValue - max) / millis);
            if (max % millis > longValue % millis) {
                i++;
            }
            if (z) {
                j = max;
                j2 = millis;
                d = (Math.pow(incomePercent + 1.0d, i) - 1) * doubleValue;
            } else {
                j = max;
                j2 = millis;
                d = doubleValue * incomePercent * i;
            }
            arrayList.add(Double.valueOf(((int) (d * 100)) / 100.0d));
            millis = j2;
            max = j;
            it = it2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('+');
        copy = r16.copy((r16 & 1) != 0 ? r16.total : ((Number) CollectionsKt.last((List<? extends Object>) arrayList)).doubleValue(), (r16 & 2) != 0 ? r16.totalInFiat : null, (r16 & 4) != 0 ? r16.rateToFiat : null, (r16 & 8) != 0 ? r16.ratePercentageChange24h : 0.0d, (r16 & 16) != 0 ? TokenBalance.Companion.createEmptyBalanceFor(TokenUiMappingKt.mapToDomain(stakingDetailsItem.getTokenItem())).token : null);
        sb.append(TokenBalanceExtKt.getTotalBalanceShortText(copy));
        this.tokenProfitText = sb.toString();
        ResourceManager resourceManager = this.resourceManager;
        int i2 = C3630R.string.staking_details_profit;
        StatisticActivity.ChartViewData chartViewData = new StatisticActivity.ChartViewData(resourceManager.getString(i2), 0);
        chartViewData.setup(new ChartData(TelegramStatisticsChartData.Companion.generateJSONObject(this.resourceManager.getString(i2), list, arrayList)));
        return chartViewData;
    }
}
