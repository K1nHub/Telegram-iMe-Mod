package com.smedialink.p031ui.wallet.notifications;

import com.smedialink.mapper.notification.NotificationUiMappingKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.notification.Notification;
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
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2226xb19756d4 extends Lambda implements Function1<Result<? extends List<? extends Notification>>, Unit> {
    final /* synthetic */ WalletNotificationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2226xb19756d4(WalletNotificationsPresenter walletNotificationsPresenter) {
        super(1);
        this.this$0 = walletNotificationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Notification>> result) {
        m1391invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1391invoke(Result<? extends List<? extends Notification>> it) {
        int collectionSizeOrDefault;
        List mutableList;
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
            if (!mutableList.isEmpty()) {
                ((WalletNotificationsView) this.this$0.getViewState()).onLoadMoreItems(mutableList);
            } else {
                ((WalletNotificationsView) this.this$0.getViewState()).onLoadMoreComplete();
            }
        } else if (result instanceof Result.Error) {
            ((WalletNotificationsView) this.this$0.getViewState()).onLoadMoreError();
            ((WalletNotificationsView) this.this$0.getViewState()).showToast(((Result.Error) result).getError().getMessage(this.this$0.getResourceManager()));
        }
    }
}
