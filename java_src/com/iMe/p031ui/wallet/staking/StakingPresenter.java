package com.iMe.p031ui.wallet.staking;

import com.iMe.i_staking.StakingInteractor;
import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.staking.StakingPresenter;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.staking.StakingTotalStats;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: StakingPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.StakingPresenter */
/* loaded from: classes6.dex */
public final class StakingPresenter extends BasePresenter<StakingView> {
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private boolean isAllTabRefreshing;
    private boolean isDashboardRefreshing;
    private boolean isParticipatedTabRefreshing;
    private boolean isTotalRefreshing;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final StakingInteractor stakingInteractor;

    /* compiled from: StakingPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.staking.StakingPresenter$WhenMappings */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingTabType.values().length];
            try {
                iArr[StakingTabType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StakingTabType.PARTICIPATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StakingPresenter(HintsPreferenceHelper hintsPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor) {
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
    }

    public final void setupNavigationRouter() {
        ((StakingView) getViewState()).onSetupNavigationRouter();
    }

    public final void selectTab(int i) {
        ((StakingView) getViewState()).onTabSelected(i);
    }

    public final void reload() {
        loadStakingTotalStats$default(this, false, 1, null);
        this.rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
    }

    public final void showStakingInfoHint() {
        HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
        Hint.StakingInfo stakingInfo = Hint.StakingInfo.INSTANCE;
        if (hintsPreferenceHelper.shouldShowHint(stakingInfo)) {
            ((StakingView) getViewState()).showStakingInfoHint();
            this.hintsPreferenceHelper.onHintShowed(stakingInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        listenEvents();
        loadStakingTotalStats(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRefreshState() {
        boolean z = this.isDashboardRefreshing || this.isAllTabRefreshing || this.isParticipatedTabRefreshing;
        if (this.isTotalRefreshing != z) {
            this.isTotalRefreshing = z;
            ((StakingView) getViewState()).showRefreshing(this.isTotalRefreshing);
        }
    }

    static /* synthetic */ void loadStakingTotalStats$default(StakingPresenter stakingPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        stakingPresenter.loadStakingTotalStats(z);
    }

    private final void loadStakingTotalStats(final boolean z) {
        Observable<Result<StakingTotalStats>> observeOn = this.stakingInteractor.getStakingTotalStats().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingTotalStats>, Unit>() { // from class: com.iMe.ui.wallet.staking.StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingTotalStats> result) {
                m1574invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1574invoke(Result<? extends StakingTotalStats> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingTotalStats> result = it;
                boolean z2 = result instanceof Result.Loading;
                StakingPresenter.this.isDashboardRefreshing = z2;
                StakingPresenter.this.updateRefreshState();
                if (result instanceof Result.Success) {
                    StakingTotalStats stakingTotalStats = (StakingTotalStats) ((Result.Success) result).getData();
                    ((StakingView) StakingPresenter.this.getViewState()).updateDashboardItem(new StakingDashboardItem.Data(stakingTotalStats.getTotalStakedUsd(), stakingTotalStats.getTotalProfitUsd()));
                } else if (z2) {
                    if (z) {
                        ((StakingView) StakingPresenter.this.getViewState()).updateDashboardItem(StakingDashboardItem.Loading.INSTANCE);
                    }
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingPresenter.this.resourceManager;
                    ((StakingView) StakingPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingTabRefreshStateChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.StakingTabRefreshStateChanged, Unit>() { // from class: com.iMe.ui.wallet.staking.StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.StakingTabRefreshStateChanged stakingTabRefreshStateChanged) {
                m1573invoke(stakingTabRefreshStateChanged);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1573invoke(DomainRxEvents.StakingTabRefreshStateChanged it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.StakingTabRefreshStateChanged stakingTabRefreshStateChanged = it;
                int i = StakingPresenter.WhenMappings.$EnumSwitchMapping$0[stakingTabRefreshStateChanged.getStakingTabType().ordinal()];
                if (i == 1) {
                    StakingPresenter.this.isAllTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
                } else if (i == 2) {
                    StakingPresenter.this.isParticipatedTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
                }
                StakingPresenter.this.updateRefreshState();
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
