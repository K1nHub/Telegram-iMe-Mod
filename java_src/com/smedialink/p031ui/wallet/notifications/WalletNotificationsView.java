package com.smedialink.p031ui.wallet.notifications;

import com.smedialink.model.wallet.notification.NotificationItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletNotificationsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.notifications.WalletNotificationsView */
/* loaded from: classes3.dex */
public interface WalletNotificationsView extends BaseView, GlobalStateView, LoadMoreView<NotificationItem>, SwipeRefreshView {
    void onLoadedNotifications(List<NotificationItem> list);

    void updateNotificationAsRead(int i, NotificationItem notificationItem);
}
