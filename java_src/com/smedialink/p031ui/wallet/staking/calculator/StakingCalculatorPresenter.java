package com.smedialink.p031ui.wallet.staking.calculator;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.model.common.TelegramStatisticsChartData;
import com.smedialink.model.staking.StakingAnnualPercentageData;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.smedialink.utils.formatter.DateFormatter;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.LongProgression;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.Charts.data.ChartData;
import org.telegram.p048ui.StatisticActivity;
import timber.log.Timber;
/* compiled from: StakingCalculatorPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter */
/* loaded from: classes3.dex */
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
        if (stakingDetailsItem == null) {
            return null;
        }
        String formattedAPR = stakingDetailsItem.getFormattedAPR();
        String formattedAPY = stakingDetailsItem.getFormattedAPY();
        String bigDecimal = stakingDetailsItem.getCompoundAccrualThreshold().toString();
        Intrinsics.checkNotNullExpressionValue(bigDecimal, "compoundAccrualThreshold.toString()");
        return new StakingAnnualPercentageData(formattedAPR, formattedAPY, bigDecimal);
    }

    public final TokenCode getTokenCode() {
        TokenCode.Companion companion = TokenCode.Companion;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        String tokenTicker = stakingDetailsItem == null ? null : stakingDetailsItem.getTokenTicker();
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
        String stringPlus;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            stringPlus = null;
        } else {
            stringPlus = Intrinsics.stringPlus(getSelectedAmount() + stakingDetailsItem.getImpact().doubleValue() >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue() ? stakingDetailsItem.getFormattedAPY() : stakingDetailsItem.getFormattedAPR(), "% ");
        }
        return stringPlus == null ? "" : stringPlus;
    }

    public final String getModeText() {
        String str;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            str = null;
        } else {
            str = '(' + this.resourceManager.getString(getSelectedAmount() >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue() ? C3158R.string.staking_details_apy : C3158R.string.staking_details_apr) + ')';
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

    public final double getSelectedAmount() {
        return this.selectedAmount;
    }

    public final float getCompoundThresholdProgress() {
        Float valueOf;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            valueOf = null;
        } else {
            BigDecimal add = stakingDetailsItem.getImpact().add(new BigDecimal(String.valueOf(getSelectedAmount())));
            Intrinsics.checkNotNullExpressionValue(add, "this.add(other)");
            valueOf = Float.valueOf(((BigDecimal) ComparisonsKt.minOf(add.divide(stakingDetailsItem.getCompoundAccrualThreshold()), new BigDecimal(1))).floatValue());
        }
        return NumberExtKt.orZero(valueOf);
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

    private final void loadAccountLevelAndOpenStaking(final StakingDetailsItem stakingDetailsItem) {
        Observable observeOn = AccountLevelInteractor.getAccountLevelRemote$default(this.accountLevelInteractor, 0L, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    StakingCalculatorPresenter.this.openStakingCheckingAccountLevel(stakingDetailsItem, (AccountLevel) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    StakingCalculatorPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openStakingCheckingAccountLevel(StakingDetailsItem stakingDetailsItem, AccountLevel accountLevel) {
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevel)) {
            StakingCalculatorView stakingCalculatorView = (StakingCalculatorView) getViewState();
            StakingDetailsItem selectedStakingProgramme = getSelectedStakingProgramme();
            if (selectedStakingProgramme == null) {
                return;
            }
            stakingCalculatorView.openDepositScreen(selectedStakingProgramme, getSelectedAmount());
            return;
        }
        ((StakingCalculatorView) getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank());
    }

    private final void loadBalance() {
        WalletInteractor walletInteractor = this.walletInteractor;
        TokenCode tokenCode = getTokenCode();
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        NetworkType networkType = stakingDetailsItem == null ? null : stakingDetailsItem.getNetworkType();
        if (networkType == null) {
            return;
        }
        Observable observeOn = WalletInteractor.getTokenBalance$default(walletInteractor, tokenCode, false, networkType, 2, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    StakingCalculatorPresenter.this.tokenBalance = (TokenBalance) success.getData();
                    ((StakingCalculatorView) StakingCalculatorPresenter.this.getViewState()).showBalance((TokenBalance) success.getData());
                } else if (result instanceof Result.Error) {
                    StakingCalculatorPresenter.this.showCommonErrorToast(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCommonErrorToast(ErrorModel errorModel) {
        String message;
        StakingCalculatorView stakingCalculatorView = (StakingCalculatorView) getViewState();
        if (errorModel.isNoConnectionStatus()) {
            message = this.resourceManager.getString(C3158R.string.common_error_no_internet);
        } else {
            message = errorModel.getMessage(this.resourceManager);
            if (message.length() == 0) {
                message = this.resourceManager.getString(C3158R.string.common_error_unexpected);
            }
        }
        stakingCalculatorView.showToast(message);
    }

    private final void setupAmountListener() {
        Disposable subscribe = this.amountSubject.debounce(500L, TimeUnit.MILLISECONDS).map(new Function() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                StatisticActivity.ChartViewData m1730setupAmountListener$lambda12;
                m1730setupAmountListener$lambda12 = StakingCalculatorPresenter.m1730setupAmountListener$lambda12(StakingCalculatorPresenter.this, (Double) obj);
                return m1730setupAmountListener$lambda12;
            }
        }).subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui()).subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                StakingCalculatorPresenter.m1731setupAmountListener$lambda13(StakingCalculatorPresenter.this, (StatisticActivity.ChartViewData) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "amountSubject\n          …Views()\n                }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupAmountListener$lambda-12  reason: not valid java name */
    public static final StatisticActivity.ChartViewData m1730setupAmountListener$lambda12(StakingCalculatorPresenter this$0, Double amount) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this$0.selectedAmount = amount.doubleValue();
        return this$0.mapProfitPrognosis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupAmountListener$lambda-13  reason: not valid java name */
    public static final void m1731setupAmountListener$lambda13(StakingCalculatorPresenter this$0, StatisticActivity.ChartViewData chartViewData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.chartViewData = chartViewData;
        ((StakingCalculatorView) this$0.getViewState()).updateStakingCalculatorViews();
    }

    private final StatisticActivity.ChartViewData mapProfitPrognosis() {
        LongProgression step;
        List<Long> list;
        int collectionSizeOrDefault;
        long j;
        long j2;
        double d;
        StakingDetailsItem stakingDetailsItem = this.selectedStakingProgramme;
        if (stakingDetailsItem == null) {
            return null;
        }
        double selectedAmount = getSelectedAmount() + stakingDetailsItem.getImpact().doubleValue();
        boolean z = selectedAmount >= stakingDetailsItem.getCompoundAccrualThreshold().doubleValue();
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
            if (z) {
                j2 = millis;
                j = max;
                d = (Math.pow(incomePercent + 1.0d, i) - 1) * selectedAmount;
            } else {
                j = max;
                j2 = millis;
                d = i * selectedAmount * incomePercent;
            }
            arrayList.add(Double.valueOf(((int) (d * 100)) / 100.0d));
            max = j;
            millis = j2;
        }
        this.tokenProfitText = Intrinsics.stringPlus("+", TokenBalanceExtKt.getTotalBalanceShortText(TokenBalance.copy$default(TokenBalance.Companion.createEmptyBalanceFor(getTokenInfo()), null, ((Number) CollectionsKt.last((List<? extends Object>) arrayList)).doubleValue(), BitmapDescriptorFactory.HUE_RED, null, null, null, 61, null), this.resourceManager));
        ResourceManager resourceManager = this.resourceManager;
        int i2 = C3158R.string.staking_details_profit;
        StatisticActivity.ChartViewData chartViewData = new StatisticActivity.ChartViewData(resourceManager.getString(i2), 0);
        chartViewData.setup(new ChartData(TelegramStatisticsChartData.Companion.generateJSONObject(this.resourceManager.getString(i2), list, arrayList)));
        return chartViewData;
    }
}
