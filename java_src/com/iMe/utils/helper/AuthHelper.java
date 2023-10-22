package com.iMe.utils.helper;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Bots;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.firebase.RemoteConfigInteractor;
import com.iMe.storage.domain.interactor.wallet.SessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$ReplyMarkup;
import org.telegram.tgnet.TLRPC$TL_keyboardButtonRow;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: AuthHelper.kt */
/* loaded from: classes4.dex */
public final class AuthHelper implements KoinComponent, NotificationCenter.NotificationCenterDelegate {
    public static final AuthHelper INSTANCE;
    private static final long authBotId;
    private static final PublishSubject<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> authSubject;
    private static int currentAccountIndex;
    private static Delegate delegate;
    private static boolean isAuthProcessing;
    private static boolean isAuthVisible;
    private static boolean isBotMutedByOriginal;
    private static final Lazy remoteConfigInteractor$delegate;
    private static final Lazy resourceManager$delegate;
    private static final Lazy schedulersProvider$delegate;
    private static final Lazy sessionInteractor$delegate;
    private static final CompositeDisposable subscriptions;
    private static final Lazy telegramApi$delegate;
    private static final Lazy telegramControllersGateway$delegate;

    /* compiled from: AuthHelper.kt */
    /* loaded from: classes4.dex */
    public interface Delegate {
        void hideLoadingDialog();

        void onAuthSuccess();

        void showLoadingDialog(Callbacks$Callback callbacks$Callback);

        void showToast(String str);
    }

    private AuthHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final boolean isAuthProcessing() {
        return isAuthProcessing;
    }

