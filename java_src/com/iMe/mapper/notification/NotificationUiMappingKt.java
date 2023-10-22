package com.iMe.mapper.notification;

import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.model.wallet.notification.PushNotificationModel;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.model.wallet.NotificationExtKt;
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
        if (notification instanceof Notification.CryptoTransfer.C1959In) {
            Notification.CryptoTransfer.C1959In c1959In = (Notification.CryptoTransfer.C1959In) notification;
            String tokenCode = c1959In.getTokenCode();
            String amount = c1959In.getAmount();
            String toAddress = c1959In.getToAddress();
            return new PushNotificationModel.CryptoTransfer.C1530In(notification.getUserId(), notification.getType().name(), tokenCode, c1959In.getFromAddress(), toAddress, amount);
        } else if (notification instanceof Notification.CryptoTransfer.Out) {
            Notification.CryptoTransfer.Out out = (Notification.CryptoTransfer.Out) notification;
            String tokenCode2 = out.getTokenCode();
            String amount2 = out.getAmount();
            String toAddress2 = out.getToAddress();
            return new PushNotificationModel.CryptoTransfer.Out(notification.getUserId(), notification.getType().name(), ((Notification.CryptoTransfer.Out) notification).getStatus().name(), tokenCode2, out.getFromAddress(), toAddress2, amount2);
        } else if (notification instanceof Notification.Donation.C1960In) {
            Notification.Donation.C1960In c1960In = (Notification.Donation.C1960In) notification;
            String tokenCode3 = c1960In.getTokenCode();
            String amount3 = c1960In.getAmount();
            String toAddress3 = c1960In.getToAddress();
            return new PushNotificationModel.Donation.C1531In(notification.getUserId(), notification.getType().name(), tokenCode3, c1960In.getFromAddress(), toAddress3, amount3);
        } else if (notification instanceof Notification.Donation.Out) {
            Notification.Donation.Out out2 = (Notification.Donation.Out) notification;
            String tokenCode4 = out2.getTokenCode();
            String amount4 = out2.getAmount();
            String toAddress4 = out2.getToAddress();
            return new PushNotificationModel.Donation.Out(notification.getUserId(), notification.getType().name(), ((Notification.Donation.Out) notification).getStatus().name(), tokenCode4, out2.getFromAddress(), toAddress4, amount4);
        } else if (notification instanceof Notification.Simplex) {
            Notification.Simplex simplex = (Notification.Simplex) notification;
            String tokenCode5 = simplex.getTokenCode();
            String amount5 = simplex.getAmount();
            String toAddress5 = simplex.getToAddress();
            String userId = notification.getUserId();
            String name = notification.getType().name();
            Notification.Simplex simplex2 = (Notification.Simplex) notification;
            String name2 = simplex2.getStatus().name();
            String bigDecimal = simplex2.getSpentAmount().toString();
            String shortName = simplex2.getSpentFiatCode().getShortName();
            Intrinsics.checkNotNullExpressionValue(bigDecimal, "toString()");
            return new PushNotificationModel.Simplex(userId, name, name2, tokenCode5, toAddress5, amount5, shortName, bigDecimal);
        } else if (notification instanceof Notification.Cancel) {
            return new PushNotificationModel.Cancel(notification.getUserId(), notification.getType().name(), ((Notification.Cancel) notification).getStatus().name(), ((Notification.Cancel) notification).getTxHash());
        } else if (notification instanceof Notification.BinancePayRequestCreated) {
            String name3 = notification.getType().name();
            String userId2 = notification.getUserId();
            Notification.BinancePayRequestCreated binancePayRequestCreated = (Notification.BinancePayRequestCreated) notification;
            return new PushNotificationModel.BinancePayRequestCreated(name3, userId2, binancePayRequestCreated.getAmount(), binancePayRequestCreated.getAssetCode(), binancePayRequestCreated.getAssetName(), binancePayRequestCreated.getPayerUserId());
        } else if (notification instanceof Notification.BinancePayRequestStatusUpdated) {
            String name4 = notification.getType().name();
            String userId3 = notification.getUserId();
            Notification.BinancePayRequestStatusUpdated binancePayRequestStatusUpdated = (Notification.BinancePayRequestStatusUpdated) notification;
            return new PushNotificationModel.BinancePayRequestStatusUpdated(name4, userId3, binancePayRequestStatusUpdated.getAmount(), binancePayRequestStatusUpdated.getAssetCode(), binancePayRequestStatusUpdated.getAssetName(), binancePayRequestStatusUpdated.getPayerUserId(), binancePayRequestStatusUpdated.getStatus().name());
        } else if (notification instanceof Notification.Approve) {
            String txHash = ((Notification.Approve) notification).getTxHash();
            String userId4 = notification.getUserId();
            String name5 = notification.getType().name();
            Notification.Approve approve = (Notification.Approve) notification;
            return new PushNotificationModel.Approve(userId4, name5, approve.getTokenCode(), approve.getStatus().name(), txHash);
        } else if (notification instanceof Notification.StakingStarted) {
            String name6 = notification.getType().name();
            String userId5 = notification.getUserId();
            String networkId = notification.getNetworkId();
            String id = notification.getId();
            Notification.StakingStarted stakingStarted = (Notification.StakingStarted) notification;
            return new PushNotificationModel.StakingStarted(name6, userId5, networkId, id, stakingStarted.getStakingName(), stakingStarted.getStakingAuthor(), stakingStarted.getStakingWebsite(), stakingStarted.getStakingAPY(), stakingStarted.getStakingAPR(), stakingStarted.getStakingEndsAt(), stakingStarted.getStakingToken());
        } else if (notification instanceof Notification.StakingFinished) {
            String name7 = notification.getType().name();
            String userId6 = notification.getUserId();
            String networkId2 = notification.getNetworkId();
            String id2 = notification.getId();
            Notification.StakingFinished stakingFinished = (Notification.StakingFinished) notification;
            return new PushNotificationModel.StakingFinished(name7, userId6, networkId2, id2, stakingFinished.getStakingName(), stakingFinished.getStakingToken(), stakingFinished.getDebtAsToken(), stakingFinished.getDebtAsUsd(), stakingFinished.getProfitAsToken(), stakingFinished.getProfitAsUsd());
        } else if (notification instanceof Notification.StakingSafeWithdrawalStarted) {
            String name8 = notification.getType().name();
            String userId7 = notification.getUserId();
            String networkId3 = notification.getNetworkId();
            String id3 = notification.getId();
            Notification.StakingSafeWithdrawalStarted stakingSafeWithdrawalStarted = (Notification.StakingSafeWithdrawalStarted) notification;
            return new PushNotificationModel.StakingSafeWithdrawalStarted(name8, userId7, networkId3, id3, stakingSafeWithdrawalStarted.getStakingName(), stakingSafeWithdrawalStarted.getStakingToken(), stakingSafeWithdrawalStarted.getAmount(), stakingSafeWithdrawalStarted.getShouldFinishAt());
        } else if (notification instanceof Notification.StakingSafeWithdrawalFinished) {
            String name9 = notification.getType().name();
            String userId8 = notification.getUserId();
            String networkId4 = notification.getNetworkId();
            String id4 = notification.getId();
            Notification.StakingSafeWithdrawalFinished stakingSafeWithdrawalFinished = (Notification.StakingSafeWithdrawalFinished) notification;
            return new PushNotificationModel.StakingSafeWithdrawalFinished(name9, userId8, networkId4, id4, stakingSafeWithdrawalFinished.getStakingName(), stakingSafeWithdrawalFinished.getStakingToken(), stakingSafeWithdrawalFinished.getAmount());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
