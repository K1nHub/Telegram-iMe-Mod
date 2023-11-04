package com.iMe.utils.helper;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.storage.common.AppConfiguration$Bots;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
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
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC$User;
import timber.log.Timber;
/* compiled from: NewsAndUserActivityHelper.kt */
/* loaded from: classes4.dex */
public final class NewsAndUserActivityHelper implements KoinComponent, NotificationCenter.NotificationCenterDelegate {
    public static final NewsAndUserActivityHelper INSTANCE;
    private static final int[] activatingBotEvents;
    private static final int classGuid;
    private static int currentAccountIndex;
    private static boolean isBotMutedByOriginal;
    private static boolean isPreparationRunning;
    private static boolean isSubscribeRunning;
    private static final int[] loadingMessagesEvents;
    private static final long newsBotId;
    private static final Lazy notificationInteractor$delegate;
    private static final Lazy preferenceHelper$delegate;
    private static final Lazy schedulersProvider$delegate;
    private static final CompositeDisposable subscriptions;
    private static final Lazy telegramApi$delegate;
    private static final Lazy telegramControllersGateway$delegate;

    private NewsAndUserActivityHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final PushNotificationInteractor getNotificationInteractor() {
        return (PushNotificationInteractor) notificationInteractor$delegate.getValue();
    }

    private final PreferenceHelper getPreferenceHelper() {
        return (PreferenceHelper) preferenceHelper$delegate.getValue();
    }

    private final SchedulersProvider getSchedulersProvider() {
        return (SchedulersProvider) schedulersProvider$delegate.getValue();
    }

    private final TelegramApi getTelegramApi() {
        return (TelegramApi) telegramApi$delegate.getValue();
    }

