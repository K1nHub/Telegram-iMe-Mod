package com.iMe.p030ui.wallet.fragment.premium;

import android.os.Bundle;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.fragment.TonFragmentProductUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.ton.PremiumPlan;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.TokenBalanceExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ContactsController;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: FragmentPremiumPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter */
/* loaded from: classes4.dex */
public final class FragmentPremiumPresenter extends BasePresenter<FragmentPremiumView> {
    private TokenBalance balance;
    private List<TonFragmentItem.C1533Premium> items;
    private TLRPC$User recipient;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private TonFragmentItem.C1533Premium selectedItem;
    private final TonFragmentInteractor tonFragmentInteractor;
    private final WalletInteractor walletInteractor;

    public FragmentPremiumPresenter(ResourceManager resourceManager, SchedulersProvider schedulersProvider, TonFragmentInteractor tonFragmentInteractor, WalletInteractor walletInteractor) {
        List<TonFragmentItem.C1533Premium> emptyList;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(tonFragmentInteractor, "tonFragmentInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.tonFragmentInteractor = tonFragmentInteractor;
        this.walletInteractor = walletInteractor;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.items = emptyList;
    }

    public final void onSelectContactClick() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("destroyAfterSelect", true);
        bundle.putBoolean("returnAsResult", true);
        bundle.putBoolean("onlyUsers", true);
        bundle.putBoolean("allowSelf", false);
        bundle.putBoolean("allowBots", false);
        bundle.putBoolean("is_choose_premium_gift_recipient", true);
        ((FragmentPremiumView) getViewState()).openChooseContact(bundle);
    }

    public final void onContactSelected(TLRPC$User user) {
        String priceText;
        Intrinsics.checkNotNullParameter(user, "user");
        ((FragmentPremiumView) getViewState()).renderRecipient(user);
        this.recipient = user;
        if (this.selectedItem != null) {
            FragmentPremiumView fragmentPremiumView = (FragmentPremiumView) getViewState();
            ResourceManager resourceManager = this.resourceManager;
            int i = C3632R.string.fragment_premium_gift;
            Object[] objArr = new Object[1];
            TonFragmentItem.C1533Premium c1533Premium = this.selectedItem;
            if (c1533Premium == null || (priceText = c1533Premium.getPriceText()) == null) {
                return;
            }
            objArr[0] = priceText;
            fragmentPremiumView.renderButton(resourceManager.getString(i, objArr), true);
        }
    }

