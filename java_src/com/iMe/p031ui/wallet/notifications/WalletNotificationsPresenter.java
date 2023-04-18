package com.iMe.p031ui.wallet.notifications;

import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.notification.PushNotificationInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
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

    public final void markAllNotificationAsRead(List<NotificationItem> notifications) {
        Intrinsics.checkNotNullParameter(notifications, "notifications");
        Observable<Result<Boolean>> observeOn = this.walletNotificationInteractor.setAllNotificationsRead().observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2273x7115685f(notifications, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2274x71156860((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void loadMoreNotification(String lastId) {
        Intrinsics.checkNotNullParameter(lastId, "lastId");
        Observable<Result<List<Notification>>> observeOn = this.walletNotificationInteractor.getNotifications(lastId).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2269xb19756d4(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2270xb19756d5((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static /* synthetic */ void loadNotification$default(WalletNotificationsPresenter walletNotificationsPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletNotificationsPresenter.loadNotification(z);
    }

    public final void loadNotification(boolean z) {
        if (z) {
            ((WalletNotificationsView) getViewState()).resetLoadMore();
        }
        Observable doFinally = PushNotificationInteractor.getNotifications$default(this.walletNotificationInteractor, null, 1, null).observeOn(this.schedulersProvider.mo693ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletNotificationsPresenter.loadNotification$lambda$4(WalletNotificationsPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "walletNotificationIntera…e.showRefreshing(false) }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2271x949ebadf(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2272x949ebae0((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
        Observable<Result<Boolean>> observeOn = this.walletNotificationInteractor.setNotificationsRead(str).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletNotificationIntera…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2275x560e7e8e(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2276x560e7e8f((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}