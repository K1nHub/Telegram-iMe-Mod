package com.iMe.p032ui.wallet.notifications;

import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.storage.domain.model.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3316R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2288x7115685f extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ List $notifications$inlined;
    final /* synthetic */ WalletNotificationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2288x7115685f(List list, WalletNotificationsPresenter walletNotificationsPresenter) {
        super(1);
        this.$notifications$inlined = list;
        this.this$0 = walletNotificationsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1489invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1489invoke(Result<? extends Boolean> it) {
        int collectionSizeOrDefault;
        List<NotificationItem> mutableList;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            List<NotificationItem> list = this.$notifications$inlined;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (NotificationItem notificationItem : list) {
                notificationItem.getNotification().setRead(true);
                arrayList.add(notificationItem);
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            if (mutableList.isEmpty()) {
                ((WalletNotificationsView) this.this$0.getViewState()).onEmptyState();
                return;
            }
            ((WalletNotificationsView) this.this$0.getViewState()).showToast(this.this$0.getResourceManager().getString(C3316R.string.wallet_notifications_success_mark_all_notification_as_read));
            ((WalletNotificationsView) this.this$0.getViewState()).onLoadedNotifications(mutableList);
        } else if (result instanceof Result.Error) {
            ((WalletNotificationsView) this.this$0.getViewState()).showToast(((Result.Error) result).getError().getMessage(this.this$0.getResourceManager()));
        }
    }
}
