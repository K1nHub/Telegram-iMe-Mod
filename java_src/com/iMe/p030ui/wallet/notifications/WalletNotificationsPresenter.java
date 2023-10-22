package com.iMe.p030ui.wallet.notifications;

import com.iMe.mapper.notification.NotificationUiMappingKt;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import timber.log.Timber;
/* compiled from: WalletNotificationsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter */
/* loaded from: classes4.dex */
public final class WalletNotificationsPresenter extends BasePresenter<WalletNotificationsView> {
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final PushNotificationInteractor walletNotificationInteractor;

    public final ResourceManager getResourceManager() {
        return this.resourceManager;
    }

    public WalletNotificationsPresenter(PushNotificationInteractor walletNotificationInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(walletNotificationInteractor, "walletNotificationInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.walletNotificationInteractor = walletNotificationInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final void markNotificationAsRead(NotificationItem item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item.getNotification().isRead()) {
            return;
        }
        item.getNotification().setRead(true);
        ((WalletNotificationsView) getViewState()).updateNotificationAsRead(i, item);
        markNotificationAsRead(item.getNotification().getId());
    }

    public final void markAllNotificationAsRead(final List<NotificationItem> notifications) {
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        Observable<Result<Boolean>> observeOn = this.walletNotificationInteractor.setAllNotificationsRead().observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1779invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1779invoke(Result<? extends Boolean> it) {
                int collectionSizeOrDefault;
                List<NotificationItem> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    List<NotificationItem> list = notifications;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (NotificationItem notificationItem : list) {
                        notificationItem.getNotification().setRead(true);
                        arrayList.add(notificationItem);
                    }
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                    if (mutableList.isEmpty()) {
                        ((WalletNotificationsView) this.getViewState()).onEmptyState();
                        return;
                    }
                    ((WalletNotificationsView) this.getViewState()).showToast(this.getResourceManager().getString(C3630R.string.wallet_notifications_success_mark_all_notification_as_read));
                    ((WalletNotificationsView) this.getViewState()).onLoadedNotifications(mutableList);
                } else if (result instanceof Result.Error) {
                    ((WalletNotificationsView) this.getViewState()).showErrorToast((Result.Error) result, this.getResourceManager());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2
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

    public final void loadMoreNotification(String lastId) {
        Intrinsics.checkNotNullParameter(lastId, "lastId");
        Observable<Result<List<Notification>>> observeOn = this.walletNotificationInteractor.getNotifications(lastId).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends Notification>>, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Notification>> result) {
                m1777invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1777invoke(Result<? extends List<? extends Notification>> it) {
                int collectionSizeOrDefault;
                List mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends Notification>> result = it;
                if (result instanceof Result.Success) {
                    Iterable<Notification> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (Notification notification : iterable) {
                        arrayList.add(NotificationUiMappingKt.mapToUI(notification, WalletNotificationsPresenter.this.getResourceManager()));
                    }
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                    if (!mutableList.isEmpty()) {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onLoadMoreItems(mutableList);
                    } else {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onLoadMoreComplete();
                    }
                } else if (result instanceof Result.Error) {
                    ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onLoadMoreError();
                    ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, WalletNotificationsPresenter.this.getResourceManager());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$2
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

    public static /* synthetic */ void loadNotification$default(WalletNotificationsPresenter walletNotificationsPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletNotificationsPresenter.loadNotification(z);
    }

    public final void loadNotification(final boolean z) {
        if (z) {
            ((WalletNotificationsView) getViewState()).resetLoadMore();
        }
        Observable doFinally = PushNotificationInteractor.getNotifications$default(this.walletNotificationInteractor, null, 1, null).observeOn(this.schedulersProvider.mo1009ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletNotificationsPresenter.loadNotification$lambda$4(WalletNotificationsPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "walletNotificationIntera…e.showRefreshing(false) }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends Notification>>, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Notification>> result) {
                m1778invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1778invoke(Result<? extends List<? extends Notification>> it) {
                int collectionSizeOrDefault;
                List<NotificationItem> mutableList;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends Notification>> result = it;
                if (result instanceof Result.Success) {
                    Iterable<Notification> iterable = (Iterable) ((Result.Success) result).getData();
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (Notification notification : iterable) {
                        arrayList.add(NotificationUiMappingKt.mapToUI(notification, WalletNotificationsPresenter.this.getResourceManager()));
                    }
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                    if (mutableList.isEmpty()) {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onEmptyState();
                    } else {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onLoadedNotifications(mutableList);
                    }
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).showRefreshing(true);
                    } else {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onLoadingState();
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                    ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).showErrorToast(error, WalletNotificationsPresenter.this.getResourceManager());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$2
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
    public static final void loadNotification$lambda$4(WalletNotificationsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletNotificationsView) this$0.getViewState()).showRefreshing(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadNotification$default(this, false, 1, null);
    }

    private final void markNotificationAsRead(String str) {
        Observable<Result<Boolean>> observeOn = this.walletNotificationInteractor.setNotificationsRead(str).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1780invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1780invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Error) {
                    ((WalletNotificationsView) WalletNotificationsPresenter.this.getViewState()).showErrorToast((Result.Error) result, WalletNotificationsPresenter.this.getResourceManager());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$markNotificationAsRead$$inlined$subscribeWithErrorHandle$default$2
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
}
