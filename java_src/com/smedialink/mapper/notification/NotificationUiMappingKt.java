package com.smedialink.mapper.notification;

import com.smedialink.model.wallet.notification.NotificationItem;
import com.smedialink.model.wallet.notification.PushNotificationModel;
import com.smedialink.storage.domain.model.notification.Notification;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.model.wallet.NotificationExtKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationUiMapping.kt */
/* loaded from: classes3.dex */
public final class NotificationUiMappingKt {
    public static final NotificationItem mapToUI(Notification notification, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(notification, "<this>");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return new NotificationItem(notification, mapToPushNotification(notification).getMessage(), resourceManager.getString(NotificationExtKt.getCategoryTitle(notification)));
    }

    public static final PushNotificationModel mapToPushNotification(Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "<this>");
        if (notification instanceof Notification.Unsupported) {
            return new PushNotificationModel.Unsupported(notification.getUserId(), notification.getType().toString());
        }
        if (notification instanceof Notification.CryptoTransfer.C1847In) {
            Notification.CryptoTransfer.C1847In c1847In = (Notification.CryptoTransfer.C1847In) notification;
            String name = c1847In.getTokenCode().getName();
            String amount = c1847In.getAmount();
            String toAddress = c1847In.getToAddress();
            return new PushNotificationModel.CryptoTransfer.C1487In(notification.getUserId(), notification.getType().name(), name, c1847In.getFromAddress(), toAddress, amount);
        } else if (notification instanceof Notification.CryptoTransfer.Out) {
            Notification.CryptoTransfer.Out out = (Notification.CryptoTransfer.Out) notification;
            String name2 = out.getTokenCode().getName();
            String amount2 = out.getAmount();
            String toAddress2 = out.getToAddress();
            return new PushNotificationModel.CryptoTransfer.Out(notification.getUserId(), notification.getType().name(), ((Notification.CryptoTransfer.Out) notification).getStatus().name(), name2, out.getFromAddress(), toAddress2, amount2);
        } else if (notification instanceof Notification.Donation.C1848In) {
            Notification.Donation.C1848In c1848In = (Notification.Donation.C1848In) notification;
            String name3 = c1848In.getTokenCode().getName();
            String amount3 = c1848In.getAmount();
            String toAddress3 = c1848In.getToAddress();
            return new PushNotificationModel.Donation.C1488In(notification.getUserId(), notification.getType().name(), name3, c1848In.getFromAddress(), toAddress3, amount3);
        } else if (notification instanceof Notification.Donation.Out) {
            Notification.Donation.Out out2 = (Notification.Donation.Out) notification;
            String name4 = out2.getTokenCode().getName();
            String amount4 = out2.getAmount();
            String toAddress4 = out2.getToAddress();
            return new PushNotificationModel.Donation.Out(notification.getUserId(), notification.getType().name(), ((Notification.Donation.Out) notification).getStatus().name(), name4, out2.getFromAddress(), toAddress4, amount4);
        } else if (notification instanceof Notification.Simplex) {
            Notification.Simplex simplex = (Notification.Simplex) notification;
            String name5 = simplex.getTokenCode().getName();
            String amount5 = simplex.getAmount();
            String toAddress5 = simplex.getToAddress();
            String userId = notification.getUserId();
            String name6 = notification.getType().name();
            Notification.Simplex simplex2 = (Notification.Simplex) notification;
            String name7 = simplex2.getStatus().name();
            String bigDecimal = simplex2.getSpentAmount().toString();
            String shortName = simplex2.getSpentFiatCode().getShortName();
            Intrinsics.checkNotNullExpressionValue(bigDecimal, "toString()");
            return new PushNotificationModel.Simplex(userId, name6, name7, name5, toAddress5, amount5, shortName, bigDecimal);
        } else if (notification instanceof Notification.Cancel) {
            return new PushNotificationModel.Cancel(notification.getUserId(), notification.getType().name(), ((Notification.Cancel) notification).getStatus().name(), ((Notification.Cancel) notification).getTxHash());
        } else if (notification instanceof Notification.BinancePayRequestCreated) {
            String name8 = notification.getType().name();
            String userId2 = notification.getUserId();
            Notification.BinancePayRequestCreated binancePayRequestCreated = (Notification.BinancePayRequestCreated) notification;
            return new PushNotificationModel.BinancePayRequestCreated(name8, userId2, binancePayRequestCreated.getAmount(), binancePayRequestCreated.getAssetCode(), binancePayRequestCreated.getAssetName(), binancePayRequestCreated.getPayerUserId());
        } else if (notification instanceof Notification.BinancePayRequestStatusUpdated) {
            String name9 = notification.getType().name();
            String userId3 = notification.getUserId();
            Notification.BinancePayRequestStatusUpdated binancePayRequestStatusUpdated = (Notification.BinancePayRequestStatusUpdated) notification;
            return new PushNotificationModel.BinancePayRequestStatusUpdated(name9, userId3, binancePayRequestStatusUpdated.getAmount(), binancePayRequestStatusUpdated.getAssetCode(), binancePayRequestStatusUpdated.getAssetName(), binancePayRequestStatusUpdated.getPayerUserId(), binancePayRequestStatusUpdated.getStatus().name());
        } else if (notification instanceof Notification.Approve) {
            String txHash = ((Notification.Approve) notification).getTxHash();
            String userId4 = notification.getUserId();
            String name10 = notification.getType().name();
            Notification.Approve approve = (Notification.Approve) notification;
            return new PushNotificationModel.Approve(userId4, name10, approve.getTokenCode().getName(), approve.getStatus().name(), txHash);
        } else if (notification instanceof Notification.StakingStarted) {
            String name11 = notification.getType().name();
            String userId5 = notification.getUserId();
            String name12 = notification.getNetworkType().name();
            String id = notification.getId();
            Notification.StakingStarted stakingStarted = (Notification.StakingStarted) notification;
            return new PushNotificationModel.StakingStarted(name11, userId5, name12, id, stakingStarted.getStakingName(), stakingStarted.getStakingAuthor(), stakingStarted.getStakingWebsite(), stakingStarted.getStakingAPY(), stakingStarted.getStakingAPR(), stakingStarted.getStakingEndsAt(), stakingStarted.getStakingToken());
        } else if (notification instanceof Notification.StakingFinished) {
            String name13 = notification.getType().name();
            String userId6 = notification.getUserId();
            String name14 = notification.getNetworkType().name();
            String id2 = notification.getId();
            Notification.StakingFinished stakingFinished = (Notification.StakingFinished) notification;
            return new PushNotificationModel.StakingFinished(name13, userId6, name14, id2, stakingFinished.getStakingName(), stakingFinished.getStakingToken(), stakingFinished.getDebtAsToken(), stakingFinished.getDebtAsUsd(), stakingFinished.getProfitAsToken(), stakingFinished.getProfitAsUsd());
        } else if (notification instanceof Notification.StakingSafeWithdrawalStarted) {
            String name15 = notification.getType().name();
            String userId7 = notification.getUserId();
            String name16 = notification.getNetworkType().name();
            String id3 = notification.getId();
            Notification.StakingSafeWithdrawalStarted stakingSafeWithdrawalStarted = (Notification.StakingSafeWithdrawalStarted) notification;
            return new PushNotificationModel.StakingSafeWithdrawalStarted(name15, userId7, name16, id3, stakingSafeWithdrawalStarted.getStakingName(), stakingSafeWithdrawalStarted.getStakingToken(), stakingSafeWithdrawalStarted.getAmount(), stakingSafeWithdrawalStarted.getShouldFinishAt());
        } else if (notification instanceof Notification.StakingSafeWithdrawalFinished) {
            String name17 = notification.getType().name();
            String userId8 = notification.getUserId();
            String name18 = notification.getNetworkType().name();
            String id4 = notification.getId();
            Notification.StakingSafeWithdrawalFinished stakingSafeWithdrawalFinished = (Notification.StakingSafeWithdrawalFinished) notification;
            return new PushNotificationModel.StakingSafeWithdrawalFinished(name17, userId8, name18, id4, stakingSafeWithdrawalFinished.getStakingName(), stakingSafeWithdrawalFinished.getStakingToken(), stakingSafeWithdrawalFinished.getAmount());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
