package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.notification.Notification;
import com.smedialink.storage.domain.model.wallet.transaction.TransactionDirection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
/* compiled from: NotificationExt.kt */
/* loaded from: classes3.dex */
public final class NotificationExtKt {
    public static final boolean isWithAddressType(Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "<this>");
        return (notification instanceof Notification.CryptoTransfer) || (notification instanceof Notification.Donation);
    }

    public static final int getCategoryTitle(Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "<this>");
        if (notification instanceof Notification.Donation) {
            return C3301R.string.channel_donations_toolbar_title;
        }
        if (notification instanceof Notification.CryptoTransfer.C1860In) {
            return TransactionDirection.f371IN.getTitle();
        }
        if (notification instanceof Notification.CryptoTransfer.Out) {
            return TransactionDirection.OUT.getTitle();
        }
        if (notification instanceof Notification.Cancel) {
            return C3301R.string.wallet_transactions_type_cancel_title;
        }
        if (notification instanceof Notification.Approve) {
            return C3301R.string.push_notification_wallet_approve_category_title;
        }
        if (notification instanceof Notification.Simplex) {
            return C3301R.string.wallet_transactions_type_simplex_title;
        }
        if (notification instanceof Notification.Unsupported) {
            return C3301R.string.wallet_transactions_type_unsupported_title;
        }
        if (notification instanceof Notification.BinancePayRequestCreated ? true : notification instanceof Notification.BinancePayRequestStatusUpdated) {
            return C3301R.string.wallet_binance_attach_title;
        }
        if (notification instanceof Notification.StakingSafeWithdrawalStarted ? true : notification instanceof Notification.StakingSafeWithdrawalFinished ? true : notification instanceof Notification.StakingStarted ? true : notification instanceof Notification.StakingFinished) {
            return C3301R.string.push_notification_staking_title;
        }
        throw new NoWhenBranchMatchedException();
    }
}
