package com.iMe.p031ui.wallet.notifications;

import com.iMe.mapper.notification.NotificationUiMappingKt;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadNotification$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2271x949ebadf extends Lambda implements Function1<Result<? extends List<? extends Notification>>, Unit> {
    final /* synthetic */ boolean $forceUpdate$inlined;
    final /* synthetic */ WalletNotificationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2271x949ebadf(WalletNotificationsPresenter walletNotificationsPresenter, boolean z) {
        super(1);
        this.this$0 = walletNotificationsPresenter;
        this.$forceUpdate$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Notification>> result) {
        m1471invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1471invoke(Result<? extends List<? extends Notification>> it) {
        int collectionSizeOrDefault;
        List<NotificationItem> mutableList;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends Notification>> result = it;
        if (result instanceof Result.Success) {
            Iterable<Notification> iterable = (Iterable) ((Result.Success) result).getData();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Notification notification : iterable) {
                arrayList.add(NotificationUiMappingKt.mapToUI(notification, this.this$0.getResourceManager()));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            if (mutableList.isEmpty()) {
                ((WalletNotificationsView) this.this$0.getViewState()).onEmptyState();
            } else {
                ((WalletNotificationsView) this.this$0.getViewState()).onLoadedNotifications(mutableList);
            }
        } else if (result instanceof Result.Loading) {
            if (this.$forceUpdate$inlined) {
                ((WalletNotificationsView) this.this$0.getViewState()).showRefreshing(true);
            } else {
                ((WalletNotificationsView) this.this$0.getViewState()).onLoadingState();
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                ((WalletNotificationsView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletNotificationsView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
            ((WalletNotificationsView) this.this$0.getViewState()).showErrorToast(error, this.this$0.getResourceManager());
        }
    }
}
