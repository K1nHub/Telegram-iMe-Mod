package com.iMe.p031ui.wallet.notifications;

import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletNotificationsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView */
/* loaded from: classes4.dex */
public interface WalletNotificationsView extends BaseView, GlobalStateView, LoadMoreView<NotificationItem>, SwipeRefreshView {
    void onLoadedNotifications(List<NotificationItem> list);

    void updateNotificationAsRead(int i, NotificationItem notificationItem);
}
