package com.iMe.storage.data.mapper.notification;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.data.network.model.response.notification.NotificationResponse;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.model.notification.NotificationType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import java.math.BigDecimal;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NotificationMapping.kt */
/* loaded from: classes3.dex */
public final class NotificationMappingKt {

    /* compiled from: NotificationMapping.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NotificationType.values().length];
            try {
                iArr[NotificationType.INCOMING_CRYPTO_TRANSFER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NotificationType.OUTGOING_CRYPTO_TRANSFER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NotificationType.INCOMING_DONATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NotificationType.OUTGOING_DONATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[NotificationType.SIMPLEX_PAYMENT_REQUEST_EVENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[NotificationType.REQUEST_BINANCE_PAY_TRANSACTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[NotificationType.INCOMING_BINANCE_PAY_TRANSACTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[NotificationType.CANCEL_TRANSACTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[NotificationType.APPROVE_CRYPTO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[NotificationType.STAKING_SAFE_WITHDRAWAL_STARTED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[NotificationType.STAKING_SAFE_WITHDRAWAL_FINISHED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[NotificationType.STAKING_STARTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[NotificationType.STAKING_FINISHED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[NotificationType.UNSUPPORTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final Notification mapToDomain(NotificationResponse notificationResponse) {
        Notification c1986In;
        Intrinsics.checkNotNullParameter(notificationResponse, "<this>");
        NotificationType map = NotificationType.Companion.map(notificationResponse.getType());
        switch (WhenMappings.$EnumSwitchMapping$0[map.ordinal()]) {
            case 1:
                String id = notificationResponse.getId();
                boolean read = notificationResponse.getRead();
                String date = notificationResponse.getDate();
                String userId = notificationResponse.getUserId();
                String fromWalletAddress = notificationResponse.getFromWalletAddress();
                String str = fromWalletAddress == null ? "" : fromWalletAddress;
                String toWalletAddress = notificationResponse.getToWalletAddress();
                String str2 = toWalletAddress == null ? "" : toWalletAddress;
                String bigDecimal = notificationResponse.getAmount().toString();
                String cryptoCode = notificationResponse.getCryptoCode();
                String str3 = cryptoCode == null ? "" : cryptoCode;
                String networkType = notificationResponse.getNetworkType();
                String str4 = networkType == null ? "" : networkType;
                Intrinsics.checkNotNullExpressionValue(bigDecimal, "toString()");
                c1986In = new Notification.CryptoTransfer.C1986In(id, read, map, date, userId, str4, str3, str, str2, bigDecimal);
                break;
            case 2:
                String id2 = notificationResponse.getId();
                boolean read2 = notificationResponse.getRead();
                String date2 = notificationResponse.getDate();
                String userId2 = notificationResponse.getUserId();
                String fromWalletAddress2 = notificationResponse.getFromWalletAddress();
                String str5 = fromWalletAddress2 == null ? "" : fromWalletAddress2;
                String toWalletAddress2 = notificationResponse.getToWalletAddress();
                String str6 = toWalletAddress2 == null ? "" : toWalletAddress2;
                String bigDecimal2 = notificationResponse.getAmount().toString();
                Status.Companion companion = Status.Companion;
                String status = notificationResponse.getStatus();
                if (status == null) {
                    status = "";
                }
                Status map2 = companion.map(status);
                String cryptoCode2 = notificationResponse.getCryptoCode();
                String str7 = cryptoCode2 == null ? "" : cryptoCode2;
                String networkType2 = notificationResponse.getNetworkType();
                String str8 = networkType2 == null ? "" : networkType2;
                Intrinsics.checkNotNullExpressionValue(bigDecimal2, "toString()");
                c1986In = new Notification.CryptoTransfer.Out(map2, id2, read2, map, date2, userId2, str8, str7, str5, str6, bigDecimal2);
                break;
            case 3:
                String id3 = notificationResponse.getId();
                boolean read3 = notificationResponse.getRead();
                String date3 = notificationResponse.getDate();
                String userId3 = notificationResponse.getUserId();
                String fromWalletAddress3 = notificationResponse.getFromWalletAddress();
                String str9 = fromWalletAddress3 == null ? "" : fromWalletAddress3;
                String toWalletAddress3 = notificationResponse.getToWalletAddress();
                String str10 = toWalletAddress3 == null ? "" : toWalletAddress3;
                String bigDecimal3 = notificationResponse.getAmount().toString();
                String cryptoCode3 = notificationResponse.getCryptoCode();
                String str11 = cryptoCode3 == null ? "" : cryptoCode3;
                String networkType3 = notificationResponse.getNetworkType();
                String str12 = networkType3 == null ? "" : networkType3;
                Intrinsics.checkNotNullExpressionValue(bigDecimal3, "toString()");
                c1986In = new Notification.Donation.C1987In(id3, read3, map, date3, userId3, str12, str11, str9, str10, bigDecimal3);
                break;
            case 4:
                String id4 = notificationResponse.getId();
                boolean read4 = notificationResponse.getRead();
                String date4 = notificationResponse.getDate();
                String userId4 = notificationResponse.getUserId();
                String fromWalletAddress4 = notificationResponse.getFromWalletAddress();
                String str13 = fromWalletAddress4 == null ? "" : fromWalletAddress4;
                String toWalletAddress4 = notificationResponse.getToWalletAddress();
                String str14 = toWalletAddress4 == null ? "" : toWalletAddress4;
                String bigDecimal4 = notificationResponse.getAmount().toString();
                Status.Companion companion2 = Status.Companion;
                String status2 = notificationResponse.getStatus();
                if (status2 == null) {
                    status2 = "";
                }
                Status map3 = companion2.map(status2);
                String cryptoCode4 = notificationResponse.getCryptoCode();
                String str15 = cryptoCode4 == null ? "" : cryptoCode4;
                String networkType4 = notificationResponse.getNetworkType();
                String str16 = networkType4 == null ? "" : networkType4;
                Intrinsics.checkNotNullExpressionValue(bigDecimal4, "toString()");
                c1986In = new Notification.Donation.Out(map3, id4, read4, map, date4, userId4, str16, str15, str13, str14, bigDecimal4);
                break;
            case 5:
                String id5 = notificationResponse.getId();
                boolean read5 = notificationResponse.getRead();
                String date5 = notificationResponse.getDate();
                String userId5 = notificationResponse.getUserId();
                String toWalletAddress5 = notificationResponse.getToWalletAddress();
                String str17 = toWalletAddress5 == null ? "" : toWalletAddress5;
                String bigDecimal5 = notificationResponse.getAmount().toString();
                Status.Companion companion3 = Status.Companion;
                String status3 = notificationResponse.getStatus();
                if (status3 == null) {
                    status3 = "";
                }
                Status map4 = companion3.map(status3);
                String cryptoCode5 = notificationResponse.getCryptoCode();
                String str18 = cryptoCode5 == null ? "" : cryptoCode5;
                String amountToSpent = notificationResponse.getAmountToSpent();
                BigDecimal bigDecimal6 = amountToSpent != null ? new BigDecimal(amountToSpent) : BigDecimal.ZERO;
                String spentCurrency = notificationResponse.getSpentCurrency();
                if (spentCurrency == null) {
                    spentCurrency = "USD";
                }
                FiatCode fiatCode = new FiatCode(spentCurrency, 0, 2, null);
                String networkType5 = notificationResponse.getNetworkType();
                String str19 = networkType5 == null ? "" : networkType5;
                Intrinsics.checkNotNullExpressionValue(bigDecimal5, "toString()");
                Intrinsics.checkNotNullExpressionValue(bigDecimal6, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO");
                c1986In = new Notification.Simplex(id5, read5, map, date5, userId5, str19, str18, str17, bigDecimal5, map4, bigDecimal6, fiatCode);
                break;
            case 6:
                String id6 = notificationResponse.getId();
                boolean read6 = notificationResponse.getRead();
                String date6 = notificationResponse.getDate();
                String userId6 = notificationResponse.getUserId();
                String bigDecimal7 = notificationResponse.getAmount().toString();
                String assetCode = notificationResponse.getAssetCode();
                String str20 = assetCode == null ? "" : assetCode;
                String assetName = notificationResponse.getAssetName();
                String str21 = assetName == null ? "" : assetName;
                String payerUserId = notificationResponse.getPayerUserId();
                String str22 = payerUserId == null ? "" : payerUserId;
                String networkType6 = notificationResponse.getNetworkType();
                String str23 = networkType6 == null ? "" : networkType6;
                Intrinsics.checkNotNullExpressionValue(bigDecimal7, "toString()");
                c1986In = new Notification.BinancePayRequestCreated(id6, read6, map, date6, userId6, str23, bigDecimal7, str20, str21, str22);
                break;
            case 7:
                String id7 = notificationResponse.getId();
                boolean read7 = notificationResponse.getRead();
                String date7 = notificationResponse.getDate();
                String userId7 = notificationResponse.getUserId();
                String bigDecimal8 = notificationResponse.getAmount().toString();
                String assetCode2 = notificationResponse.getAssetCode();
                String str24 = assetCode2 == null ? "" : assetCode2;
                String assetName2 = notificationResponse.getAssetName();
                String str25 = assetName2 == null ? "" : assetName2;
                String payerUserId2 = notificationResponse.getPayerUserId();
                String str26 = payerUserId2 == null ? "" : payerUserId2;
                BinanceTransactionStatus.Companion companion4 = BinanceTransactionStatus.Companion;
                String status4 = notificationResponse.getStatus();
                if (status4 == null) {
                    status4 = "";
                }
                BinanceTransactionStatus map5 = companion4.map(status4);
                String networkType7 = notificationResponse.getNetworkType();
                String str27 = networkType7 == null ? "" : networkType7;
                Intrinsics.checkNotNullExpressionValue(bigDecimal8, "toString()");
                c1986In = new Notification.BinancePayRequestStatusUpdated(id7, read7, map, date7, userId7, str27, bigDecimal8, str24, str25, str26, map5);
                break;
            case 8:
                String id8 = notificationResponse.getId();
                boolean read8 = notificationResponse.getRead();
                String date8 = notificationResponse.getDate();
                String userId8 = notificationResponse.getUserId();
                String txHash = notificationResponse.getTxHash();
                String str28 = txHash == null ? "" : txHash;
                Status.Companion companion5 = Status.Companion;
                String status5 = notificationResponse.getStatus();
                if (status5 == null) {
                    status5 = "";
                }
                Status map6 = companion5.map(status5);
                String networkType8 = notificationResponse.getNetworkType();
                c1986In = new Notification.Cancel(id8, read8, map, date8, userId8, networkType8 == null ? "" : networkType8, str28, map6);
                break;
            case 9:
                String id9 = notificationResponse.getId();
                boolean read9 = notificationResponse.getRead();
                String date9 = notificationResponse.getDate();
                String userId9 = notificationResponse.getUserId();
                String txHash2 = notificationResponse.getTxHash();
                String str29 = txHash2 == null ? "" : txHash2;
                Status.Companion companion6 = Status.Companion;
                String status6 = notificationResponse.getStatus();
                if (status6 == null) {
                    status6 = "";
                }
                Status map7 = companion6.map(status6);
                String cryptoCode6 = notificationResponse.getCryptoCode();
                String str30 = cryptoCode6 == null ? "" : cryptoCode6;
                String networkType9 = notificationResponse.getNetworkType();
                c1986In = new Notification.Approve(id9, read9, map, date9, userId9, networkType9 == null ? "" : networkType9, str30, str29, map7);
                break;
            case 10:
                String id10 = notificationResponse.getId();
                boolean read10 = notificationResponse.getRead();
                String date10 = notificationResponse.getDate();
                String userId10 = notificationResponse.getUserId();
                String networkType10 = notificationResponse.getNetworkType();
                String str31 = networkType10 == null ? "" : networkType10;
                String stakingId = notificationResponse.getStakingId();
                String stakingName = notificationResponse.getStakingName();
                String stakingToken = notificationResponse.getStakingToken();
                String bigDecimal9 = notificationResponse.getAmount().toString();
                String shouldFinishAt = notificationResponse.getShouldFinishAt();
                String str32 = shouldFinishAt == null ? "" : shouldFinishAt;
                Intrinsics.checkNotNullExpressionValue(bigDecimal9, "toString()");
                c1986In = new Notification.StakingSafeWithdrawalStarted(id10, read10, map, date10, userId10, str31, stakingId, stakingName, stakingToken, bigDecimal9, str32);
                break;
            case 11:
                String id11 = notificationResponse.getId();
                boolean read11 = notificationResponse.getRead();
                String date11 = notificationResponse.getDate();
                String userId11 = notificationResponse.getUserId();
                String networkType11 = notificationResponse.getNetworkType();
                String str33 = networkType11 == null ? "" : networkType11;
                String stakingId2 = notificationResponse.getStakingId();
                String stakingName2 = notificationResponse.getStakingName();
                String stakingToken2 = notificationResponse.getStakingToken();
                String bigDecimal10 = notificationResponse.getAmount().toString();
                Intrinsics.checkNotNullExpressionValue(bigDecimal10, "toString()");
                c1986In = new Notification.StakingSafeWithdrawalFinished(id11, read11, map, date11, userId11, str33, stakingId2, stakingName2, stakingToken2, bigDecimal10);
                break;
            case 12:
                String id12 = notificationResponse.getId();
                boolean read12 = notificationResponse.getRead();
                String date12 = notificationResponse.getDate();
                String userId12 = notificationResponse.getUserId();
                String networkType12 = notificationResponse.getNetworkType();
                c1986In = new Notification.StakingStarted(id12, read12, map, date12, userId12, networkType12 == null ? "" : networkType12, notificationResponse.getStakingId(), notificationResponse.getStakingName(), notificationResponse.getStakingAuthor(), notificationResponse.getStakingWebsite(), notificationResponse.getStakingAPY(), notificationResponse.getStakingAPR(), notificationResponse.getStakingEndsAt(), notificationResponse.getStakingToken());
                break;
            case 13:
                String id13 = notificationResponse.getId();
                boolean read13 = notificationResponse.getRead();
                String date13 = notificationResponse.getDate();
                String userId13 = notificationResponse.getUserId();
                String networkType13 = notificationResponse.getNetworkType();
                c1986In = new Notification.StakingFinished(id13, read13, map, date13, userId13, networkType13 == null ? "" : networkType13, notificationResponse.getStakingId(), notificationResponse.getStakingName(), notificationResponse.getStakingToken(), notificationResponse.getDebtAsToken(), notificationResponse.getDebtAsUsd(), notificationResponse.getProfitAsToken(), notificationResponse.getProfitAsUsd());
                break;
            case 14:
                return unsupportedNotification(notificationResponse);
            default:
                throw new NoWhenBranchMatchedException();
        }
        return c1986In;
    }

    private static final Notification unsupportedNotification(NotificationResponse notificationResponse) {
        String id = notificationResponse.getId();
        boolean read = notificationResponse.getRead();
        String date = notificationResponse.getDate();
        NotificationType map = NotificationType.Companion.map(notificationResponse.getType());
        String userId = notificationResponse.getUserId();
        String networkType = notificationResponse.getNetworkType();
        if (networkType == null) {
            networkType = "";
        }
        return new Notification.Unsupported(id, read, map, date, userId, networkType);
    }
}