    public final void onProductItemClick(TonFragmentItem.C1533Premium productItem) {
        int collectionSizeOrDefault;
        List<BaseNode> mutableList;
        TonFragmentItem.C1533Premium copy;
        Intrinsics.checkNotNullParameter(productItem, "productItem");
        if (productItem.isChecked()) {
            return;
        }
        List<TonFragmentItem.C1533Premium> list = this.items;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            TonFragmentItem.C1533Premium c1533Premium = (TonFragmentItem.C1533Premium) it.next();
            copy = c1533Premium.copy((r16 & 1) != 0 ? c1533Premium.price : 0.0d, (r16 & 2) != 0 ? c1533Premium.priceText : null, (r16 & 4) != 0 ? c1533Premium.fiatPrice : null, (r16 & 8) != 0 ? c1533Premium.monthsCount : 0, (r16 & 16) != 0 ? c1533Premium.discount : null, (r16 & 32) != 0 ? c1533Premium.isChecked : c1533Premium.getMonthsCount() == productItem.getMonthsCount());
            arrayList.add(copy);
        }
        this.items = arrayList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.items);
        ((FragmentPremiumView) getViewState()).renderItems(mutableList);
        ((FragmentPremiumView) getViewState()).renderButton(this.resourceManager.getString(C3632R.string.fragment_premium_gift, productItem.getPriceText()), this.recipient != null);
        this.selectedItem = productItem;
    }

    public final void onGiftClick() {
        TonFragmentItem.C1533Premium c1533Premium;
        String priceText;
        boolean isBlank;
        TLRPC$User tLRPC$User = this.recipient;
        if (tLRPC$User == null || (c1533Premium = this.selectedItem) == null || (priceText = c1533Premium.getPriceText()) == null) {
            return;
        }
        FragmentPremiumView fragmentPremiumView = (FragmentPremiumView) getViewState();
        String string = this.resourceManager.getString(C3632R.string.fragment_premium_gift_confirmation_title);
        ResourceManager resourceManager = this.resourceManager;
        int i = C3632R.string.fragment_premium_gift_confirmation_description;
        Object[] objArr = new Object[2];
        String formatName = ContactsController.formatName(tLRPC$User);
        isBlank = StringsKt__StringsJVMKt.isBlank(formatName);
        if (isBlank) {
            formatName = tLRPC$User.username;
        }
        Intrinsics.checkNotNullExpressionValue(formatName, "formatName(user).ifBlank { user.username }");
        objArr[0] = formatName;
        objArr[1] = priceText;
        fragmentPremiumView.showConfirmationDialog(new DialogModel(string, resourceManager.getString(i, objArr), this.resourceManager.getString(C3632R.string.common_cancel), this.resourceManager.getString(C3632R.string.wallet_buy_button_action_text)));
    }

    public final void loadPlans() {
        renderGlobalState(GlobalState.Progress.INSTANCE);
        Observable<Result<Boolean>> checkAndPrepareSession = this.tonFragmentInteractor.checkAndPrepareSession();
        final Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends List<? extends PremiumPlan>>>> function1 = new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends List<? extends PremiumPlan>>>>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$loadPlans$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends PremiumPlan>>> invoke(Result<? extends Boolean> result) {
                TonFragmentInteractor tonFragmentInteractor;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                tonFragmentInteractor = FragmentPremiumPresenter.this.tonFragmentInteractor;
                return tonFragmentInteractor.getPremiumPlans();
            }
        };
        Observable<R> flatMap = checkAndPrepareSession.flatMap(new Function(function1) { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "tonFragmentInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends PremiumPlan>>, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends PremiumPlan>> result) {
                m1713invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1713invoke(Result<? extends List<? extends PremiumPlan>> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                List list;
                List list2;
                List<BaseNode> mutableList;
                List list3;
                ResourceManager resourceManager3;
                TLRPC$User tLRPC$User;
                ResourceManager resourceManager4;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends PremiumPlan>> result = it;
                if (result instanceof Result.Success) {
                    FragmentPremiumPresenter fragmentPremiumPresenter = FragmentPremiumPresenter.this;
                    resourceManager2 = FragmentPremiumPresenter.this.resourceManager;
                    fragmentPremiumPresenter.items = TonFragmentProductUiMappingKt.mapPremiumPlanToUi((List) ((Result.Success) result).getData(), resourceManager2);
                    list = FragmentPremiumPresenter.this.items;
                    if (list.isEmpty()) {
                        FragmentPremiumPresenter.this.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
                        resourceManager4 = FragmentPremiumPresenter.this.resourceManager;
                        ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).renderButton(resourceManager4.getString(C3632R.string.common_error), false);
                        return;
                    }
                    list2 = FragmentPremiumPresenter.this.items;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list2);
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).renderItems(mutableList);
                    FragmentPremiumPresenter fragmentPremiumPresenter2 = FragmentPremiumPresenter.this;
                    list3 = fragmentPremiumPresenter2.items;
                    TonFragmentItem.C1533Premium c1533Premium = (TonFragmentItem.C1533Premium) CollectionsKt.firstOrNull((List<? extends Object>) list3);
                    if (c1533Premium != null) {
                        FragmentPremiumView fragmentPremiumView = (FragmentPremiumView) FragmentPremiumPresenter.this.getViewState();
                        resourceManager3 = FragmentPremiumPresenter.this.resourceManager;
                        String string = resourceManager3.getString(C3632R.string.fragment_premium_gift, c1533Premium.getPriceText());
                        tLRPC$User = FragmentPremiumPresenter.this.recipient;
                        fragmentPremiumView.renderButton(string, tLRPC$User != null);
                    } else {
                        c1533Premium = null;
                    }
                    fragmentPremiumPresenter2.selectedItem = c1533Premium;
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    FragmentPremiumPresenter.this.renderGlobalState(error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
                    resourceManager = FragmentPremiumPresenter.this.resourceManager;
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$2
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

    public final void giftPremium() {
        TonFragmentItem.C1533Premium c1533Premium;
        TokenBalance tokenBalance = this.balance;
        double orZero = NumberExtKt.orZero(tokenBalance != null ? Double.valueOf(tokenBalance.getTotal()) : null);
        TonFragmentItem.C1533Premium c1533Premium2 = this.selectedItem;
        if (orZero < NumberExtKt.orZero(c1533Premium2 != null ? Double.valueOf(c1533Premium2.getPrice()) : null)) {
            ((FragmentPremiumView) getViewState()).showActionError(this.resourceManager.getString(C3632R.string.wallet_amount_send_error_insufficient_funds));
            return;
        }
        TonFragmentInteractor tonFragmentInteractor = this.tonFragmentInteractor;
        TLRPC$User tLRPC$User = this.recipient;
        String str = tLRPC$User != null ? tLRPC$User.username : null;
        if (str == null || (c1533Premium = this.selectedItem) == null) {
            return;
        }
        Observable<Result<Boolean>> observeOn = tonFragmentInteractor.sendPremiumGift(str, c1533Premium.getMonthsCount()).observeOn(this.schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "tonFragmentInteractor\n  …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1711invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1711invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).showActionSuccess();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = FragmentPremiumPresenter.this.resourceManager;
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).showActionError(error.getMessage(resourceManager));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((FragmentPremiumView) getViewState()).renderButton(this.resourceManager.getString(C3632R.string.common_progress_state_title), false);
        loadPlans();
        loadBalance();
    }

    private final void loadBalance() {
        Observable observeOn = WalletInteractor.getTokenBalance$default(this.walletInteractor, new Token("", NetworkType.TON), false, NetworkType.TON, 2, null).observeOn(this.schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TokenBalance>, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TokenBalance> result) {
                m1712invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1712invoke(Result<? extends TokenBalance> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TokenBalance> result = it;
                if (result instanceof Result.Success) {
                    FragmentPremiumPresenter fragmentPremiumPresenter = FragmentPremiumPresenter.this;
                    TokenBalance tokenBalance = (TokenBalance) ((Result.Success) result).getData();
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).renderBalance(TokenBalanceExtKt.getTotalBalanceShortText(tokenBalance));
                    fragmentPremiumPresenter.balance = tokenBalance;
                } else if (result instanceof Result.Error) {
                    resourceManager = FragmentPremiumPresenter.this.resourceManager;
                    ((FragmentPremiumView) FragmentPremiumPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.premium.FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2
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
    public final void renderGlobalState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((FragmentPremiumView) getViewState()).renderItems(mutableListOf);
    }
}