    private final RemoteConfigInteractor getRemoteConfigInteractor() {
        return (RemoteConfigInteractor) remoteConfigInteractor$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    private final SchedulersProvider getSchedulersProvider() {
        return (SchedulersProvider) schedulersProvider$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TelegramApi getTelegramApi() {
        return (TelegramApi) telegramApi$delegate.getValue();
    }

    private final TelegramControllersGateway getTelegramControllersGateway() {
        return (TelegramControllersGateway) telegramControllersGateway$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionInteractor getSessionInteractor() {
        return (SessionInteractor) sessionInteractor$delegate.getValue();
    }

    private final MessagesController getMessagesController() {
        return getTelegramControllersGateway().getMessagesController(currentAccountIndex);
    }

    private final NotificationCenter getNotificationCenter() {
        return getTelegramControllersGateway().getNotificationCenterInstance(currentAccountIndex);
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        final AuthHelper authHelper = new AuthHelper();
        INSTANCE = authHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<RemoteConfigInteractor>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.interactor.firebase.RemoteConfigInteractor, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final RemoteConfigInteractor invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(RemoteConfigInteractor.class), qualifier, function0);
            }
        });
        remoteConfigInteractor$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        resourceManager$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SchedulersProvider>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.SchedulersProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SchedulersProvider invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), qualifier, function0);
            }
        });
        schedulersProvider$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramApi>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.manager.TelegramApi, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramApi invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), qualifier, function0);
            }
        });
        telegramApi$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramControllersGateway>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.gateway.TelegramControllersGateway, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramControllersGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramControllersGateway.class), qualifier, function0);
            }
        });
        telegramControllersGateway$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SessionInteractor>() { // from class: com.iMe.utils.helper.AuthHelper$special$$inlined$inject$default$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.interactor.wallet.SessionInteractor, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SessionInteractor invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SessionInteractor.class), qualifier, function0);
            }
        });
        sessionInteractor$delegate = lazy6;
        PublishSubject<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        authSubject = create;
        authBotId = AppConfiguration$Bots.getAuthBotId();
        subscriptions = new CompositeDisposable();
        currentAccountIndex = -1;
    }

    private final NotificationsController getNotificationsController() {
        return getTelegramControllersGateway().getNotificationsController(currentAccountIndex);
    }

    private final SendMessagesHelper getSendMessagesHelper() {
        return getTelegramControllersGateway().getSendMessagesHelper(currentAccountIndex);
    }

    private final boolean isAuthBotBlocked() {
        return getMessagesController().blockePeers.indexOfKey(authBotId) >= 0;
    }

    public static /* synthetic */ void auth$default(Delegate delegate2, boolean z, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = -1;
        }
        auth(delegate2, z, i);
    }

    public static final void auth(Delegate delegate2, boolean z, int i) {
        Intrinsics.checkNotNullParameter(delegate2, "delegate");
        AuthHelper authHelper = INSTANCE;
        delegate = delegate2;
        isAuthVisible = z;
        currentAccountIndex = i;
        isAuthProcessing = true;
        authHelper.subscribeToAuthSubject();
        if (z) {
            authHelper.prepareAndStartAuthFlow();
        } else {
            authHelper.runHiddenAuthWithRemoteConfigCheck();
        }
    }

    public static final void onDestroy() {
        subscriptions.clear();
        delegate = null;
    }

    public static /* synthetic */ void manualAuth$default(Delegate delegate2, boolean z, int i, MessageObject messageObject, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = -1;
        }
        manualAuth(delegate2, z, i, messageObject);
    }

    public static final void manualAuth(Delegate delegate2, boolean z, int i, MessageObject botAuthButtonMessage) {
        Intrinsics.checkNotNullParameter(delegate2, "delegate");
        Intrinsics.checkNotNullParameter(botAuthButtonMessage, "botAuthButtonMessage");
        AuthHelper authHelper = INSTANCE;
        delegate = delegate2;
        isAuthVisible = z;
        currentAccountIndex = i;
        authHelper.subscribeToAuthSubject();
        authHelper.runAuthButtonAction(botAuthButtonMessage, true);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        List list;
        boolean z;
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.didReceiveNewMessages) {
            Long l = (Long) args[0];
            long j = authBotId;
            if (l != null && l.longValue() == j) {
                Object obj = args[1];
                Object obj2 = null;
                ArrayList arrayList = obj instanceof ArrayList ? (ArrayList) obj : null;
                if (arrayList != null) {
                    list = new ArrayList();
                    for (Object obj3 : arrayList) {
                        if (obj3 instanceof MessageObject) {
                            list.add(obj3);
                        }
                    }
                } else {
                    list = null;
                }
                if (list == null) {
                    list = CollectionsKt__CollectionsKt.emptyList();
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj4 : list) {
                    if (((MessageObject) obj4).messageOwner.from_id.user_id == authBotId) {
                        arrayList2.add(obj4);
                    }
                }
                Iterator it = arrayList2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    StringBuilder sb = ((MessageObject) next).botButtonsLayout;
                    Intrinsics.checkNotNullExpressionValue(sb, "messageObject.botButtonsLayout");
                    if (sb.length() > 0) {
                        z = true;
                        continue;
                    } else {
                        z = false;
                        continue;
                    }
                    if (z) {
                        obj2 = next;
                        break;
                    }
                }
                runAuthButtonAction((MessageObject) obj2, false);
            }
        }
    }

    private final void runHiddenAuthWithRemoteConfigCheck() {
        Single<Result<Boolean>> observeOn = getRemoteConfigInteractor().getBoolean("auto_auth_enabled").observeOn(getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "remoteConfigInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.utils.helper.AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1870invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1870invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                        AuthHelper.INSTANCE.prepareAndStartAuthFlow();
                        return;
                    }
                    AuthHelper authHelper = AuthHelper.INSTANCE;
                    AuthHelper.isAuthProcessing = false;
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.utils.helper.AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        RxExtKt.autoDispose(subscribe, subscriptions);
    }

    private final void runAuthButtonAction(MessageObject messageObject, boolean z) {
        TLRPC$KeyboardButton messageObjectButton = getMessageObjectButton(messageObject);
        if (messageObjectButton != null) {
            if (!z) {
                getNotificationCenter().removeObserver(this, NotificationCenter.didReceiveNewMessages);
            }
            getSendMessagesHelper().sendCallback(true, messageObject, messageObjectButton, null, null, null, new Callbacks$Callback2() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda2
                @Override // com.iMe.fork.utils.Callbacks$Callback2
                public final void invoke(Object obj, Object obj2) {
                    AuthHelper.runAuthButtonAction$lambda$3((String) obj, (TLRPC$TL_messages_requestUrlAuth) obj2);
                }
            });
        } else if (z) {
            onError$default(this, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runAuthButtonAction$lambda$3(String str, TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth) {
        authSubject.onNext(Result.Companion.success(TuplesKt.m144to(str, tLRPC$TL_messages_requestUrlAuth)));
    }

    private final TLRPC$KeyboardButton getMessageObjectButton(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup;
        ArrayList<TLRPC$TL_keyboardButtonRow> arrayList;
        TLRPC$TL_keyboardButtonRow tLRPC$TL_keyboardButtonRow;
        ArrayList<TLRPC$KeyboardButton> arrayList2;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || (tLRPC$ReplyMarkup = tLRPC$Message.reply_markup) == null || (arrayList = tLRPC$ReplyMarkup.rows) == null || (tLRPC$TL_keyboardButtonRow = (TLRPC$TL_keyboardButtonRow) CollectionsKt.firstOrNull((List<? extends Object>) arrayList)) == null || (arrayList2 = tLRPC$TL_keyboardButtonRow.buttons) == null) {
            return null;
        }
        return (TLRPC$KeyboardButton) CollectionsKt.firstOrNull((List<? extends Object>) arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void prepareAndStartAuthFlow() {
        Observable<TLRPC$User> observeOn = getTelegramApi().getUserInfoByUsername(AppConfiguration$Bots.getAuthBotUsername()).observeOn(getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        RxExtKt.autoDispose(subscribeWithCommonErrorHandling(observeOn, new Callbacks$Callback1() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                AuthHelper.prepareAndStartAuthFlow$lambda$5((TLRPC$User) obj);
            }
        }), subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAndStartAuthFlow$lambda$5(TLRPC$User tLRPC$User) {
        if (tLRPC$User != null) {
            AuthHelper authHelper = INSTANCE;
            if (authHelper.isAuthBotBlocked()) {
                authHelper.getMessagesController().unblockPeer(authBotId, new Runnable() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        AuthHelper.prepareAndStartAuthFlow$lambda$5$lambda$4();
                    }
                });
                return;
            } else {
                authHelper.startAuthFlow();
                return;
            }
        }
        onError$default(INSTANCE, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAndStartAuthFlow$lambda$5$lambda$4() {
        AuthHelper authHelper = INSTANCE;
        if (authHelper.isAuthBotBlocked()) {
            onError$default(authHelper, null, 1, null);
        } else {
            authHelper.startAuthFlow();
        }
    }

    private final void startAuthFlow() {
        MessagesController messagesController = getMessagesController();
        long j = authBotId;
        isBotMutedByOriginal = messagesController.isDialogMuted(j, 0);
        getNotificationsController().muteDialog(j, 0, true);
        getMessagesController().setAuthBotHidden(true);
        getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
        getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m90of("/start", j, null, null, null, false, null, null, null, true, 0, null, false, null));
    }

    private final void subscribeToAuthSubject() {
        CompositeDisposable compositeDisposable = subscriptions;
        compositeDisposable.clear();
        Observable<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> take = authSubject.hide().timeout(60L, TimeUnit.SECONDS).take(1L);
        Intrinsics.checkNotNullExpressionValue(take, "authSubject\n            …NDS)\n            .take(1)");
        final Function1<Result<? extends Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth>>, ObservableSource<? extends Result<? extends SessionTokens>>> function1 = new Function1<Result<? extends Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth>>, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.utils.helper.AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1
            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(Result<? extends Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth>> result) {
                SessionInteractor sessionInteractor;
                TelegramApi telegramApi;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth> data = result.getData();
                String first = data != null ? data.getFirst() : null;
                if (first == null) {
                    first = "";
                }
                Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth> data2 = result.getData();
                TLRPC$TL_messages_requestUrlAuth second = data2 != null ? data2.getSecond() : null;
                if (second != null) {
                    telegramApi = AuthHelper.INSTANCE.getTelegramApi();
                    ObservableSource flatMap = telegramApi.acceptUrlAuth(first, second).flatMap(new Function(new Function1<String, ObservableSource<? extends Result<? extends SessionTokens>>>() { // from class: com.iMe.utils.helper.AuthHelper$subscribeToAuthSubject$1$1
                        @Override // kotlin.jvm.functions.Function1
                        public final ObservableSource<? extends Result<SessionTokens>> invoke(String authUrl) {
                            SessionInteractor sessionInteractor2;
                            Intrinsics.checkNotNullParameter(authUrl, "authUrl");
                            sessionInteractor2 = AuthHelper.INSTANCE.getSessionInteractor();
                            return sessionInteractor2.login(authUrl);
                        }
                    }) { // from class: com.iMe.utils.helper.AuthHelper$sam$io_reactivex_functions_Function$0
                        private final /* synthetic */ Function1 function;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            Intrinsics.checkNotNullParameter(function, "function");
                            this.function = function;
                        }

                        @Override // io.reactivex.functions.Function
                        public final /* synthetic */ Object apply(Object obj) {
                            return this.function.invoke(obj);
                        }
                    });
                    Intrinsics.checkNotNullExpressionValue(flatMap, "{\n                    te…hUrl) }\n                }");
                    return flatMap;
                }
                sessionInteractor = AuthHelper.INSTANCE.getSessionInteractor();
                return sessionInteractor.login(first);
            }
        };
        Observable<R> flatMap = take.flatMap(new Function(function1) { // from class: com.iMe.utils.helper.AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0
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
        Observable observeOn = flatMap.observeOn(getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "authSubject\n            …(schedulersProvider.ui())");
        RxExtKt.autoDispose(subscribeWithCommonErrorHandling(withLoadingDialog(observeOn), new Callbacks$Callback1() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                AuthHelper.subscribeToAuthSubject$lambda$7((Result) obj);
            }
        }), compositeDisposable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToAuthSubject$lambda$7(Result result) {
        if (result instanceof Result.Success) {
            INSTANCE.onAuthFlowFinished();
            isAuthProcessing = false;
            Delegate delegate2 = delegate;
            if (delegate2 != null) {
                delegate2.onAuthSuccess();
            }
        } else if (result instanceof Result.Error) {
            AuthHelper authHelper = INSTANCE;
            authHelper.onError(((Result.Error) result).getError().getMessage(authHelper.getResourceManager()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void onError$default(AuthHelper authHelper, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authHelper.getResourceManager().getString(C3630R.string.common_error_unexpected);
        }
        authHelper.onError(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onError(String str) {
        Delegate delegate2;
        onAuthFlowFinished();
        isAuthProcessing = false;
        if (!isAuthVisible || (delegate2 = delegate) == null) {
            return;
        }
        delegate2.showToast(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAuthFlowFinished() {
        if (!isBotMutedByOriginal) {
            getNotificationsController().muteDialog(authBotId, 0, false);
        }
        MessagesController messagesController = getMessagesController();
        messagesController.deleteDialog(authBotId, 0);
        messagesController.setAuthBotHidden(false);
        Delegate delegate2 = delegate;
        if (delegate2 != null) {
            delegate2.hideLoadingDialog();
        }
        subscriptions.clear();
    }

    private final <T> Observable<T> withLoadingDialog(Observable<T> observable) {
        if (isAuthVisible) {
            final AuthHelper$withLoadingDialog$1 authHelper$withLoadingDialog$1 = AuthHelper$withLoadingDialog$1.INSTANCE;
            Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda5
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    AuthHelper.withLoadingDialog$lambda$9(Function1.this, obj);
                }
            }).doFinally(new Action() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Action
                public final void run() {
                    AuthHelper.withLoadingDialog$lambda$10();
                }
            });
            Intrinsics.checkNotNullExpressionValue(doFinally, "{\n            doOnSubscr…adingDialog() }\n        }");
            return doFinally;
        }
        return observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void withLoadingDialog$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void withLoadingDialog$lambda$10() {
        Delegate delegate2 = delegate;
        if (delegate2 != null) {
            delegate2.hideLoadingDialog();
        }
    }

    private final <T> Disposable subscribeWithCommonErrorHandling(Observable<T> observable, final Callbacks$Callback1<T> callbacks$Callback1) {
        final Function1<T, Unit> function1 = new Function1<T, Unit>() { // from class: com.iMe.utils.helper.AuthHelper$subscribeWithCommonErrorHandling$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((AuthHelper$subscribeWithCommonErrorHandling$1<T>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(T t) {
                callbacks$Callback1.invoke(t);
            }
        };
        Consumer<? super T> consumer = new Consumer() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthHelper.subscribeWithCommonErrorHandling$lambda$11(Function1.this, obj);
            }
        };
        final AuthHelper$subscribeWithCommonErrorHandling$2 authHelper$subscribeWithCommonErrorHandling$2 = new Function1<Throwable, Unit>() { // from class: com.iMe.utils.helper.AuthHelper$subscribeWithCommonErrorHandling$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                if (th instanceof TimeoutException) {
                    AuthHelper.onError$default(AuthHelper.INSTANCE, null, 1, null);
                    return;
                }
                AuthHelper authHelper = AuthHelper.INSTANCE;
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                authHelper.onError(message);
            }
        };
        Disposable subscribe = observable.subscribe(consumer, new Consumer() { // from class: com.iMe.utils.helper.AuthHelper$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthHelper.subscribeWithCommonErrorHandling$lambda$12(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "onSuccess: Callbacks.Cal…)\n            }\n        )");
        return subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeWithCommonErrorHandling$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeWithCommonErrorHandling$lambda$12(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
