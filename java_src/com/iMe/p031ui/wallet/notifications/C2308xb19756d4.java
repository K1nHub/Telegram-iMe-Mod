package com.iMe.p031ui.wallet.notifications;

import com.iMe.mapper.notification.NotificationUiMappingKt;
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
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$loadMoreNotification$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2308xb19756d4 extends Lambda implements Function1<Result<? extends List<? extends Notification>>, Unit> {
    final /* synthetic */ WalletNotificationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2308xb19756d4(WalletNotificationsPresenter walletNotificationsPresenter) {
        super(1);
        this.this$0 = walletNotificationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Notification>> result) {
        m1489invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1489invoke(Result<? extends List<? extends Notification>> it) {
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
            ((WalletNotificationsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, this.this$0.getResourceManager());
        }
    }
}
