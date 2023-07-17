package com.iMe.utils.helper.wallet;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.firebase.RemoteConfigInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3417R;
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
/* compiled from: AuthHelper.kt */
/* loaded from: classes4.dex */
public final class AuthHelper implements KoinComponent, NotificationCenter.NotificationCenterDelegate {
    public static final AuthHelper INSTANCE;
    private static final PublishSubject<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> authSubject;
    private static int currentAccountIndex;
    private static Delegate delegate;
    private static boolean isAuthVisible;
    private static boolean isBotMutedByOriginal;
    private static final Lazy remoteConfigInteractor$delegate;
    private static final Lazy resourceManager$delegate;
    private static final Lazy schedulersProvider$delegate;
    private static final CompositeDisposable subscriptions;
    private static final Lazy telegramApi$delegate;
    private static final Lazy telegramControllersGateway$delegate;
    private static final long walletBotId;
    private static final Lazy walletSessionInteractor$delegate;

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

    private final RemoteConfigInteractor getRemoteConfigInteractor() {
        return (RemoteConfigInteractor) remoteConfigInteractor$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    private final SchedulersProvider getSchedulersProvider() {
        return (SchedulersProvider) schedulersProvider$delegate.getValue();
    }

    public final TelegramApi getTelegramApi() {
        return (TelegramApi) telegramApi$delegate.getValue();
    }

    private final TelegramControllersGateway getTelegramControllersGateway() {
        return (TelegramControllersGateway) telegramControllersGateway$delegate.getValue();
    }

    public final WalletSessionInteractor getWalletSessionInteractor() {
        return (WalletSessionInteractor) walletSessionInteractor$delegate.getValue();
    }

    private final MessagesController getMessagesController() {
        return getTelegramControllersGateway().getMessagesController(currentAccountIndex);
    }

    private final NotificationCenter getNotificationCenter() {
        return getTelegramControllersGateway().getNotificationCenterInstance(currentAccountIndex);
    }

    private final NotificationsController getNotificationsController() {
        return getTelegramControllersGateway().getNotificationsController(currentAccountIndex);
    }

    private final SendMessagesHelper getSendMessagesHelper() {
        return getTelegramControllersGateway().getSendMessagesHelper(currentAccountIndex);
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        AuthHelper authHelper = new AuthHelper();
        INSTANCE = authHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$1(authHelper, null, null));
        remoteConfigInteractor$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$2(authHelper, null, null));
        resourceManager$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$3(authHelper, null, null));
        schedulersProvider$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$4(authHelper, null, null));
        telegramApi$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$5(authHelper, null, null));
        telegramControllersGateway$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new AuthHelper$special$$inlined$inject$default$6(authHelper, null, null));
        walletSessionInteractor$delegate = lazy6;
        PublishSubject<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        authSubject = create;
        walletBotId = AppConfiguration$Wallet.getWalletBotId();
        subscriptions = new CompositeDisposable();
        currentAccountIndex = -1;
    }

    private final boolean isAuthBotBlocked() {
        return getMessagesController().blockePeers.indexOfKey(walletBotId) >= 0;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        List list;
        boolean z;
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.didReceiveNewMessages) {
            Long l = (Long) args[0];
            long j = walletBotId;
            if (l != null && l.longValue() == j) {
                Object obj = args[1];
                MessageObject messageObject = null;
                ArrayList arrayList = obj instanceof ArrayList ? (ArrayList) obj : null;
                if (arrayList != null) {
                    list = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (obj2 instanceof MessageObject) {
                            list.add(obj2);
                        }
                    }
                } else {
                    list = null;
                }
                if (list == null) {
                    list = CollectionsKt__CollectionsKt.emptyList();
                }
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (((MessageObject) obj3).messageOwner.from_id.user_id == walletBotId) {
                        arrayList2.add(obj3);
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
                        messageObject = next;
                        break;
                    }
                }
                MessageObject messageObject2 = messageObject;
                TLRPC$KeyboardButton messageObjectButton = getMessageObjectButton(messageObject2);
                if (messageObjectButton != null) {
                    getNotificationCenter().removeObserver(this, NotificationCenter.didReceiveNewMessages);
                    getSendMessagesHelper().sendCallback(true, messageObject2, messageObjectButton, null, null, null, AuthHelper$$ExternalSyntheticLambda2.INSTANCE);
                }
            }
        }
    }

    public static final void didReceivedNotification$lambda$2(String str, TLRPC$TL_messages_requestUrlAuth tLRPC$TL_messages_requestUrlAuth) {
        authSubject.onNext(Result.Companion.success(TuplesKt.m85to(str, tLRPC$TL_messages_requestUrlAuth)));
    }

    private final void runHiddenAuthWithRemoteConfigCheck() {
        Single<Result<Boolean>> observeOn = getRemoteConfigInteractor().getBoolean("auto_auth_enabled").observeOn(getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "remoteConfigInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2483x3a0d1b4e()), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2484x3a0d1b4f(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        RxExtKt.autoDispose(subscribe, subscriptions);
    }

    private final TLRPC$KeyboardButton getMessageObjectButton(MessageObject messageObject) {
        TLRPC$Message tLRPC$Message;
        TLRPC$ReplyMarkup tLRPC$ReplyMarkup;
        ArrayList<TLRPC$TL_keyboardButtonRow> arrayList;
        TLRPC$TL_keyboardButtonRow tLRPC$TL_keyboardButtonRow;
        ArrayList<TLRPC$KeyboardButton> arrayList2;
        if (messageObject == null || (tLRPC$Message = messageObject.messageOwner) == null || (tLRPC$ReplyMarkup = tLRPC$Message.reply_markup) == null || (arrayList = tLRPC$ReplyMarkup.rows) == null || (tLRPC$TL_keyboardButtonRow = (TLRPC$TL_keyboardButtonRow) CollectionsKt.firstOrNull(arrayList)) == null || (arrayList2 = tLRPC$TL_keyboardButtonRow.buttons) == null) {
            return null;
        }
        return (TLRPC$KeyboardButton) CollectionsKt.firstOrNull(arrayList2);
    }

    public final void prepareAndStartAuthFlow() {
        Observable<TLRPC$User> observeOn = getTelegramApi().getUserInfoByUsername(AppConfiguration$Wallet.getWalletBotUsernameLowerCase()).observeOn(getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        RxExtKt.autoDispose(subscribeWithCommonErrorHandling(observeOn, AuthHelper$$ExternalSyntheticLambda1.INSTANCE), subscriptions);
    }

    public static final void prepareAndStartAuthFlow$lambda$5(TLRPC$User tLRPC$User) {
        if (tLRPC$User != null) {
            AuthHelper authHelper = INSTANCE;
            if (authHelper.isAuthBotBlocked()) {
                authHelper.getMessagesController().unblockPeer(walletBotId, AuthHelper$$ExternalSyntheticLambda7.INSTANCE);
                return;
            } else {
                authHelper.startAuthFlow();
                return;
            }
        }
        onError$default(INSTANCE, null, 1, null);
    }

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
        long j = walletBotId;
        isBotMutedByOriginal = messagesController.isDialogMuted(j, 0);
        getNotificationsController().muteDialog(j, 0, true);
        getNotificationCenter().postNotificationName(NotificationCenter.updateWalletDialogVisibility, Boolean.TRUE);
        getNotificationCenter().addObserver(this, NotificationCenter.didReceiveNewMessages);
        getSendMessagesHelper().sendMessage("/start", j, null, null, null, false, null, null, null, true, 0, null, false, null);
    }

    private final void subscribeToAuthSubject() {
        CompositeDisposable compositeDisposable = subscriptions;
        compositeDisposable.clear();
        Observable<Result<Pair<String, TLRPC$TL_messages_requestUrlAuth>>> take = authSubject.hide().timeout(60L, TimeUnit.SECONDS).take(1L);
        Intrinsics.checkNotNullExpressionValue(take, "authSubject\n            …\n                .take(1)");
        Observable<R> flatMap = take.flatMap(new Function(new AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1()) { // from class: com.iMe.utils.helper.wallet.AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function, "function");
                this.function = function;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "authSubject\n            …(schedulersProvider.ui())");
        RxExtKt.autoDispose(subscribeWithCommonErrorHandling(withLoadingDialog(observeOn), AuthHelper$$ExternalSyntheticLambda0.INSTANCE), compositeDisposable);
    }

    public static final void subscribeToAuthSubject$lambda$7(Result result) {
        if (result instanceof Result.Success) {
            INSTANCE.onAuthFlowFinished();
            Delegate delegate2 = delegate;
            if (delegate2 != null) {
                delegate2.onAuthSuccess();
            }
        } else if (result instanceof Result.Error) {
            AuthHelper authHelper = INSTANCE;
            authHelper.onError(((Result.Error) result).getError().getMessage(authHelper.getResourceManager()));
        }
    }

    public static /* synthetic */ void onError$default(AuthHelper authHelper, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authHelper.getResourceManager().getString(C3417R.string.common_error_unexpected);
        }
        authHelper.onError(str);
    }

    public final void onError(String str) {
        Delegate delegate2;
        onAuthFlowFinished();
        if (!isAuthVisible || (delegate2 = delegate) == null) {
            return;
        }
        delegate2.showToast(str);
    }

    public final void onAuthFlowFinished() {
        if (!isBotMutedByOriginal) {
            getNotificationsController().muteDialog(walletBotId, 0, false);
        }
        getMessagesController().deleteDialog(walletBotId, 0);
        Delegate delegate2 = delegate;
        if (delegate2 != null) {
            delegate2.hideLoadingDialog();
        }
        subscriptions.clear();
        getNotificationCenter().postNotificationName(NotificationCenter.updateWalletDialogVisibility, Boolean.FALSE);
    }

    private final <T> Observable<T> withLoadingDialog(Observable<T> observable) {
        if (isAuthVisible) {
            final AuthHelper$withLoadingDialog$1 authHelper$withLoadingDialog$1 = AuthHelper$withLoadingDialog$1.INSTANCE;
            Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.helper.wallet.AuthHelper$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    AuthHelper.withLoadingDialog$lambda$8(Function1.this, obj);
                }
            }).doFinally(AuthHelper$$ExternalSyntheticLambda3.INSTANCE);
            Intrinsics.checkNotNullExpressionValue(doFinally, "{\n                doOnSu…gDialog() }\n            }");
            return doFinally;
        }
        return observable;
    }

    public static final void withLoadingDialog$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void withLoadingDialog$lambda$9() {
        Delegate delegate2 = delegate;
        if (delegate2 != null) {
            delegate2.hideLoadingDialog();
        }
    }

    private final <T> Disposable subscribeWithCommonErrorHandling(Observable<T> observable, Callbacks$Callback1<T> callbacks$Callback1) {
        final AuthHelper$subscribeWithCommonErrorHandling$1 authHelper$subscribeWithCommonErrorHandling$1 = new AuthHelper$subscribeWithCommonErrorHandling$1(callbacks$Callback1);
        Consumer<? super T> consumer = new Consumer() { // from class: com.iMe.utils.helper.wallet.AuthHelper$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthHelper.subscribeWithCommonErrorHandling$lambda$10(Function1.this, obj);
            }
        };
        final AuthHelper$subscribeWithCommonErrorHandling$2 authHelper$subscribeWithCommonErrorHandling$2 = AuthHelper$subscribeWithCommonErrorHandling$2.INSTANCE;
        Disposable subscribe = observable.subscribe(consumer, new Consumer() { // from class: com.iMe.utils.helper.wallet.AuthHelper$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AuthHelper.subscribeWithCommonErrorHandling$lambda$11(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "onSuccess: Callbacks.Cal…          }\n            )");
        return subscribe;
    }

    public static final void subscribeWithCommonErrorHandling$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void subscribeWithCommonErrorHandling$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
