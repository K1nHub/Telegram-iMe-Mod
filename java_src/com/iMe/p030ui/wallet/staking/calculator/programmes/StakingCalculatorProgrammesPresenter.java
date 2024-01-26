package com.iMe.p030ui.wallet.staking.calculator.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.mapper.staking.StakingDetailedMetadataUiMappingKt;
import com.iMe.mapper.staking.StakingMetadataUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.model.state.GlobalState;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.staking.StakingMetadata;
import com.iMe.storage.domain.model.staking.StakingProgrammes;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: StakingCalculatorProgrammesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter */
/* loaded from: classes4.dex */
public final class StakingCalculatorProgrammesPresenter extends BasePresenter<StakingCalculatorProgrammesView> {
    private final List<BaseNode> items;
    private Long lastItemId;
    private final SchedulersProvider schedulersProvider;
    private final StakingInteractor stakingInteractor;
    private final List<StakingMetadata> stakingProgrammes;

    public StakingCalculatorProgrammesPresenter(SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.stakingProgrammes = new ArrayList();
        this.items = new ArrayList();
    }

    public static /* synthetic */ void loadStakingProgrammes$default(StakingCalculatorProgrammesPresenter stakingCalculatorProgrammesPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        stakingCalculatorProgrammesPresenter.loadStakingProgrammes(z, z2);
    }

    public final void loadStakingProgrammes(final boolean z, boolean z2) {
        final boolean z3 = (z || z2) ? false : true;
        if (z3 && this.lastItemId == null) {
            ((StakingCalculatorProgrammesView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<StakingProgrammes>> observeOn = this.stakingInteractor.getStakingProgrammesList(StakingOrderType.DEFAULT, this.lastItemId).observeOn(this.schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "stakingInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingProgrammes>, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingProgrammes> result) {
                m1817invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1817invoke(Result<? extends StakingProgrammes> it) {
                List list;
                List list2;
                List<BaseNode> list3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingProgrammes> result = it;
                if (result instanceof Result.Success) {
                    List<StakingMetadata> programmes = ((StakingProgrammes) ((Result.Success) result).getData()).getProgrammes();
                    StakingCalculatorProgrammesPresenter stakingCalculatorProgrammesPresenter = StakingCalculatorProgrammesPresenter.this;
                    StakingMetadata stakingMetadata = (StakingMetadata) CollectionsKt.lastOrNull((List<? extends Object>) programmes);
                    stakingCalculatorProgrammesPresenter.lastItemId = stakingMetadata != null ? Long.valueOf(stakingMetadata.getId()) : null;
                    if (!programmes.isEmpty()) {
                        list = StakingCalculatorProgrammesPresenter.this.stakingProgrammes;
                        list.addAll(programmes);
                        list2 = StakingCalculatorProgrammesPresenter.this.items;
                        list2.addAll(StakingMetadataUiMappingKt.mapToUi(programmes));
                        list3 = StakingCalculatorProgrammesPresenter.this.items;
                        ((StakingCalculatorProgrammesView) StakingCalculatorProgrammesPresenter.this.getViewState()).renderItems(list3);
                        return;
                    }
                    if (!z3) {
                        StakingCalculatorProgrammesPresenter.this.renderGlobalStateItemsList(GlobalState.Empty.Staking.INSTANCE);
                    }
                    ((StakingCalculatorProgrammesView) StakingCalculatorProgrammesPresenter.this.getViewState()).onLoadMoreComplete();
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        StakingCalculatorProgrammesPresenter.this.renderGlobalStateItemsList(GlobalState.Progress.INSTANCE);
                    }
                } else if (result instanceof Result.Error) {
                    if (z3) {
                        ((StakingCalculatorProgrammesView) StakingCalculatorProgrammesPresenter.this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        StakingCalculatorProgrammesPresenter.this.renderGlobalStateItemsList(GlobalState.NoInternet.INSTANCE);
                    } else {
                        StakingCalculatorProgrammesPresenter.this.renderGlobalStateItemsList(GlobalState.Unexpected.INSTANCE);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onStakingProgrammeClick(StakingProgrammeItem stakingProgrammeItem) {
        Object obj;
        StakingDetailsItem mapToUi;
        boolean z;
        Intrinsics.checkNotNullParameter(stakingProgrammeItem, "stakingProgrammeItem");
        Iterator<T> it = this.stakingProgrammes.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((StakingMetadata) obj).getId() == stakingProgrammeItem.getId()) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        StakingMetadata stakingMetadata = (StakingMetadata) obj;
        if (stakingMetadata == null || (mapToUi = StakingDetailedMetadataUiMappingKt.mapToUi(stakingMetadata)) == null) {
            return;
        }
        ((StakingCalculatorProgrammesView) getViewState()).onStakingSelected(mapToUi);
    }

    public final void onStakingInfoClick(StakingProgrammeItem stakingProgrammeItem) {
        Object obj;
        StakingDetailsItem mapToUi;
        boolean z;
        Intrinsics.checkNotNullParameter(stakingProgrammeItem, "stakingProgrammeItem");
        Iterator<T> it = this.stakingProgrammes.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((StakingMetadata) obj).getId() == stakingProgrammeItem.getId()) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        StakingMetadata stakingMetadata = (StakingMetadata) obj;
        if (stakingMetadata == null || (mapToUi = StakingDetailedMetadataUiMappingKt.mapToUi(stakingMetadata)) == null) {
            return;
        }
        ((StakingCalculatorProgrammesView) getViewState()).showStakingConditionsDialog(mapToUi);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadStakingProgrammes$default(this, true, false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalStateItemsList(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((StakingCalculatorProgrammesView) getViewState()).renderItems(mutableListOf);
    }
}
