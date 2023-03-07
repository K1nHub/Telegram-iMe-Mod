package com.smedialink.p031ui.wallet.staking;

import com.iMe.i_staking.StakingInteractor;
import com.smedialink.model.staking.StakingDashboardItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.staking.StakingPresenter;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.model.staking.StakingTotalStats;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: StakingPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.StakingPresenter */
/* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.staking.StakingPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingTabType.values().length];
            iArr[StakingTabType.ALL.ordinal()] = 1;
            iArr[StakingTabType.PARTICIPATED.ordinal()] = 2;
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
        Observable<Result<StakingTotalStats>> observeOn = this.stakingInteractor.getStakingTotalStats().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = StakingPresenter.this.resourceManager;
                    ((StakingView) StakingPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingTabRefreshStateChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.StakingTabRefreshStateChanged stakingTabRefreshStateChanged = (DomainRxEvents.StakingTabRefreshStateChanged) it;
                int i = StakingPresenter.WhenMappings.$EnumSwitchMapping$0[stakingTabRefreshStateChanged.getStakingTabType().ordinal()];
                if (i == 1) {
                    StakingPresenter.this.isAllTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
                } else if (i == 2) {
                    StakingPresenter.this.isParticipatedTabRefreshing = stakingTabRefreshStateChanged.isShowRefresh();
                }
                StakingPresenter.this.updateRefreshState();
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
