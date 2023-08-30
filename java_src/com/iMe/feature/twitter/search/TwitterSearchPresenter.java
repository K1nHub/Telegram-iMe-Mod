package com.iMe.feature.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.twitter.TwitterInviteItem;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.twitter.TwitterUserInfo;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: TwitterSearchPresenter.kt */
@InjectViewState
/* loaded from: classes3.dex */
public final class TwitterSearchPresenter extends BasePresenter<TwitterSearchView> {
    private final BlockchainType blockchainType;
    private final CryptoRecipientManager cryptoRecipientManager;
    private final List<BaseNode> items;
    private int page;
    private final long profileId;
    private String query;
    private final PublishSubject<String> querySubject;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TwitterInteractor twitterInteractor;
    private final TwitterPreferenceHelper twitterPreferenceHelper;

    static {
        new Companion(null);
    }

    public void loadAddressInfoById(String recipient, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.cryptoRecipientManager.loadAddressInfoById(recipient, blockchainType);
    }

    public TwitterSearchPresenter(TelegramGateway telegramGateway, BlockchainType blockchainType, CryptoRecipientManager cryptoRecipientManager, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramApi telegramApi, TelegramControllersGateway telegramControllersGateway, TwitterInteractor twitterInteractor, TwitterPreferenceHelper twitterPreferenceHelper) {
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(cryptoRecipientManager, "cryptoRecipientManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(twitterInteractor, "twitterInteractor");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        this.blockchainType = blockchainType;
        this.cryptoRecipientManager = cryptoRecipientManager;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        this.telegramControllersGateway = telegramControllersGateway;
        this.twitterInteractor = twitterInteractor;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
        this.items = new ArrayList();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        this.profileId = telegramGateway.getSelectedAccountId();
        this.page = 1;
        this.query = "";
    }

    public final void reload() {
        this.page = 1;
        this.items.clear();
        searchByQuery(true);
    }

    public static /* synthetic */ void searchByQuery$default(TwitterSearchPresenter twitterSearchPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        twitterSearchPresenter.searchByQuery(z);
    }

    public final void searchByQuery(final boolean z) {
        final boolean z2 = !z;
        if (z2 || this.page > 1) {
            ((TwitterSearchView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<List<BaseNode>>> observeOn = getSearchObservable().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getSearchObservable()\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BaseNode>>, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BaseNode>> result) {
                m1202invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1202invoke(Result<? extends List<? extends BaseNode>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BaseNode>> result = it;
                if (result instanceof Result.Success) {
                    TwitterSearchPresenter.this.onSearchSuccess((List) ((Result.Success) result).getData(), z2, z);
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                    }
                } else if (result instanceof Result.Error) {
                    if (z2) {
                        ((TwitterSearchView) TwitterSearchPresenter.this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.NoInternet.INSTANCE);
                    } else {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.Unexpected.INSTANCE);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onQueryUpdate(String newQuery) {
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.querySubject.onNext(newQuery);
    }

    public final void onUserClick(final TwitterUserItem twitterUserItem) {
        Intrinsics.checkNotNullParameter(twitterUserItem, "twitterUserItem");
        Observable<Result<TwitterProfileInfo>> observeOn = this.twitterInteractor.getUserByUsername(twitterUserItem.getNickname()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends TwitterProfileInfo>, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends TwitterProfileInfo> result) {
                m1201invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1201invoke(Result<? extends TwitterProfileInfo> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                BlockchainType blockchainType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends TwitterProfileInfo> result = it;
                if (result instanceof Result.Success) {
                    if (((TwitterProfileInfo) ((Result.Success) result).getData()).getTelegramUserId() != TwitterUserItem.this.getUser().f1694id) {
                        resourceManager2 = this.resourceManager;
                        ((TwitterSearchView) this.getViewState()).showToast(resourceManager2.getString(C3558R.string.common_error_unexpected));
                        return;
                    }
                    TwitterSearchPresenter twitterSearchPresenter = this;
                    String valueOf = String.valueOf(TwitterUserItem.this.getUser().f1694id);
                    blockchainType = this.blockchainType;
                    twitterSearchPresenter.loadAddressInfoById(valueOf, blockchainType);
                } else if (result instanceof Result.Error) {
                    resourceManager = this.resourceManager;
                    ((TwitterSearchView) this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$2
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
        })), "viewState: BaseView? = n….invoke(error)\n        })");
    }

    public final void onInviteClick(TwitterInviteItem twitterInviteItem) {
        Intrinsics.checkNotNullParameter(twitterInviteItem, "twitterInviteItem");
        ((TwitterSearchView) getViewState()).showInviteConfirmationDialog(new DialogModel(this.resourceManager.getString(C3558R.string.twitter_search_invite_confirmation_title), this.resourceManager.getString(C3558R.string.twitter_search_invite_confirmation_description, twitterInviteItem.getNickname()), LocaleController.getString("Cancel", C3558R.string.Cancel), LocaleController.getString("Send", C3558R.string.Send)), twitterInviteItem.getId());
    }

    public final void sendInvite(long j) {
        Observable<Result<Boolean>> observeOn = this.twitterInteractor.sendInvite(this.profileId, j).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1203invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1203invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    resourceManager3 = TwitterSearchPresenter.this.resourceManager;
                    ((TwitterSearchView) TwitterSearchPresenter.this.getViewState()).showToast(resourceManager3.getString(C3558R.string.twitter_search_invite_success));
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.TwitterErrorStatus.TWITTER_USER_DISABLED_DIRECT_MESSAGES) {
                        resourceManager2 = TwitterSearchPresenter.this.resourceManager;
                        ((TwitterSearchView) TwitterSearchPresenter.this.getViewState()).showToast(resourceManager2.getString(C3558R.string.twitter_search_invite_direct_messages_error));
                        return;
                    }
                    resourceManager = TwitterSearchPresenter.this.resourceManager;
                    ((TwitterSearchView) TwitterSearchPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void processSelectedRecipient(String id, String address) {
        Object obj;
        Long longOrNull;
        boolean z;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(address, "address");
        List<BaseNode> list = this.items;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 instanceof TwitterUserItem) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            long j = ((TwitterUserItem) obj).getUser().f1694id;
            longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(id);
            if (longOrNull != null && j == longOrNull.longValue()) {
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
        TwitterUserItem twitterUserItem = (TwitterUserItem) obj;
        if (twitterUserItem == null) {
            return;
        }
        ((TwitterSearchView) getViewState()).onUserSelected(twitterUserItem, address);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        CryptoRecipientManager cryptoRecipientManager = this.cryptoRecipientManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        cryptoRecipientManager.attachViewState((CryptoRecipientView) viewState);
        subscribeToQueryChanges();
        renderGlobalState(GlobalState.Empty.TwitterSearch.INSTANCE);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    private final void subscribeToQueryChanges() {
        Observable<String> debounce = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS);
        final TwitterSearchPresenter$subscribeToQueryChanges$1 twitterSearchPresenter$subscribeToQueryChanges$1 = new Function1<String, String>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String rawQuery) {
                CharSequence trim;
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                trim = StringsKt__StringsKt.trim(rawQuery);
                String obj = trim.toString();
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < obj.length(); i++) {
                    char charAt = obj.charAt(i);
                    if (!Intrinsics.areEqual(String.valueOf(charAt), "@")) {
                        sb.append(charAt);
                    }
                }
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "filterNotTo(StringBuilder(), predicate).toString()");
                return sb2;
            }
        };
        Observable observeOn = debounce.map(new Function() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                String subscribeToQueryChanges$lambda$4;
                subscribeToQueryChanges$lambda$4 = TwitterSearchPresenter.subscribeToQueryChanges$lambda$4(Function1.this, obj);
                return subscribeToQueryChanges$lambda$4;
            }
        }).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String rawQuery) {
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                boolean z = true;
                if (rawQuery.length() == 0) {
                    TwitterSearchPresenter.this.renderGlobalState(GlobalState.Empty.TwitterSearch.INSTANCE);
                } else {
                    if (rawQuery.length() < 4) {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
                    }
                    return Boolean.valueOf(z);
                }
                z = false;
                return Boolean.valueOf(z);
            }
        };
        Observable observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$5;
                subscribeToQueryChanges$lambda$5 = TwitterSearchPresenter.subscribeToQueryChanges$lambda$5(Function1.this, obj);
                return subscribeToQueryChanges$lambda$5;
            }
        }).observeOn(this.schedulersProvider.mo717io());
        final Function1<String, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> function12 = new Function1<String, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<BaseNode>>> invoke(String newQuery) {
                List list;
                Observable searchObservable;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                TwitterSearchPresenter.this.query = newQuery;
                TwitterSearchPresenter.this.page = 1;
                list = TwitterSearchPresenter.this.items;
                list.clear();
                searchObservable = TwitterSearchPresenter.this.getSearchObservable();
                return searchObservable;
            }
        };
        Observable observeOn3 = observeOn2.switchMap(new Function() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$6;
                subscribeToQueryChanges$lambda$6 = TwitterSearchPresenter.subscribeToQueryChanges$lambda$6(Function1.this, obj);
                return subscribeToQueryChanges$lambda$6;
            }
        }).subscribeOn(this.schedulersProvider.mo717io()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn3, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = observeOn3.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BaseNode>>, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BaseNode>> result) {
                m1204invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1204invoke(Result<? extends List<? extends BaseNode>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BaseNode>> result = it;
                if (result instanceof Result.Success) {
                    TwitterSearchPresenter.this.onSearchSuccess((List) ((Result.Success) result).getData(), false, false);
                } else if (result instanceof Result.Loading) {
                    TwitterSearchPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.NoInternet.INSTANCE);
                    } else {
                        TwitterSearchPresenter.this.renderGlobalState(GlobalState.Unexpected.INSTANCE);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToQueryChanges$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToQueryChanges$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToQueryChanges$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<BaseNode>>> getSearchObservable() {
        Observable<Result<List<TwitterUserInfo>>> searchUsersByUsername = this.twitterInteractor.searchUsersByUsername(this.query, this.page);
        final Function1<Result<? extends List<? extends TwitterUserInfo>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> function1 = new Function1<Result<? extends List<? extends TwitterUserInfo>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends BaseNode>>> invoke(Result<? extends List<? extends TwitterUserInfo>> result) {
                Observable flatMapSearchResult;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                flatMapSearchResult = TwitterSearchPresenter.this.flatMapSearchResult(result);
                return flatMapSearchResult;
            }
        };
        Observable<R> flatMap = searchUsersByUsername.flatMap(new Function(function1) { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$inlined$sam$i$io_reactivex_functions_Function$0
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
        Observable<Result<List<BaseNode>>> startWith = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "twitterInteractor\n      …artWith(Result.loading())");
        return startWith;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<BaseNode>>> flatMapSearchResult(Result<? extends List<TwitterUserInfo>> result) {
        List emptyList;
        final List<TwitterUserInfo> data = result.getData();
        if (data == null) {
            data = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (TwitterUserInfo twitterUserInfo : data) {
            Long telegramUserId = twitterUserInfo.getTelegramUserId();
            if (telegramUserId != null) {
                arrayList.add(telegramUserId);
            }
        }
        if (arrayList.isEmpty()) {
            if ((!data.isEmpty()) && this.twitterPreferenceHelper.getAccountsData().getDataByTelegramId(this.profileId) != null) {
                TwitterUserInfo twitterUserInfo2 = (TwitterUserInfo) CollectionsKt.first((List<? extends Object>) data);
                long twitterUserId = twitterUserInfo2.getTwitterUserId();
                emptyList = CollectionsKt__CollectionsJVMKt.listOf(new TwitterInviteItem(twitterUserId, '@' + twitterUserInfo2.getTwitterUsername()));
            } else {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            Observable<Result<List<BaseNode>>> just = Observable.just(Result.Companion.success(emptyList));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        Observable<List<TLRPC$User>> observeOn = this.telegramApi.getUsersByIds(arrayList).observeOn(this.schedulersProvider.mo716ui());
        final Function1<List<? extends TLRPC$User>, Result<? extends List<? extends BaseNode>>> function1 = new Function1<List<? extends TLRPC$User>, Result<? extends List<? extends BaseNode>>>() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$flatMapSearchResult$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<List<BaseNode>> invoke(List<? extends TLRPC$User> users) {
                Object obj;
                boolean z;
                Intrinsics.checkNotNullParameter(users, "users");
                List<TwitterUserInfo> list = data;
                ArrayList arrayList2 = new ArrayList();
                for (TLRPC$User tLRPC$User : users) {
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        Long telegramUserId2 = ((TwitterUserInfo) obj).getTelegramUserId();
                        long j = tLRPC$User.f1694id;
                        if (telegramUserId2 != null && telegramUserId2.longValue() == j) {
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
                    TwitterUserInfo twitterUserInfo3 = (TwitterUserInfo) obj;
                    TwitterUserItem twitterUserItem = twitterUserInfo3 != null ? new TwitterUserItem(tLRPC$User, twitterUserInfo3.getTwitterName(), twitterUserInfo3.getTwitterUsername(), twitterUserInfo3.getTwitterAvatarUrl()) : null;
                    if (twitterUserItem != null) {
                        arrayList2.add(twitterUserItem);
                    }
                }
                return Result.Companion.success(arrayList2);
            }
        };
        Observable map = observeOn.map(new Function() { // from class: com.iMe.feature.twitter.search.TwitterSearchPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result flatMapSearchResult$lambda$11;
                flatMapSearchResult$lambda$11 = TwitterSearchPresenter.flatMapSearchResult$lambda$11(Function1.this, obj);
                return flatMapSearchResult$lambda$11;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "twitterProfiles = search…              }\n        }");
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result flatMapSearchResult$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSearchSuccess(List<? extends BaseNode> list, boolean z, boolean z2) {
        if (list.isEmpty()) {
            if (!z) {
                renderGlobalState(GlobalState.Empty.Common.INSTANCE);
            }
            ((TwitterSearchView) getViewState()).onLoadMoreComplete();
            this.page = 1;
            return;
        }
        this.page++;
        if (z2) {
            this.items.clear();
        }
        this.items.addAll(list);
        ((TwitterSearchView) getViewState()).renderItems(this.items);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((TwitterSearchView) getViewState()).renderItems(mutableListOf);
    }

    /* compiled from: TwitterSearchPresenter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
