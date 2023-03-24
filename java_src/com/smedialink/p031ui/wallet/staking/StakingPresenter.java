package com.smedialink.p031ui.wallet.staking;

import com.iMe.i_staking.StakingInteractor;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.model.staking.StakingTotalStats;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
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

    private final void loadStakingTotalStats(boolean z) {
        Observable<Result<StakingTotalStats>> observeOn = this.stakingInteractor.getStakingTotalStats().observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2247xdeaf3e3c(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2248xdeaf3e3d(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingTabRefreshStateChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2245xf624d8f6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2246xf624d8f7(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
