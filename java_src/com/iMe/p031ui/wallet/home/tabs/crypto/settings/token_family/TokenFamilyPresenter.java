package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import timber.log.Timber;
/* compiled from: TokenFamilyPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter */
/* loaded from: classes4.dex */
public final class TokenFamilyPresenter extends BasePresenter<TokenFamilyView> {
    private final List<FoundTokenItem> foundTokens;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final PublishSubject<FoundTokenItem> tokenVisibilitySubject;
    private List<FoundTokenItem> tokens;
    private final WalletInteractor walletInteractor;

    public TokenFamilyPresenter(List<FoundTokenItem> foundTokens, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(foundTokens, "foundTokens");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.foundTokens = foundTokens;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        PublishSubject<FoundTokenItem> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.tokenVisibilitySubject = create;
        this.tokens = foundTokens;
    }

    public final void onTokenClicked(FoundTokenItem foundTokenItem) {
        Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
        this.tokenVisibilitySubject.onNext(foundTokenItem);
    }

    public final void onDismiss() {
        if (Intrinsics.areEqual(this.tokens, this.foundTokens)) {
            return;
        }
        this.rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(null, false, 3, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        List<BaseNode> mutableList;
        subscribeToTokenVisibilitySwitch();
        TokenFamilyView tokenFamilyView = (TokenFamilyView) getViewState();
        FoundTokenItem foundTokenItem = (FoundTokenItem) CollectionsKt.firstOrNull(this.tokens);
        String string = foundTokenItem != null ? this.resourceManager.getString(C3558R.string.wallet_token_family_title, foundTokenItem.getName(), foundTokenItem.getTicker()) : null;
        if (string == null) {
            string = "";
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.tokens);
        tokenFamilyView.setupScreenWithData(string, mutableList);
    }

    private final void subscribeToTokenVisibilitySwitch() {
        Observable<FoundTokenItem> observeOn = this.tokenVisibilitySubject.observeOn(this.schedulersProvider.mo716ui());
        final Function1<FoundTokenItem, FoundTokenItem> function1 = new Function1<FoundTokenItem, FoundTokenItem>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final FoundTokenItem invoke(FoundTokenItem foundTokenItem) {
                List<FoundTokenItem> list;
                int collectionSizeOrDefault;
                List list2;
                List<BaseNode> mutableList;
                Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
                TokenFamilyPresenter tokenFamilyPresenter = TokenFamilyPresenter.this;
                list = tokenFamilyPresenter.tokens;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (FoundTokenItem foundTokenItem2 : list) {
                    if (Intrinsics.areEqual(foundTokenItem2.getAddress(), foundTokenItem.getAddress())) {
                        foundTokenItem2 = foundTokenItem2.copy((r20 & 1) != 0 ? foundTokenItem2.name : null, (r20 & 2) != 0 ? foundTokenItem2.ticker : null, (r20 & 4) != 0 ? foundTokenItem2.address : null, (r20 & 8) != 0 ? foundTokenItem2.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem2.networkId : null, (r20 & 32) != 0 ? foundTokenItem2.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem2.isEnabled : !foundTokenItem2.isEnabled(), (r20 & 128) != 0 ? foundTokenItem2.isCustom : false, (r20 & 256) != 0 ? foundTokenItem2.isSwitchable : false);
                    }
                    arrayList.add(foundTokenItem2);
                }
                tokenFamilyPresenter.tokens = arrayList;
                list2 = TokenFamilyPresenter.this.tokens;
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list2);
                ((TokenFamilyView) TokenFamilyPresenter.this.getViewState()).renderData(mutableList);
                return foundTokenItem;
            }
        };
        Observable observeOn2 = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$1;
                subscribeToTokenVisibilitySwitch$lambda$1 = TokenFamilyPresenter.subscribeToTokenVisibilitySwitch$lambda$1(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$1;
            }
        }).debounce(200L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo717io());
        final TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$2 tokenFamilyPresenter$subscribeToTokenVisibilitySwitch$2 = new TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$2(this);
        Observable flatMap = observeOn2.flatMap(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToTokenVisibilitySwitch$lambda$2;
                subscribeToTokenVisibilitySwitch$lambda$2 = TokenFamilyPresenter.subscribeToTokenVisibilitySwitch$lambda$2(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "private fun subscribeToT…     .autoDispose()\n    }");
        Observable scheduleIO = SchedulersExtKt.scheduleIO(flatMap);
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog(scheduleIO, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair) {
                m1568invoke(pair);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1568invoke(Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> it) {
                ResourceManager resourceManager;
                List<FoundTokenItem> list;
                int collectionSizeOrDefault;
                List list2;
                List<BaseNode> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> pair = it;
                Result<? extends Boolean> result = pair.component1();
                FoundTokenItem component2 = pair.component2();
                if (result instanceof Result.Error) {
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    resourceManager = TokenFamilyPresenter.this.resourceManager;
                    ((TokenFamilyView) TokenFamilyPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                    TokenFamilyPresenter tokenFamilyPresenter = TokenFamilyPresenter.this;
                    list = tokenFamilyPresenter.tokens;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (FoundTokenItem foundTokenItem : list) {
                        if (Intrinsics.areEqual(foundTokenItem.getAddress(), component2.getAddress())) {
                            foundTokenItem = foundTokenItem.copy((r20 & 1) != 0 ? foundTokenItem.name : null, (r20 & 2) != 0 ? foundTokenItem.ticker : null, (r20 & 4) != 0 ? foundTokenItem.address : null, (r20 & 8) != 0 ? foundTokenItem.tokenLogoUrl : null, (r20 & 16) != 0 ? foundTokenItem.networkId : null, (r20 & 32) != 0 ? foundTokenItem.networkLogoUrl : null, (r20 & 64) != 0 ? foundTokenItem.isEnabled : !foundTokenItem.isEnabled(), (r20 & 128) != 0 ? foundTokenItem.isCustom : false, (r20 & 256) != 0 ? foundTokenItem.isSwitchable : false);
                        }
                        arrayList.add(foundTokenItem);
                    }
                    tokenFamilyPresenter.tokens = arrayList;
                    list2 = TokenFamilyPresenter.this.tokens;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list2);
                    ((TokenFamilyView) TokenFamilyPresenter.this.getViewState()).renderData(mutableList);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (FoundTokenItem) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToTokenVisibilitySwitch$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }
}
