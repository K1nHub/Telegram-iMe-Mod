package com.iMe.storage.data.mapper.notification;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.data.network.model.response.notification.NotificationResponse;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.notification.Notification;
import com.iMe.storage.domain.model.notification.NotificationType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
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
        Notification c1918In;
        Intrinsics.checkNotNullParameter(notificationResponse, "<this>");
        NotificationType map = NotificationType.Companion.map(notificationResponse.getType());
        switch (WhenMappings.$EnumSwitchMapping$0[map.ordinal()]) {
            case 1:
                TokenCode parseSupportedTokenCode = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode != null) {
                    String id = notificationResponse.getId();
                    boolean read = notificationResponse.getRead();
                    String date = notificationResponse.getDate();
                    String userId = notificationResponse.getUserId();
                    String fromWalletAddress = notificationResponse.getFromWalletAddress();
                    String str = fromWalletAddress == null ? "" : fromWalletAddress;
                    String toWalletAddress = notificationResponse.getToWalletAddress();
                    String str2 = toWalletAddress == null ? "" : toWalletAddress;
                    String bigDecimal = notificationResponse.getAmount().toString();
                    NetworkType.Companion companion = NetworkType.Companion;
                    String networkType = notificationResponse.getNetworkType();
                    if (networkType == null) {
                        networkType = "";
                    }
                    NetworkType map2 = companion.map(networkType);
                    Intrinsics.checkNotNullExpressionValue(bigDecimal, "toString()");
                    c1918In = new Notification.CryptoTransfer.C1918In(id, read, map, date, userId, map2, parseSupportedTokenCode, str, str2, bigDecimal);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 2:
                TokenCode parseSupportedTokenCode2 = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode2 != null) {
                    String id2 = notificationResponse.getId();
                    boolean read2 = notificationResponse.getRead();
                    String date2 = notificationResponse.getDate();
                    String userId2 = notificationResponse.getUserId();
                    String fromWalletAddress2 = notificationResponse.getFromWalletAddress();
                    String str3 = fromWalletAddress2 == null ? "" : fromWalletAddress2;
                    String toWalletAddress2 = notificationResponse.getToWalletAddress();
                    String str4 = toWalletAddress2 == null ? "" : toWalletAddress2;
                    String bigDecimal2 = notificationResponse.getAmount().toString();
                    Status.Companion companion2 = Status.Companion;
                    String status = notificationResponse.getStatus();
                    if (status == null) {
                        status = "";
                    }
                    Status map3 = companion2.map(status);
                    NetworkType.Companion companion3 = NetworkType.Companion;
                    String networkType2 = notificationResponse.getNetworkType();
                    if (networkType2 == null) {
                        networkType2 = "";
                    }
                    NetworkType map4 = companion3.map(networkType2);
                    Intrinsics.checkNotNullExpressionValue(bigDecimal2, "toString()");
                    c1918In = new Notification.CryptoTransfer.Out(map3, id2, read2, map, date2, userId2, map4, parseSupportedTokenCode2, str3, str4, bigDecimal2);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 3:
                TokenCode parseSupportedTokenCode3 = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode3 != null) {
                    String id3 = notificationResponse.getId();
                    boolean read3 = notificationResponse.getRead();
                    String date3 = notificationResponse.getDate();
                    String userId3 = notificationResponse.getUserId();
                    String fromWalletAddress3 = notificationResponse.getFromWalletAddress();
                    String str5 = fromWalletAddress3 == null ? "" : fromWalletAddress3;
                    String toWalletAddress3 = notificationResponse.getToWalletAddress();
                    String str6 = toWalletAddress3 == null ? "" : toWalletAddress3;
                    String bigDecimal3 = notificationResponse.getAmount().toString();
                    NetworkType.Companion companion4 = NetworkType.Companion;
                    String networkType3 = notificationResponse.getNetworkType();
                    if (networkType3 == null) {
                        networkType3 = "";
                    }
                    NetworkType map5 = companion4.map(networkType3);
                    Intrinsics.checkNotNullExpressionValue(bigDecimal3, "toString()");
                    c1918In = new Notification.Donation.C1919In(id3, read3, map, date3, userId3, map5, parseSupportedTokenCode3, str5, str6, bigDecimal3);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 4:
                TokenCode parseSupportedTokenCode4 = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode4 != null) {
                    String id4 = notificationResponse.getId();
                    boolean read4 = notificationResponse.getRead();
                    String date4 = notificationResponse.getDate();
                    String userId4 = notificationResponse.getUserId();
                    String fromWalletAddress4 = notificationResponse.getFromWalletAddress();
                    String str7 = fromWalletAddress4 == null ? "" : fromWalletAddress4;
                    String toWalletAddress4 = notificationResponse.getToWalletAddress();
                    String str8 = toWalletAddress4 == null ? "" : toWalletAddress4;
                    String bigDecimal4 = notificationResponse.getAmount().toString();
                    Status.Companion companion5 = Status.Companion;
                    String status2 = notificationResponse.getStatus();
                    if (status2 == null) {
                        status2 = "";
                    }
                    Status map6 = companion5.map(status2);
                    NetworkType.Companion companion6 = NetworkType.Companion;
                    String networkType4 = notificationResponse.getNetworkType();
                    if (networkType4 == null) {
                        networkType4 = "";
                    }
                    NetworkType map7 = companion6.map(networkType4);
                    Intrinsics.checkNotNullExpressionValue(bigDecimal4, "toString()");
                    c1918In = new Notification.Donation.Out(map6, id4, read4, map, date4, userId4, map7, parseSupportedTokenCode4, str7, str8, bigDecimal4);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 5:
                TokenCode parseSupportedTokenCode5 = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode5 != null) {
                    String id5 = notificationResponse.getId();
                    boolean read5 = notificationResponse.getRead();
                    String date5 = notificationResponse.getDate();
                    String userId5 = notificationResponse.getUserId();
                    String toWalletAddress5 = notificationResponse.getToWalletAddress();
                    String str9 = toWalletAddress5 == null ? "" : toWalletAddress5;
                    String bigDecimal5 = notificationResponse.getAmount().toString();
                    Status.Companion companion7 = Status.Companion;
                    String status3 = notificationResponse.getStatus();
                    if (status3 == null) {
                        status3 = "";
                    }
                    Status map8 = companion7.map(status3);
                    String amountToSpent = notificationResponse.getAmountToSpent();
                    BigDecimal bigDecimal6 = amountToSpent != null ? new BigDecimal(amountToSpent) : BigDecimal.ZERO;
                    String spentCurrency = notificationResponse.getSpentCurrency();
                    if (spentCurrency == null) {
                        spentCurrency = TokenCode.USD.getName();
                    }
                    FiatCode fiatCode = new FiatCode(spentCurrency, 0, 2, null);
                    NetworkType.Companion companion8 = NetworkType.Companion;
                    String networkType5 = notificationResponse.getNetworkType();
                    if (networkType5 == null) {
                        networkType5 = "";
                    }
                    NetworkType map9 = companion8.map(networkType5);
                    Intrinsics.checkNotNullExpressionValue(bigDecimal5, "toString()");
                    Intrinsics.checkNotNullExpressionValue(bigDecimal6, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO");
                    c1918In = new Notification.Simplex(id5, read5, map, date5, userId5, map9, parseSupportedTokenCode5, str9, bigDecimal5, map8, bigDecimal6, fiatCode);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 6:
                String id6 = notificationResponse.getId();
                boolean read6 = notificationResponse.getRead();
                String date6 = notificationResponse.getDate();
                String userId6 = notificationResponse.getUserId();
                String bigDecimal7 = notificationResponse.getAmount().toString();
                String assetCode = notificationResponse.getAssetCode();
                String str10 = assetCode == null ? "" : assetCode;
                String assetName = notificationResponse.getAssetName();
                String str11 = assetName == null ? "" : assetName;
                String payerUserId = notificationResponse.getPayerUserId();
                String str12 = payerUserId == null ? "" : payerUserId;
                NetworkType.Companion companion9 = NetworkType.Companion;
                String networkType6 = notificationResponse.getNetworkType();
                NetworkType map10 = companion9.map(networkType6 != null ? networkType6 : "");
                Intrinsics.checkNotNullExpressionValue(bigDecimal7, "toString()");
                c1918In = new Notification.BinancePayRequestCreated(id6, read6, map, date6, userId6, map10, bigDecimal7, str10, str11, str12);
                break;
            case 7:
                String id7 = notificationResponse.getId();
                boolean read7 = notificationResponse.getRead();
                String date7 = notificationResponse.getDate();
                String userId7 = notificationResponse.getUserId();
                String bigDecimal8 = notificationResponse.getAmount().toString();
                String assetCode2 = notificationResponse.getAssetCode();
                String str13 = assetCode2 == null ? "" : assetCode2;
                String assetName2 = notificationResponse.getAssetName();
                String str14 = assetName2 == null ? "" : assetName2;
                String payerUserId2 = notificationResponse.getPayerUserId();
                String str15 = payerUserId2 == null ? "" : payerUserId2;
                BinanceTransactionStatus.Companion companion10 = BinanceTransactionStatus.Companion;
                String status4 = notificationResponse.getStatus();
                if (status4 == null) {
                    status4 = "";
                }
                BinanceTransactionStatus map11 = companion10.map(status4);
                NetworkType.Companion companion11 = NetworkType.Companion;
                String networkType7 = notificationResponse.getNetworkType();
                NetworkType map12 = companion11.map(networkType7 != null ? networkType7 : "");
                Intrinsics.checkNotNullExpressionValue(bigDecimal8, "toString()");
                c1918In = new Notification.BinancePayRequestStatusUpdated(id7, read7, map, date7, userId7, map12, bigDecimal8, str13, str14, str15, map11);
                break;
            case 8:
                String id8 = notificationResponse.getId();
                boolean read8 = notificationResponse.getRead();
                String date8 = notificationResponse.getDate();
                String userId8 = notificationResponse.getUserId();
                String txHash = notificationResponse.getTxHash();
                String str16 = txHash == null ? "" : txHash;
                Status.Companion companion12 = Status.Companion;
                String status5 = notificationResponse.getStatus();
                if (status5 == null) {
                    status5 = "";
                }
                Status map13 = companion12.map(status5);
                NetworkType.Companion companion13 = NetworkType.Companion;
                String networkType8 = notificationResponse.getNetworkType();
                c1918In = new Notification.Cancel(id8, read8, map, date8, userId8, companion13.map(networkType8 != null ? networkType8 : ""), str16, map13);
                break;
            case 9:
                TokenCode parseSupportedTokenCode6 = parseSupportedTokenCode(notificationResponse.getCryptoCode());
                if (parseSupportedTokenCode6 != null) {
                    String id9 = notificationResponse.getId();
                    boolean read9 = notificationResponse.getRead();
                    String date9 = notificationResponse.getDate();
                    String userId9 = notificationResponse.getUserId();
                    String txHash2 = notificationResponse.getTxHash();
                    String str17 = txHash2 == null ? "" : txHash2;
                    Status.Companion companion14 = Status.Companion;
                    String status6 = notificationResponse.getStatus();
                    if (status6 == null) {
                        status6 = "";
                    }
                    Status map14 = companion14.map(status6);
                    NetworkType.Companion companion15 = NetworkType.Companion;
                    String networkType9 = notificationResponse.getNetworkType();
                    c1918In = new Notification.Approve(id9, read9, map, date9, userId9, companion15.map(networkType9 != null ? networkType9 : ""), parseSupportedTokenCode6, str17, map14);
                    break;
                } else {
                    return unsupportedNotification(notificationResponse);
                }
            case 10:
                String id10 = notificationResponse.getId();
                boolean read10 = notificationResponse.getRead();
                String date10 = notificationResponse.getDate();
                String userId10 = notificationResponse.getUserId();
                NetworkType.Companion companion16 = NetworkType.Companion;
                String networkType10 = notificationResponse.getNetworkType();
                if (networkType10 == null) {
                    networkType10 = "";
                }
                NetworkType map15 = companion16.map(networkType10);
                String stakingId = notificationResponse.getStakingId();
                String stakingName = notificationResponse.getStakingName();
                String stakingToken = notificationResponse.getStakingToken();
                String bigDecimal9 = notificationResponse.getAmount().toString();
                String shouldFinishAt = notificationResponse.getShouldFinishAt();
                String str18 = shouldFinishAt == null ? "" : shouldFinishAt;
                Intrinsics.checkNotNullExpressionValue(bigDecimal9, "toString()");
                c1918In = new Notification.StakingSafeWithdrawalStarted(id10, read10, map, date10, userId10, map15, stakingId, stakingName, stakingToken, bigDecimal9, str18);
                break;
            case 11:
                String id11 = notificationResponse.getId();
                boolean read11 = notificationResponse.getRead();
                String date11 = notificationResponse.getDate();
                String userId11 = notificationResponse.getUserId();
                NetworkType.Companion companion17 = NetworkType.Companion;
                String networkType11 = notificationResponse.getNetworkType();
                NetworkType map16 = companion17.map(networkType11 != null ? networkType11 : "");
                String stakingId2 = notificationResponse.getStakingId();
                String stakingName2 = notificationResponse.getStakingName();
                String stakingToken2 = notificationResponse.getStakingToken();
                String bigDecimal10 = notificationResponse.getAmount().toString();
                Intrinsics.checkNotNullExpressionValue(bigDecimal10, "toString()");
                c1918In = new Notification.StakingSafeWithdrawalFinished(id11, read11, map, date11, userId11, map16, stakingId2, stakingName2, stakingToken2, bigDecimal10);
                break;
            case 12:
                String id12 = notificationResponse.getId();
                boolean read12 = notificationResponse.getRead();
                String date12 = notificationResponse.getDate();
                String userId12 = notificationResponse.getUserId();
                NetworkType.Companion companion18 = NetworkType.Companion;
                String networkType12 = notificationResponse.getNetworkType();
                c1918In = new Notification.StakingStarted(id12, read12, map, date12, userId12, companion18.map(networkType12 != null ? networkType12 : ""), notificationResponse.getStakingId(), notificationResponse.getStakingName(), notificationResponse.getStakingAuthor(), notificationResponse.getStakingWebsite(), notificationResponse.getStakingAPY(), notificationResponse.getStakingAPR(), notificationResponse.getStakingEndsAt(), notificationResponse.getStakingToken());
                break;
            case 13:
                String id13 = notificationResponse.getId();
                boolean read13 = notificationResponse.getRead();
                String date13 = notificationResponse.getDate();
                String userId13 = notificationResponse.getUserId();
                NetworkType.Companion companion19 = NetworkType.Companion;
                String networkType13 = notificationResponse.getNetworkType();
                c1918In = new Notification.StakingFinished(id13, read13, map, date13, userId13, companion19.map(networkType13 != null ? networkType13 : ""), notificationResponse.getStakingId(), notificationResponse.getStakingName(), notificationResponse.getStakingToken(), notificationResponse.getDebtAsToken(), notificationResponse.getDebtAsUsd(), notificationResponse.getProfitAsToken(), notificationResponse.getProfitAsUsd());
                break;
            case 14:
                return unsupportedNotification(notificationResponse);
            default:
                throw new NoWhenBranchMatchedException();
        }
        return c1918In;
    }

    private static final TokenCode parseSupportedTokenCode(String str) {
        TokenCode.Companion companion = TokenCode.Companion;
        if (str == null) {
            str = "";
        }
        TokenCode map = companion.map(str);
        if (map == TokenCode.UNKNOWN) {
            return null;
        }
        return map;
    }

    private static final Notification unsupportedNotification(NotificationResponse notificationResponse) {
        String id = notificationResponse.getId();
        boolean read = notificationResponse.getRead();
        String date = notificationResponse.getDate();
        NotificationType map = NotificationType.Companion.map(notificationResponse.getType());
        String userId = notificationResponse.getUserId();
        NetworkType.Companion companion = NetworkType.Companion;
        String networkType = notificationResponse.getNetworkType();
        if (networkType == null) {
            networkType = "";
        }
        return new Notification.Unsupported(id, read, map, date, userId, companion.map(networkType));
    }
}