    private final TelegramControllersGateway getTelegramControllersGateway() {
        return (TelegramControllersGateway) telegramControllersGateway$delegate.getValue();
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
        final NewsAndUserActivityHelper newsAndUserActivityHelper = new NewsAndUserActivityHelper();
        INSTANCE = newsAndUserActivityHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<PushNotificationInteractor>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.interactor.notification.PushNotificationInteractor, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PushNotificationInteractor invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(PushNotificationInteractor.class), qualifier, function0);
            }
        });
        notificationInteractor$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<PreferenceHelper>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.storage.PreferenceHelper, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PreferenceHelper invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), qualifier, function0);
            }
        });
        preferenceHelper$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SchedulersProvider>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$special$$inlined$inject$default$3
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
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramApi>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$special$$inlined$inject$default$4
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
        lazy5 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramControllersGateway>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$special$$inlined$inject$default$5
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
        newsBotId = AppConfiguration$Bots.getNewsBotId();
        classGuid = ConnectionsManager.generateClassGuid();
        subscriptions = new CompositeDisposable();
        loadingMessagesEvents = new int[]{NotificationCenter.messagesDidLoad, NotificationCenter.loadingMessagesFailed};
        activatingBotEvents = new int[]{NotificationCenter.didReceiveNewMessages, NotificationCenter.messageSendError};
        currentAccountIndex = -1;
    }

    public static final void subscribeToBot(int i) {
        NewsAndUserActivityHelper newsAndUserActivityHelper = INSTANCE;
        currentAccountIndex = i;
        if (newsAndUserActivityHelper.getPreferenceHelper().isNewsBotActivated() || isPreparationRunning || AuthHelper.INSTANCE.isAuthProcessing()) {
            return;
        }
        if (newsAndUserActivityHelper.getMessagesController().blockePeers.indexOfKey(newsBotId) >= 0) {
            newsAndUserActivityHelper.getPreferenceHelper().setNewsBotActivated(true);
            return;
        }
        isPreparationRunning = true;
        newsAndUserActivityHelper.loadBotMessages();
    }

    public static final void onDestroy() {
        int[] plus;
        subscriptions.clear();
        NewsAndUserActivityHelper newsAndUserActivityHelper = INSTANCE;
        NotificationCenter notificationCenter = newsAndUserActivityHelper.getNotificationCenter();
        plus = ArraysKt___ArraysJvmKt.plus(loadingMessagesEvents, activatingBotEvents);
        notificationCenter.removeObservers(newsAndUserActivityHelper, plus);
    }

    public static final void markActivity() {
        NewsAndUserActivityHelper newsAndUserActivityHelper = INSTANCE;
        if (DateExtKt.isDayAgo(newsAndUserActivityHelper.getPreferenceHelper().getLastMarkActivityTime())) {
            newsAndUserActivityHelper.getPreferenceHelper().setLastMarkActivityTime(DateExtKt.now());
            Disposable subscribe = newsAndUserActivityHelper.getNotificationInteractor().sendActivityMark().observeOn(newsAndUserActivityHelper.getSchedulersProvider().mo1010ui()).subscribe();
            Intrinsics.checkNotNullExpressionValue(subscribe, "notificationInteractor\n …             .subscribe()");
            RxExtKt.autoDispose(subscribe, subscriptions);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        boolean z = false;
        if (i == NotificationCenter.didReceiveNewMessages) {
            Long l = (Long) args[0];
            long j = newsBotId;
            if (l != null && l.longValue() == j) {
                getPreferenceHelper().setNewsBotActivated(true);
                onSubscribeFlowFinished();
            }
        } else if (i == NotificationCenter.messageSendError) {
            Long l2 = (Long) args[0];
            long j2 = newsBotId;
            if (l2 != null && l2.longValue() == j2) {
                onSubscribeFlowFinished();
            }
        } else {
            if (i == NotificationCenter.messagesDidLoad) {
                Object obj = args[10];
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int i3 = classGuid;
                if (num != null && num.intValue() == i3) {
                    getNotificationCenter().removeObservers(this, loadingMessagesEvents);
                    Object obj2 = args[2];
                    List list = obj2 instanceof List ? (List) obj2 : null;
                    if (list == null || list.isEmpty()) {
                        z = true;
                    }
                    if (z) {
                        prepareAndStartSubscribeFlow();
                    } else {
                        getPreferenceHelper().setNewsBotActivated(true);
                    }
                }
            } else if (i == NotificationCenter.loadingMessagesFailed) {
                Object obj3 = args[0];
                Integer num2 = obj3 instanceof Integer ? (Integer) obj3 : null;
                int i4 = classGuid;
                if (num2 != null && num2.intValue() == i4) {
                    prepareAndStartSubscribeFlow();
                }
            }
        }
    }

    private final void loadBotMessages() {
        getNotificationCenter().addObservers(this, loadingMessagesEvents);
        getMessagesController().loadMessages(newsBotId, 0L, true, 10, 0, 0, false, 0, classGuid, 0, 0, 0, 0, 0, 0, false);
    }

    private final void prepareAndStartSubscribeFlow() {
        Observable<TLRPC$User> observeOn = getTelegramApi().getUserInfoByUsername(AppConfiguration$Bots.getNewsBotUsername()).observeOn(getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        RxExtKt.autoDispose(subscribeWithCommonErrorHandling(observeOn, new Callbacks$Callback1() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                NewsAndUserActivityHelper.prepareAndStartSubscribeFlow$lambda$0((TLRPC$User) obj);
            }
        }), subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAndStartSubscribeFlow$lambda$0(TLRPC$User tLRPC$User) {
        if (tLRPC$User != null) {
            INSTANCE.startAuthFlow();
        } else {
            INSTANCE.onSubscribeFlowFinished();
        }
    }

    private final void startAuthFlow() {
        if (isSubscribeRunning) {
            return;
        }
        isSubscribeRunning = true;
        MessagesController messagesController = getMessagesController();
        long j = newsBotId;
        isBotMutedByOriginal = messagesController.isDialogMuted(j, 0);
        getNotificationsController().muteDialog(j, 0, true);
        getMessagesController().setNewsBotHidden(true);
        getNotificationCenter().addObservers(this, activatingBotEvents);
        getSendMessagesHelper().sendMessage(SendMessagesHelper.SendMessageParams.m91of("/start", j, null, null, null, false, null, null, null, true, 0, null, false, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSubscribeFlowFinished() {
        getNotificationCenter().removeObservers(this, activatingBotEvents);
        if (!isBotMutedByOriginal) {
            getNotificationsController().muteDialog(newsBotId, 0, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                NewsAndUserActivityHelper.onSubscribeFlowFinished$lambda$2();
            }
        }, TimeUnit.SECONDS.toMillis(10L));
        isSubscribeRunning = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSubscribeFlowFinished$lambda$2() {
        MessagesController messagesController = INSTANCE.getMessagesController();
        messagesController.deleteDialog(newsBotId, 0);
        messagesController.setNewsBotHidden(false);
    }

    private final <T> Disposable subscribeWithCommonErrorHandling(Observable<T> observable, final Callbacks$Callback1<T> callbacks$Callback1) {
        final Function1<T, Unit> function1 = new Function1<T, Unit>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2((NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$1<T>) obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(T t) {
                callbacks$Callback1.invoke(t);
            }
        };
        Consumer<? super T> consumer = new Consumer() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NewsAndUserActivityHelper.subscribeWithCommonErrorHandling$lambda$3(Function1.this, obj);
            }
        };
        final NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$2 newsAndUserActivityHelper$subscribeWithCommonErrorHandling$2 = new Function1<Throwable, Unit>() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                NewsAndUserActivityHelper.INSTANCE.onSubscribeFlowFinished();
            }
        };
        Disposable subscribe = observable.subscribe(consumer, new Consumer() { // from class: com.iMe.utils.helper.NewsAndUserActivityHelper$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NewsAndUserActivityHelper.subscribeWithCommonErrorHandling$lambda$4(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "onSuccess: Callbacks.Cal…)\n            }\n        )");
        return subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeWithCommonErrorHandling$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeWithCommonErrorHandling$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
