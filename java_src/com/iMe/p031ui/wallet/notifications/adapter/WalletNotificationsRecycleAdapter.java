package com.iMe.p031ui.wallet.notifications.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.formatter.DateFormatter;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: WalletNotificationsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.notifications.adapter.WalletNotificationsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletNotificationsRecycleAdapter extends BaseQuickAdapter<NotificationItem, BaseViewHolder> implements LoadMoreModule {
    public WalletNotificationsRecycleAdapter() {
        super(C3242R.layout.fork_recycle_item_wallet_notification, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, NotificationItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder rippleBackground = BaseQuickAdapterExtKt.setRippleBackground(holder, C3242R.C3245id.linear_root, true);
        int i = C3242R.C3245id.text_notification_message;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleBackground, i, "chats_message");
        int i2 = C3242R.C3245id.text_notification_date;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "chats_date");
        int i3 = C3242R.C3245id.text_notification_category;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i3, "chats_name");
        int i4 = C3242R.C3245id.view_read_mark;
        BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedRoundedBackground(themedTextColor3, i4, "chats_actionBackground", 3.0f), i3).setVisible(i4, true ^ item.getNotification().isRead()).setText(i, item.getMessage()).setText(i2, StringExtKt.formatISODate(item.getNotification().getDate(), DateFormatter.DateType.DATE_AND_TIME)).setText(i3, item.getCategory());
    }
}