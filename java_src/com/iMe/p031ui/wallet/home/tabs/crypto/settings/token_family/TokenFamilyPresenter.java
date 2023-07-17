package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
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
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
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
        String string = foundTokenItem != null ? this.resourceManager.getString(C3417R.string.wallet_token_family_title, foundTokenItem.getName(), foundTokenItem.getTicker()) : null;
        if (string == null) {
            string = "";
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.tokens);
        tokenFamilyView.setupScreenWithData(string, mutableList);
    }

    private final void subscribeToTokenVisibilitySwitch() {
        Observable<FoundTokenItem> observeOn = this.tokenVisibilitySubject.observeOn(this.schedulersProvider.mo698ui());
        final TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1 tokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1 = new TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1(this);
        Observable observeOn2 = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                FoundTokenItem subscribeToTokenVisibilitySwitch$lambda$1;
                subscribeToTokenVisibilitySwitch$lambda$1 = TokenFamilyPresenter.subscribeToTokenVisibilitySwitch$lambda$1(Function1.this, obj);
                return subscribeToTokenVisibilitySwitch$lambda$1;
            }
        }).debounce(200L, TimeUnit.MILLISECONDS).observeOn(this.schedulersProvider.mo699io());
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
        Disposable subscribe = RxExtKt.withLoadingDialog(scheduleIO, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2354x20db79d6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2355x20db79d7((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
