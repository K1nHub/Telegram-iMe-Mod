package com.smedialink.model.wallet.notification;

import com.smedialink.storage.data.network.model.response.base.Status;
import com.smedialink.storage.domain.model.notification.NotificationType;
import com.smedialink.storage.domain.model.wallet.token.FiatCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.formatter.BalanceFormatter;
import java.math.BigDecimal;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3286R;
/* compiled from: PushNotificationModel.kt */
/* loaded from: classes3.dex */
public abstract class PushNotificationModel {
    public static final String ACTION_OPEN_WALLET = "com.iMe.push.action.openwallet";
    public static final String BASE_PUSH_ACTION = "com.iMe.push.action";
    public static final Companion Companion = new Companion(null);
    private final transient String type;
    private final transient String userId;

    public String getAction() {
        return ACTION_OPEN_WALLET;
    }

    public abstract String getMessage();

    public PushNotificationModel(String userId, String type) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(type, "type");
        this.userId = userId;
        this.type = type;
    }

    /* renamed from: getUserId  reason: collision with other method in class */
    public String mo1163getUserId() {
        return this.userId;
    }

    /* renamed from: getType  reason: collision with other method in class */
    public String mo1162getType() {
        return this.type;
    }

    public long getUserId() {
        return Long.parseLong(mo1163getUserId());
    }

    public NotificationType getType() {
        return NotificationType.Companion.map(mo1162getType());
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class Unsupported extends PushNotificationModel {
        private final String type;
        private final String userId;

        public static /* synthetic */ Unsupported copy$default(Unsupported unsupported, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = unsupported.mo1163getUserId();
            }
            if ((i & 2) != 0) {
                str2 = unsupported.mo1162getType();
            }
            return unsupported.copy(str, str2);
        }

        public final String component1() {
            return mo1163getUserId();
        }

        public final String component2() {
            return mo1162getType();
        }

        public final Unsupported copy(String userId, String type) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            return new Unsupported(userId, type);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Unsupported) {
                Unsupported unsupported = (Unsupported) obj;
                return Intrinsics.areEqual(mo1163getUserId(), unsupported.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), unsupported.mo1162getType());
            }
            return false;
        }

        public int hashCode() {
            return (mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode();
        }

        public String toString() {
            return "Unsupported(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unsupported(String userId, String type) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            this.userId = userId;
            this.type = type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_wallet_unsupported, new Object[0]);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class Simplex extends PushNotificationModel {
        private final String amount;
        private final String amountToSpent;
        private final String cryptoCode;
        private final String spentCurrency;
        private final String status;
        private final String toWalletAddress;
        private final String type;
        private final String userId;

        public final String component1() {
            return mo1163getUserId();
        }

        public final String component2() {
            return mo1162getType();
        }

        public final String component3() {
            return this.status;
        }

        public final String component4() {
            return this.cryptoCode;
        }

        public final String component5() {
            return this.toWalletAddress;
        }

        public final String component6() {
            return this.amount;
        }

        public final String component7() {
            return this.spentCurrency;
        }

        public final String component8() {
            return this.amountToSpent;
        }

        public final Simplex copy(String userId, String type, String status, String cryptoCode, String toWalletAddress, String amount, String spentCurrency, String amountToSpent) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
            Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(spentCurrency, "spentCurrency");
            Intrinsics.checkNotNullParameter(amountToSpent, "amountToSpent");
            return new Simplex(userId, type, status, cryptoCode, toWalletAddress, amount, spentCurrency, amountToSpent);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Simplex) {
                Simplex simplex = (Simplex) obj;
                return Intrinsics.areEqual(mo1163getUserId(), simplex.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), simplex.mo1162getType()) && Intrinsics.areEqual(this.status, simplex.status) && Intrinsics.areEqual(this.cryptoCode, simplex.cryptoCode) && Intrinsics.areEqual(this.toWalletAddress, simplex.toWalletAddress) && Intrinsics.areEqual(this.amount, simplex.amount) && Intrinsics.areEqual(this.spentCurrency, simplex.spentCurrency) && Intrinsics.areEqual(this.amountToSpent, simplex.amountToSpent);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.status.hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.toWalletAddress.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.spentCurrency.hashCode()) * 31) + this.amountToSpent.hashCode();
        }

        public String toString() {
            return "Simplex(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", status=" + this.status + ", cryptoCode=" + this.cryptoCode + ", toWalletAddress=" + this.toWalletAddress + ", amount=" + this.amount + ", spentCurrency=" + this.spentCurrency + ", amountToSpent=" + this.amountToSpent + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getCryptoCode() {
            return this.cryptoCode;
        }

        public final String getToWalletAddress() {
            return this.toWalletAddress;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getSpentCurrency() {
            return this.spentCurrency;
        }

        public final String getAmountToSpent() {
            return this.amountToSpent;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simplex(String userId, String type, String status, String cryptoCode, String toWalletAddress, String amount, String spentCurrency, String amountToSpent) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
            Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(spentCurrency, "spentCurrency");
            Intrinsics.checkNotNullParameter(amountToSpent, "amountToSpent");
            this.userId = userId;
            this.type = type;
            this.status = status;
            this.cryptoCode = cryptoCode;
            this.toWalletAddress = toWalletAddress;
            this.amount = amount;
            this.spentCurrency = spentCurrency;
            this.amountToSpent = amountToSpent;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            FiatCode fiatCode = new FiatCode(this.spentCurrency, 0, 2, null);
            TokenInfo map = TokenInfo.Companion.map(this.cryptoCode);
            return getString(C3286R.string.push_notification_wallet_simplex_payment, BalanceFormatter.formatBalance(new BigDecimal(this.amountToSpent), fiatCode.getDecimals()), fiatCode.getShortName(), BalanceFormatter.formatBalance(new BigDecimal(this.amount), map.getDecimals()), getString(map.getShortName(), new Object[0]), getString(Status.Companion.map(this.status).getTitle(), new Object[0]));
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class BinancePayRequestCreated extends PushNotificationModel {
        private final String amount;
        private final String assetCode;
        private final String assetName;
        private final String payerUserId;
        private final String type;
        private final String userId;

        public static /* synthetic */ BinancePayRequestCreated copy$default(BinancePayRequestCreated binancePayRequestCreated, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
            if ((i & 1) != 0) {
                str = binancePayRequestCreated.mo1162getType();
            }
            if ((i & 2) != 0) {
                str2 = binancePayRequestCreated.mo1163getUserId();
            }
            String str7 = str2;
            if ((i & 4) != 0) {
                str3 = binancePayRequestCreated.amount;
            }
            String str8 = str3;
            if ((i & 8) != 0) {
                str4 = binancePayRequestCreated.assetCode;
            }
            String str9 = str4;
            if ((i & 16) != 0) {
                str5 = binancePayRequestCreated.assetName;
            }
            String str10 = str5;
            if ((i & 32) != 0) {
                str6 = binancePayRequestCreated.payerUserId;
            }
            return binancePayRequestCreated.copy(str, str7, str8, str9, str10, str6);
        }

        public final String component1() {
            return mo1162getType();
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.amount;
        }

        public final String component4() {
            return this.assetCode;
        }

        public final String component5() {
            return this.assetName;
        }

        public final String component6() {
            return this.payerUserId;
        }

        public final BinancePayRequestCreated copy(String type, String userId, String amount, String assetCode, String assetName, String payerUserId) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            return new BinancePayRequestCreated(type, userId, amount, assetCode, assetName, payerUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BinancePayRequestCreated) {
                BinancePayRequestCreated binancePayRequestCreated = (BinancePayRequestCreated) obj;
                return Intrinsics.areEqual(mo1162getType(), binancePayRequestCreated.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), binancePayRequestCreated.mo1163getUserId()) && Intrinsics.areEqual(this.amount, binancePayRequestCreated.amount) && Intrinsics.areEqual(this.assetCode, binancePayRequestCreated.assetCode) && Intrinsics.areEqual(this.assetName, binancePayRequestCreated.assetName) && Intrinsics.areEqual(this.payerUserId, binancePayRequestCreated.payerUserId);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.amount.hashCode()) * 31) + this.assetCode.hashCode()) * 31) + this.assetName.hashCode()) * 31) + this.payerUserId.hashCode();
        }

        public String toString() {
            return "BinancePayRequestCreated(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", amount=" + this.amount + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", payerUserId=" + this.payerUserId + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getAssetCode() {
            return this.assetCode;
        }

        public final String getAssetName() {
            return this.assetName;
        }

        public final String getPayerUserId() {
            return this.payerUserId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BinancePayRequestCreated(String type, String userId, String amount, String assetCode, String assetName, String payerUserId) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            this.type = type;
            this.userId = userId;
            this.amount = amount;
            this.assetCode = assetCode;
            this.assetName = assetName;
            this.payerUserId = payerUserId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_wallet_binance_pay_request_created_description, BalanceFormatter.formatBalance(Double.valueOf(Double.parseDouble(this.amount)), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()), this.assetCode, mo1163getUserId());
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class BinancePayRequestStatusUpdated extends PushNotificationModel {
        private final String amount;
        private final String assetCode;
        private final String assetName;
        private final String payerUserId;
        private final String status;
        private final String type;
        private final String userId;

        public static /* synthetic */ BinancePayRequestStatusUpdated copy$default(BinancePayRequestStatusUpdated binancePayRequestStatusUpdated, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
            if ((i & 1) != 0) {
                str = binancePayRequestStatusUpdated.mo1162getType();
            }
            if ((i & 2) != 0) {
                str2 = binancePayRequestStatusUpdated.mo1163getUserId();
            }
            String str8 = str2;
            if ((i & 4) != 0) {
                str3 = binancePayRequestStatusUpdated.amount;
            }
            String str9 = str3;
            if ((i & 8) != 0) {
                str4 = binancePayRequestStatusUpdated.assetCode;
            }
            String str10 = str4;
            if ((i & 16) != 0) {
                str5 = binancePayRequestStatusUpdated.assetName;
            }
            String str11 = str5;
            if ((i & 32) != 0) {
                str6 = binancePayRequestStatusUpdated.payerUserId;
            }
            String str12 = str6;
            if ((i & 64) != 0) {
                str7 = binancePayRequestStatusUpdated.status;
            }
            return binancePayRequestStatusUpdated.copy(str, str8, str9, str10, str11, str12, str7);
        }

        public final String component1() {
            return mo1162getType();
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.amount;
        }

        public final String component4() {
            return this.assetCode;
        }

        public final String component5() {
            return this.assetName;
        }

        public final String component6() {
            return this.payerUserId;
        }

        public final String component7() {
            return this.status;
        }

        public final BinancePayRequestStatusUpdated copy(String type, String userId, String amount, String assetCode, String assetName, String payerUserId, String status) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(status, "status");
            return new BinancePayRequestStatusUpdated(type, userId, amount, assetCode, assetName, payerUserId, status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BinancePayRequestStatusUpdated) {
                BinancePayRequestStatusUpdated binancePayRequestStatusUpdated = (BinancePayRequestStatusUpdated) obj;
                return Intrinsics.areEqual(mo1162getType(), binancePayRequestStatusUpdated.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), binancePayRequestStatusUpdated.mo1163getUserId()) && Intrinsics.areEqual(this.amount, binancePayRequestStatusUpdated.amount) && Intrinsics.areEqual(this.assetCode, binancePayRequestStatusUpdated.assetCode) && Intrinsics.areEqual(this.assetName, binancePayRequestStatusUpdated.assetName) && Intrinsics.areEqual(this.payerUserId, binancePayRequestStatusUpdated.payerUserId) && Intrinsics.areEqual(this.status, binancePayRequestStatusUpdated.status);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.amount.hashCode()) * 31) + this.assetCode.hashCode()) * 31) + this.assetName.hashCode()) * 31) + this.payerUserId.hashCode()) * 31) + this.status.hashCode();
        }

        public String toString() {
            return "BinancePayRequestStatusUpdated(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", amount=" + this.amount + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", payerUserId=" + this.payerUserId + ", status=" + this.status + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getAssetCode() {
            return this.assetCode;
        }

        public final String getAssetName() {
            return this.assetName;
        }

        public final String getPayerUserId() {
            return this.payerUserId;
        }

        public final String getStatus() {
            return this.status;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BinancePayRequestStatusUpdated(String type, String userId, String amount, String assetCode, String assetName, String payerUserId, String status) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(status, "status");
            this.type = type;
            this.userId = userId;
            this.amount = amount;
            this.assetCode = assetCode;
            this.assetName = assetName;
            this.payerUserId = payerUserId;
            this.status = status;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_wallet_binance_pay_request_status_updated_description, BalanceFormatter.formatBalance(Double.valueOf(Double.parseDouble(this.amount)), TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getDecimals()), this.assetCode, this.payerUserId);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class StakingSafeWithdrawalStarted extends PushNotificationModel {
        private final String amount;
        private final String networkType;
        private final String shouldFinishAt;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final String type;
        private final String userId;

        public final String component1() {
            return mo1162getType();
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.networkType;
        }

        public final String component4() {
            return this.stakingId;
        }

        public final String component5() {
            return this.stakingName;
        }

        public final String component6() {
            return this.stakingToken;
        }

        public final String component7() {
            return this.amount;
        }

        public final String component8() {
            return this.shouldFinishAt;
        }

        public final StakingSafeWithdrawalStarted copy(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String amount, String shouldFinishAt) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(shouldFinishAt, "shouldFinishAt");
            return new StakingSafeWithdrawalStarted(type, userId, networkType, stakingId, stakingName, stakingToken, amount, shouldFinishAt);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingSafeWithdrawalStarted) {
                StakingSafeWithdrawalStarted stakingSafeWithdrawalStarted = (StakingSafeWithdrawalStarted) obj;
                return Intrinsics.areEqual(mo1162getType(), stakingSafeWithdrawalStarted.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), stakingSafeWithdrawalStarted.mo1163getUserId()) && Intrinsics.areEqual(this.networkType, stakingSafeWithdrawalStarted.networkType) && Intrinsics.areEqual(this.stakingId, stakingSafeWithdrawalStarted.stakingId) && Intrinsics.areEqual(this.stakingName, stakingSafeWithdrawalStarted.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingSafeWithdrawalStarted.stakingToken) && Intrinsics.areEqual(this.amount, stakingSafeWithdrawalStarted.amount) && Intrinsics.areEqual(this.shouldFinishAt, stakingSafeWithdrawalStarted.shouldFinishAt);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.shouldFinishAt.hashCode();
        }

        public String toString() {
            return "StakingSafeWithdrawalStarted(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", networkType=" + this.networkType + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", amount=" + this.amount + ", shouldFinishAt=" + this.shouldFinishAt + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getNetworkType() {
            return this.networkType;
        }

        public final String getStakingId() {
            return this.stakingId;
        }

        public final String getStakingName() {
            return this.stakingName;
        }

        public final String getStakingToken() {
            return this.stakingToken;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final String getShouldFinishAt() {
            return this.shouldFinishAt;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingSafeWithdrawalStarted(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String amount, String shouldFinishAt) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(shouldFinishAt, "shouldFinishAt");
            this.type = type;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingToken = stakingToken;
            this.amount = amount;
            this.shouldFinishAt = shouldFinishAt;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_staking_safe_withdrawal_started, StringExtKt.formatISODate$default(this.shouldFinishAt, null, 1, null));
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class StakingSafeWithdrawalFinished extends PushNotificationModel {
        private final String amount;
        private final String networkType;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final String type;
        private final String userId;

        public static /* synthetic */ StakingSafeWithdrawalFinished copy$default(StakingSafeWithdrawalFinished stakingSafeWithdrawalFinished, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
            if ((i & 1) != 0) {
                str = stakingSafeWithdrawalFinished.mo1162getType();
            }
            if ((i & 2) != 0) {
                str2 = stakingSafeWithdrawalFinished.mo1163getUserId();
            }
            String str8 = str2;
            if ((i & 4) != 0) {
                str3 = stakingSafeWithdrawalFinished.networkType;
            }
            String str9 = str3;
            if ((i & 8) != 0) {
                str4 = stakingSafeWithdrawalFinished.stakingId;
            }
            String str10 = str4;
            if ((i & 16) != 0) {
                str5 = stakingSafeWithdrawalFinished.stakingName;
            }
            String str11 = str5;
            if ((i & 32) != 0) {
                str6 = stakingSafeWithdrawalFinished.stakingToken;
            }
            String str12 = str6;
            if ((i & 64) != 0) {
                str7 = stakingSafeWithdrawalFinished.amount;
            }
            return stakingSafeWithdrawalFinished.copy(str, str8, str9, str10, str11, str12, str7);
        }

        public final String component1() {
            return mo1162getType();
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.networkType;
        }

        public final String component4() {
            return this.stakingId;
        }

        public final String component5() {
            return this.stakingName;
        }

        public final String component6() {
            return this.stakingToken;
        }

        public final String component7() {
            return this.amount;
        }

        public final StakingSafeWithdrawalFinished copy(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String amount) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            return new StakingSafeWithdrawalFinished(type, userId, networkType, stakingId, stakingName, stakingToken, amount);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingSafeWithdrawalFinished) {
                StakingSafeWithdrawalFinished stakingSafeWithdrawalFinished = (StakingSafeWithdrawalFinished) obj;
                return Intrinsics.areEqual(mo1162getType(), stakingSafeWithdrawalFinished.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), stakingSafeWithdrawalFinished.mo1163getUserId()) && Intrinsics.areEqual(this.networkType, stakingSafeWithdrawalFinished.networkType) && Intrinsics.areEqual(this.stakingId, stakingSafeWithdrawalFinished.stakingId) && Intrinsics.areEqual(this.stakingName, stakingSafeWithdrawalFinished.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingSafeWithdrawalFinished.stakingToken) && Intrinsics.areEqual(this.amount, stakingSafeWithdrawalFinished.amount);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.amount.hashCode();
        }

        public String toString() {
            return "StakingSafeWithdrawalFinished(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", networkType=" + this.networkType + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", amount=" + this.amount + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getNetworkType() {
            return this.networkType;
        }

        public final String getStakingId() {
            return this.stakingId;
        }

        public final String getStakingName() {
            return this.stakingName;
        }

        public final String getStakingToken() {
            return this.stakingToken;
        }

        public final String getAmount() {
            return this.amount;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingSafeWithdrawalFinished(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String amount) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            this.type = type;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingToken = stakingToken;
            this.amount = amount;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_staking_safe_withdrawal_finished, this.stakingToken, BalanceFormatter.formatBalance(new BigDecimal(this.amount), TokenInfo.Companion.map(this.stakingToken).getDecimals()), this.stakingToken);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class StakingStarted extends PushNotificationModel {
        private final String networkType;
        private final String stakingAPR;
        private final String stakingAPY;
        private final String stakingAuthor;
        private final String stakingEndsAt;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final String stakingWebsite;
        private final String type;
        private final String userId;

        public final String component1() {
            return mo1162getType();
        }

        public final String component10() {
            return this.stakingEndsAt;
        }

        public final String component11() {
            return this.stakingToken;
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.networkType;
        }

        public final String component4() {
            return this.stakingId;
        }

        public final String component5() {
            return this.stakingName;
        }

        public final String component6() {
            return this.stakingAuthor;
        }

        public final String component7() {
            return this.stakingWebsite;
        }

        public final String component8() {
            return this.stakingAPY;
        }

        public final String component9() {
            return this.stakingAPR;
        }

        public final StakingStarted copy(String type, String userId, String networkType, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingAuthor, "stakingAuthor");
            Intrinsics.checkNotNullParameter(stakingWebsite, "stakingWebsite");
            Intrinsics.checkNotNullParameter(stakingAPY, "stakingAPY");
            Intrinsics.checkNotNullParameter(stakingAPR, "stakingAPR");
            Intrinsics.checkNotNullParameter(stakingEndsAt, "stakingEndsAt");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            return new StakingStarted(type, userId, networkType, stakingId, stakingName, stakingAuthor, stakingWebsite, stakingAPY, stakingAPR, stakingEndsAt, stakingToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingStarted) {
                StakingStarted stakingStarted = (StakingStarted) obj;
                return Intrinsics.areEqual(mo1162getType(), stakingStarted.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), stakingStarted.mo1163getUserId()) && Intrinsics.areEqual(this.networkType, stakingStarted.networkType) && Intrinsics.areEqual(this.stakingId, stakingStarted.stakingId) && Intrinsics.areEqual(this.stakingName, stakingStarted.stakingName) && Intrinsics.areEqual(this.stakingAuthor, stakingStarted.stakingAuthor) && Intrinsics.areEqual(this.stakingWebsite, stakingStarted.stakingWebsite) && Intrinsics.areEqual(this.stakingAPY, stakingStarted.stakingAPY) && Intrinsics.areEqual(this.stakingAPR, stakingStarted.stakingAPR) && Intrinsics.areEqual(this.stakingEndsAt, stakingStarted.stakingEndsAt) && Intrinsics.areEqual(this.stakingToken, stakingStarted.stakingToken);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingAuthor.hashCode()) * 31) + this.stakingWebsite.hashCode()) * 31) + this.stakingAPY.hashCode()) * 31) + this.stakingAPR.hashCode()) * 31) + this.stakingEndsAt.hashCode()) * 31) + this.stakingToken.hashCode();
        }

        public String toString() {
            return "StakingStarted(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", networkType=" + this.networkType + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingAuthor=" + this.stakingAuthor + ", stakingWebsite=" + this.stakingWebsite + ", stakingAPY=" + this.stakingAPY + ", stakingAPR=" + this.stakingAPR + ", stakingEndsAt=" + this.stakingEndsAt + ", stakingToken=" + this.stakingToken + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getNetworkType() {
            return this.networkType;
        }

        public final String getStakingId() {
            return this.stakingId;
        }

        public final String getStakingName() {
            return this.stakingName;
        }

        public final String getStakingAuthor() {
            return this.stakingAuthor;
        }

        public final String getStakingWebsite() {
            return this.stakingWebsite;
        }

        public final String getStakingAPY() {
            return this.stakingAPY;
        }

        public final String getStakingAPR() {
            return this.stakingAPR;
        }

        public final String getStakingEndsAt() {
            return this.stakingEndsAt;
        }

        public final String getStakingToken() {
            return this.stakingToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingStarted(String type, String userId, String networkType, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingAuthor, "stakingAuthor");
            Intrinsics.checkNotNullParameter(stakingWebsite, "stakingWebsite");
            Intrinsics.checkNotNullParameter(stakingAPY, "stakingAPY");
            Intrinsics.checkNotNullParameter(stakingAPR, "stakingAPR");
            Intrinsics.checkNotNullParameter(stakingEndsAt, "stakingEndsAt");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            this.type = type;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingAuthor = stakingAuthor;
            this.stakingWebsite = stakingWebsite;
            this.stakingAPY = stakingAPY;
            this.stakingAPR = stakingAPR;
            this.stakingEndsAt = stakingEndsAt;
            this.stakingToken = stakingToken;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_staking_started, this.stakingName);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class StakingFinished extends PushNotificationModel {
        private final String debtAsToken;
        private final String debtAsUsd;
        private final String networkType;
        private final String profitAsToken;
        private final String profitAsUsd;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final String type;
        private final String userId;

        public final String component1() {
            return mo1162getType();
        }

        public final String component10() {
            return this.profitAsUsd;
        }

        public final String component2() {
            return mo1163getUserId();
        }

        public final String component3() {
            return this.networkType;
        }

        public final String component4() {
            return this.stakingId;
        }

        public final String component5() {
            return this.stakingName;
        }

        public final String component6() {
            return this.stakingToken;
        }

        public final String component7() {
            return this.debtAsToken;
        }

        public final String component8() {
            return this.debtAsUsd;
        }

        public final String component9() {
            return this.profitAsToken;
        }

        public final StakingFinished copy(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
            Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
            Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
            Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
            return new StakingFinished(type, userId, networkType, stakingId, stakingName, stakingToken, debtAsToken, debtAsUsd, profitAsToken, profitAsUsd);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingFinished) {
                StakingFinished stakingFinished = (StakingFinished) obj;
                return Intrinsics.areEqual(mo1162getType(), stakingFinished.mo1162getType()) && Intrinsics.areEqual(mo1163getUserId(), stakingFinished.mo1163getUserId()) && Intrinsics.areEqual(this.networkType, stakingFinished.networkType) && Intrinsics.areEqual(this.stakingId, stakingFinished.stakingId) && Intrinsics.areEqual(this.stakingName, stakingFinished.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingFinished.stakingToken) && Intrinsics.areEqual(this.debtAsToken, stakingFinished.debtAsToken) && Intrinsics.areEqual(this.debtAsUsd, stakingFinished.debtAsUsd) && Intrinsics.areEqual(this.profitAsToken, stakingFinished.profitAsToken) && Intrinsics.areEqual(this.profitAsUsd, stakingFinished.profitAsUsd);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((mo1162getType().hashCode() * 31) + mo1163getUserId().hashCode()) * 31) + this.networkType.hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.debtAsToken.hashCode()) * 31) + this.debtAsUsd.hashCode()) * 31) + this.profitAsToken.hashCode()) * 31) + this.profitAsUsd.hashCode();
        }

        public String toString() {
            return "StakingFinished(type=" + mo1162getType() + ", userId=" + mo1163getUserId() + ", networkType=" + this.networkType + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", debtAsToken=" + this.debtAsToken + ", debtAsUsd=" + this.debtAsUsd + ", profitAsToken=" + this.profitAsToken + ", profitAsUsd=" + this.profitAsUsd + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        public final String getNetworkType() {
            return this.networkType;
        }

        public final String getStakingId() {
            return this.stakingId;
        }

        public final String getStakingName() {
            return this.stakingName;
        }

        public final String getStakingToken() {
            return this.stakingToken;
        }

        public final String getDebtAsToken() {
            return this.debtAsToken;
        }

        public final String getDebtAsUsd() {
            return this.debtAsUsd;
        }

        public final String getProfitAsToken() {
            return this.profitAsToken;
        }

        public final String getProfitAsUsd() {
            return this.profitAsUsd;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StakingFinished(String type, String userId, String networkType, String stakingId, String stakingName, String stakingToken, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
            Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
            Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
            Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
            this.type = type;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingToken = stakingToken;
            this.debtAsToken = debtAsToken;
            this.debtAsUsd = debtAsUsd;
            this.profitAsToken = profitAsToken;
            this.profitAsUsd = profitAsUsd;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            return getString(C3286R.string.push_notification_staking_finished, this.stakingName, this.stakingToken);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class Cancel extends CryptoTransfer {
        private final String status;
        private final String txHash;
        private final String type;
        private final String userId;

        /* compiled from: PushNotificationModel.kt */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Status.values().length];
                try {
                    iArr[Status.OK.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Status.ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ Cancel copy$default(Cancel cancel, String str, String str2, String str3, String str4, int i, Object obj) {
            if ((i & 1) != 0) {
                str = cancel.mo1163getUserId();
            }
            if ((i & 2) != 0) {
                str2 = cancel.mo1162getType();
            }
            if ((i & 4) != 0) {
                str3 = cancel.status;
            }
            if ((i & 8) != 0) {
                str4 = cancel.txHash;
            }
            return cancel.copy(str, str2, str3, str4);
        }

        public final String component1() {
            return mo1163getUserId();
        }

        public final String component2() {
            return mo1162getType();
        }

        public final String component3() {
            return this.status;
        }

        public final String component4() {
            return this.txHash;
        }

        public final Cancel copy(String userId, String type, String status, String txHash) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            return new Cancel(userId, type, status, txHash);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cancel) {
                Cancel cancel = (Cancel) obj;
                return Intrinsics.areEqual(mo1163getUserId(), cancel.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), cancel.mo1162getType()) && Intrinsics.areEqual(this.status, cancel.status) && Intrinsics.areEqual(this.txHash, cancel.txHash);
            }
            return false;
        }

        public int hashCode() {
            return (((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.status.hashCode()) * 31) + this.txHash.hashCode();
        }

        public String toString() {
            return "Cancel(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", status=" + this.status + ", txHash=" + this.txHash + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getTxHash() {
            return this.txHash;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cancel(String userId, String type, String status, String txHash) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            this.userId = userId;
            this.type = type;
            this.status = status;
            this.txHash = txHash;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            int i = WhenMappings.$EnumSwitchMapping$0[Status.Companion.map(this.status).ordinal()];
            return i != 1 ? i != 2 ? "" : getString(C3286R.string.push_notification_wallet_cancelled_failed_description, this.txHash) : getString(C3286R.string.push_notification_wallet_cancelled_success_description, this.txHash);
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class Approve extends CryptoTransfer {
        private final String cryptoCode;
        private final String status;
        private final String txHash;
        private final String type;
        private final String userId;

        /* compiled from: PushNotificationModel.kt */
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Status.values().length];
                try {
                    iArr[Status.OK.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Status.ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static /* synthetic */ Approve copy$default(Approve approve, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if ((i & 1) != 0) {
                str = approve.mo1163getUserId();
            }
            if ((i & 2) != 0) {
                str2 = approve.mo1162getType();
            }
            String str6 = str2;
            if ((i & 4) != 0) {
                str3 = approve.cryptoCode;
            }
            String str7 = str3;
            if ((i & 8) != 0) {
                str4 = approve.status;
            }
            String str8 = str4;
            if ((i & 16) != 0) {
                str5 = approve.txHash;
            }
            return approve.copy(str, str6, str7, str8, str5);
        }

        public final String component1() {
            return mo1163getUserId();
        }

        public final String component2() {
            return mo1162getType();
        }

        public final String component3() {
            return this.cryptoCode;
        }

        public final String component4() {
            return this.status;
        }

        public final String component5() {
            return this.txHash;
        }

        public final Approve copy(String userId, String type, String cryptoCode, String status, String txHash) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            return new Approve(userId, type, cryptoCode, status, txHash);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Approve) {
                Approve approve = (Approve) obj;
                return Intrinsics.areEqual(mo1163getUserId(), approve.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), approve.mo1162getType()) && Intrinsics.areEqual(this.cryptoCode, approve.cryptoCode) && Intrinsics.areEqual(this.status, approve.status) && Intrinsics.areEqual(this.txHash, approve.txHash);
            }
            return false;
        }

        public int hashCode() {
            return (((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.status.hashCode()) * 31) + this.txHash.hashCode();
        }

        public String toString() {
            return "Approve(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", cryptoCode=" + this.cryptoCode + ", status=" + this.status + ", txHash=" + this.txHash + ')';
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        public final String getCryptoCode() {
            return this.cryptoCode;
        }

        public final String getStatus() {
            return this.status;
        }

        public final String getTxHash() {
            return this.txHash;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Approve(String userId, String type, String cryptoCode, String status, String txHash) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            this.userId = userId;
            this.type = type;
            this.cryptoCode = cryptoCode;
            this.status = status;
            this.txHash = txHash;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        public String getMessage() {
            int i = WhenMappings.$EnumSwitchMapping$0[Status.Companion.map(this.status).ordinal()];
            return i != 1 ? i != 2 ? "" : getString(C3286R.string.push_notification_wallet_approve_failed_description, getString(TokenInfo.Companion.map(this.cryptoCode).getShortName(), new Object[0])) : getString(C3286R.string.push_notification_wallet_approve_success_description, getString(TokenInfo.Companion.map(this.cryptoCode).getShortName(), new Object[0]));
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static abstract class CryptoTransfer extends PushNotificationModel {
        private final transient String type;
        private final transient String userId;

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CryptoTransfer(String userId, String type) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            this.userId = userId;
            this.type = type;
        }

        /* compiled from: PushNotificationModel.kt */
        /* renamed from: com.smedialink.model.wallet.notification.PushNotificationModel$CryptoTransfer$In */
        /* loaded from: classes3.dex */
        public static final class C1487In extends CryptoTransfer {
            private final String amount;
            private final String cryptoCode;
            private final String fromWalletAddress;
            private final String toWalletAddress;
            private final String type;
            private final String userId;

            public static /* synthetic */ C1487In copy$default(C1487In c1487In, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = c1487In.mo1163getUserId();
                }
                if ((i & 2) != 0) {
                    str2 = c1487In.mo1162getType();
                }
                String str7 = str2;
                if ((i & 4) != 0) {
                    str3 = c1487In.cryptoCode;
                }
                String str8 = str3;
                if ((i & 8) != 0) {
                    str4 = c1487In.fromWalletAddress;
                }
                String str9 = str4;
                if ((i & 16) != 0) {
                    str5 = c1487In.toWalletAddress;
                }
                String str10 = str5;
                if ((i & 32) != 0) {
                    str6 = c1487In.amount;
                }
                return c1487In.copy(str, str7, str8, str9, str10, str6);
            }

            public final String component1() {
                return mo1163getUserId();
            }

            public final String component2() {
                return mo1162getType();
            }

            public final String component3() {
                return this.cryptoCode;
            }

            public final String component4() {
                return this.fromWalletAddress;
            }

            public final String component5() {
                return this.toWalletAddress;
            }

            public final String component6() {
                return this.amount;
            }

            public final C1487In copy(String userId, String type, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new C1487In(userId, type, cryptoCode, fromWalletAddress, toWalletAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof C1487In) {
                    C1487In c1487In = (C1487In) obj;
                    return Intrinsics.areEqual(mo1163getUserId(), c1487In.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), c1487In.mo1162getType()) && Intrinsics.areEqual(this.cryptoCode, c1487In.cryptoCode) && Intrinsics.areEqual(this.fromWalletAddress, c1487In.fromWalletAddress) && Intrinsics.areEqual(this.toWalletAddress, c1487In.toWalletAddress) && Intrinsics.areEqual(this.amount, c1487In.amount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.fromWalletAddress.hashCode()) * 31) + this.toWalletAddress.hashCode()) * 31) + this.amount.hashCode();
            }

            public String toString() {
                return "In(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", cryptoCode=" + this.cryptoCode + ", fromWalletAddress=" + this.fromWalletAddress + ", toWalletAddress=" + this.toWalletAddress + ", amount=" + this.amount + ')';
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getUserId */
            public String mo1163getUserId() {
                return this.userId;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getType */
            public String mo1162getType() {
                return this.type;
            }

            public final String getCryptoCode() {
                return this.cryptoCode;
            }

            public final String getFromWalletAddress() {
                return this.fromWalletAddress;
            }

            public final String getToWalletAddress() {
                return this.toWalletAddress;
            }

            public final String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1487In(String userId, String type, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                super(userId, type);
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.userId = userId;
                this.type = type;
                this.cryptoCode = cryptoCode;
                this.fromWalletAddress = fromWalletAddress;
                this.toWalletAddress = toWalletAddress;
                this.amount = amount;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel
            public String getMessage() {
                int i = C3286R.string.push_notification_wallet_crypto_transfer_in_description;
                BigDecimal bigDecimal = new BigDecimal(this.amount);
                TokenInfo.Companion companion = TokenInfo.Companion;
                return getString(i, BalanceFormatter.formatBalance(bigDecimal, companion.map(this.cryptoCode).getDecimals()), getString(companion.map(this.cryptoCode).getShortName(), new Object[0]), this.fromWalletAddress);
            }
        }

        /* compiled from: PushNotificationModel.kt */
        /* loaded from: classes3.dex */
        public static final class Out extends CryptoTransfer {
            private final String amount;
            private final String cryptoCode;
            private final String fromWalletAddress;
            private final String status;
            private final String toWalletAddress;
            private final String type;
            private final String userId;

            /* compiled from: PushNotificationModel.kt */
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[Status.values().length];
                    try {
                        iArr[Status.OK.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Status.ERROR.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public static /* synthetic */ Out copy$default(Out out, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = out.mo1163getUserId();
                }
                if ((i & 2) != 0) {
                    str2 = out.mo1162getType();
                }
                String str8 = str2;
                if ((i & 4) != 0) {
                    str3 = out.status;
                }
                String str9 = str3;
                if ((i & 8) != 0) {
                    str4 = out.cryptoCode;
                }
                String str10 = str4;
                if ((i & 16) != 0) {
                    str5 = out.fromWalletAddress;
                }
                String str11 = str5;
                if ((i & 32) != 0) {
                    str6 = out.toWalletAddress;
                }
                String str12 = str6;
                if ((i & 64) != 0) {
                    str7 = out.amount;
                }
                return out.copy(str, str8, str9, str10, str11, str12, str7);
            }

            public final String component1() {
                return mo1163getUserId();
            }

            public final String component2() {
                return mo1162getType();
            }

            public final String component3() {
                return this.status;
            }

            public final String component4() {
                return this.cryptoCode;
            }

            public final String component5() {
                return this.fromWalletAddress;
            }

            public final String component6() {
                return this.toWalletAddress;
            }

            public final String component7() {
                return this.amount;
            }

            public final Out copy(String userId, String type, String status, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new Out(userId, type, status, cryptoCode, fromWalletAddress, toWalletAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Out) {
                    Out out = (Out) obj;
                    return Intrinsics.areEqual(mo1163getUserId(), out.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), out.mo1162getType()) && Intrinsics.areEqual(this.status, out.status) && Intrinsics.areEqual(this.cryptoCode, out.cryptoCode) && Intrinsics.areEqual(this.fromWalletAddress, out.fromWalletAddress) && Intrinsics.areEqual(this.toWalletAddress, out.toWalletAddress) && Intrinsics.areEqual(this.amount, out.amount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.status.hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.fromWalletAddress.hashCode()) * 31) + this.toWalletAddress.hashCode()) * 31) + this.amount.hashCode();
            }

            public String toString() {
                return "Out(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", status=" + this.status + ", cryptoCode=" + this.cryptoCode + ", fromWalletAddress=" + this.fromWalletAddress + ", toWalletAddress=" + this.toWalletAddress + ", amount=" + this.amount + ')';
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getUserId */
            public String mo1163getUserId() {
                return this.userId;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getType */
            public String mo1162getType() {
                return this.type;
            }

            public final String getStatus() {
                return this.status;
            }

            public final String getCryptoCode() {
                return this.cryptoCode;
            }

            public final String getFromWalletAddress() {
                return this.fromWalletAddress;
            }

            public final String getToWalletAddress() {
                return this.toWalletAddress;
            }

            public final String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Out(String userId, String type, String status, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                super(userId, type);
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.userId = userId;
                this.type = type;
                this.status = status;
                this.cryptoCode = cryptoCode;
                this.fromWalletAddress = fromWalletAddress;
                this.toWalletAddress = toWalletAddress;
                this.amount = amount;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel
            public String getMessage() {
                int i = WhenMappings.$EnumSwitchMapping$0[Status.Companion.map(this.status).ordinal()];
                if (i == 1) {
                    int i2 = C3286R.string.push_notification_wallet_crypto_transfer_out_success_description;
                    BigDecimal bigDecimal = new BigDecimal(this.amount);
                    TokenInfo.Companion companion = TokenInfo.Companion;
                    return getString(i2, BalanceFormatter.formatBalance(bigDecimal, companion.map(this.cryptoCode).getDecimals()), getString(companion.map(this.cryptoCode).getShortName(), new Object[0]), this.toWalletAddress);
                } else if (i != 2) {
                    return "";
                } else {
                    int i3 = C3286R.string.push_notification_wallet_crypto_transfer_out_failed_description;
                    BigDecimal bigDecimal2 = new BigDecimal(this.amount);
                    TokenInfo.Companion companion2 = TokenInfo.Companion;
                    return getString(i3, BalanceFormatter.formatBalance(bigDecimal2, companion2.map(this.cryptoCode).getDecimals()), getString(companion2.map(this.cryptoCode).getShortName(), new Object[0]), this.toWalletAddress);
                }
            }
        }
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static abstract class Donation extends PushNotificationModel {
        private final transient String type;
        private final transient String userId;

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getUserId */
        public String mo1163getUserId() {
            return this.userId;
        }

        @Override // com.smedialink.model.wallet.notification.PushNotificationModel
        /* renamed from: getType */
        public String mo1162getType() {
            return this.type;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Donation(String userId, String type) {
            super(userId, type);
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(type, "type");
            this.userId = userId;
            this.type = type;
        }

        /* compiled from: PushNotificationModel.kt */
        /* renamed from: com.smedialink.model.wallet.notification.PushNotificationModel$Donation$In */
        /* loaded from: classes3.dex */
        public static final class C1488In extends CryptoTransfer {
            private final String amount;
            private final String cryptoCode;
            private final String fromWalletAddress;
            private final String toWalletAddress;
            private final String type;
            private final String userId;

            public static /* synthetic */ C1488In copy$default(C1488In c1488In, String str, String str2, String str3, String str4, String str5, String str6, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = c1488In.mo1163getUserId();
                }
                if ((i & 2) != 0) {
                    str2 = c1488In.mo1162getType();
                }
                String str7 = str2;
                if ((i & 4) != 0) {
                    str3 = c1488In.cryptoCode;
                }
                String str8 = str3;
                if ((i & 8) != 0) {
                    str4 = c1488In.fromWalletAddress;
                }
                String str9 = str4;
                if ((i & 16) != 0) {
                    str5 = c1488In.toWalletAddress;
                }
                String str10 = str5;
                if ((i & 32) != 0) {
                    str6 = c1488In.amount;
                }
                return c1488In.copy(str, str7, str8, str9, str10, str6);
            }

            public final String component1() {
                return mo1163getUserId();
            }

            public final String component2() {
                return mo1162getType();
            }

            public final String component3() {
                return this.cryptoCode;
            }

            public final String component4() {
                return this.fromWalletAddress;
            }

            public final String component5() {
                return this.toWalletAddress;
            }

            public final String component6() {
                return this.amount;
            }

            public final C1488In copy(String userId, String type, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new C1488In(userId, type, cryptoCode, fromWalletAddress, toWalletAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof C1488In) {
                    C1488In c1488In = (C1488In) obj;
                    return Intrinsics.areEqual(mo1163getUserId(), c1488In.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), c1488In.mo1162getType()) && Intrinsics.areEqual(this.cryptoCode, c1488In.cryptoCode) && Intrinsics.areEqual(this.fromWalletAddress, c1488In.fromWalletAddress) && Intrinsics.areEqual(this.toWalletAddress, c1488In.toWalletAddress) && Intrinsics.areEqual(this.amount, c1488In.amount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.fromWalletAddress.hashCode()) * 31) + this.toWalletAddress.hashCode()) * 31) + this.amount.hashCode();
            }

            public String toString() {
                return "In(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", cryptoCode=" + this.cryptoCode + ", fromWalletAddress=" + this.fromWalletAddress + ", toWalletAddress=" + this.toWalletAddress + ", amount=" + this.amount + ')';
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getUserId */
            public String mo1163getUserId() {
                return this.userId;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getType */
            public String mo1162getType() {
                return this.type;
            }

            public final String getCryptoCode() {
                return this.cryptoCode;
            }

            public final String getFromWalletAddress() {
                return this.fromWalletAddress;
            }

            public final String getToWalletAddress() {
                return this.toWalletAddress;
            }

            public final String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1488In(String userId, String type, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                super(userId, type);
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.userId = userId;
                this.type = type;
                this.cryptoCode = cryptoCode;
                this.fromWalletAddress = fromWalletAddress;
                this.toWalletAddress = toWalletAddress;
                this.amount = amount;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel
            public String getMessage() {
                int i = C3286R.string.push_notification_wallet_crypto_transfer_in_description;
                BigDecimal bigDecimal = new BigDecimal(this.amount);
                TokenInfo.Companion companion = TokenInfo.Companion;
                return getString(i, BalanceFormatter.formatBalance(bigDecimal, companion.map(this.cryptoCode).getDecimals()), getString(companion.map(this.cryptoCode).getShortName(), new Object[0]), this.fromWalletAddress);
            }
        }

        /* compiled from: PushNotificationModel.kt */
        /* loaded from: classes3.dex */
        public static final class Out extends CryptoTransfer {
            private final String amount;
            private final String cryptoCode;
            private final String fromWalletAddress;
            private final String status;
            private final String toWalletAddress;
            private final String type;
            private final String userId;

            /* compiled from: PushNotificationModel.kt */
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[Status.values().length];
                    try {
                        iArr[Status.OK.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[Status.ERROR.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public static /* synthetic */ Out copy$default(Out out, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = out.mo1163getUserId();
                }
                if ((i & 2) != 0) {
                    str2 = out.mo1162getType();
                }
                String str8 = str2;
                if ((i & 4) != 0) {
                    str3 = out.status;
                }
                String str9 = str3;
                if ((i & 8) != 0) {
                    str4 = out.cryptoCode;
                }
                String str10 = str4;
                if ((i & 16) != 0) {
                    str5 = out.fromWalletAddress;
                }
                String str11 = str5;
                if ((i & 32) != 0) {
                    str6 = out.toWalletAddress;
                }
                String str12 = str6;
                if ((i & 64) != 0) {
                    str7 = out.amount;
                }
                return out.copy(str, str8, str9, str10, str11, str12, str7);
            }

            public final String component1() {
                return mo1163getUserId();
            }

            public final String component2() {
                return mo1162getType();
            }

            public final String component3() {
                return this.status;
            }

            public final String component4() {
                return this.cryptoCode;
            }

            public final String component5() {
                return this.fromWalletAddress;
            }

            public final String component6() {
                return this.toWalletAddress;
            }

            public final String component7() {
                return this.amount;
            }

            public final Out copy(String userId, String type, String status, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new Out(userId, type, status, cryptoCode, fromWalletAddress, toWalletAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Out) {
                    Out out = (Out) obj;
                    return Intrinsics.areEqual(mo1163getUserId(), out.mo1163getUserId()) && Intrinsics.areEqual(mo1162getType(), out.mo1162getType()) && Intrinsics.areEqual(this.status, out.status) && Intrinsics.areEqual(this.cryptoCode, out.cryptoCode) && Intrinsics.areEqual(this.fromWalletAddress, out.fromWalletAddress) && Intrinsics.areEqual(this.toWalletAddress, out.toWalletAddress) && Intrinsics.areEqual(this.amount, out.amount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((mo1163getUserId().hashCode() * 31) + mo1162getType().hashCode()) * 31) + this.status.hashCode()) * 31) + this.cryptoCode.hashCode()) * 31) + this.fromWalletAddress.hashCode()) * 31) + this.toWalletAddress.hashCode()) * 31) + this.amount.hashCode();
            }

            public String toString() {
                return "Out(userId=" + mo1163getUserId() + ", type=" + mo1162getType() + ", status=" + this.status + ", cryptoCode=" + this.cryptoCode + ", fromWalletAddress=" + this.fromWalletAddress + ", toWalletAddress=" + this.toWalletAddress + ", amount=" + this.amount + ')';
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getUserId */
            public String mo1163getUserId() {
                return this.userId;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel.CryptoTransfer, com.smedialink.model.wallet.notification.PushNotificationModel
            /* renamed from: getType */
            public String mo1162getType() {
                return this.type;
            }

            public final String getStatus() {
                return this.status;
            }

            public final String getCryptoCode() {
                return this.cryptoCode;
            }

            public final String getFromWalletAddress() {
                return this.fromWalletAddress;
            }

            public final String getToWalletAddress() {
                return this.toWalletAddress;
            }

            public final String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Out(String userId, String type, String status, String cryptoCode, String fromWalletAddress, String toWalletAddress, String amount) {
                super(userId, type);
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(cryptoCode, "cryptoCode");
                Intrinsics.checkNotNullParameter(fromWalletAddress, "fromWalletAddress");
                Intrinsics.checkNotNullParameter(toWalletAddress, "toWalletAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.userId = userId;
                this.type = type;
                this.status = status;
                this.cryptoCode = cryptoCode;
                this.fromWalletAddress = fromWalletAddress;
                this.toWalletAddress = toWalletAddress;
                this.amount = amount;
            }

            @Override // com.smedialink.model.wallet.notification.PushNotificationModel
            public String getMessage() {
                int i = WhenMappings.$EnumSwitchMapping$0[Status.Companion.map(this.status).ordinal()];
                if (i == 1) {
                    int i2 = C3286R.string.push_notification_wallet_crypto_transfer_out_success_description;
                    BigDecimal bigDecimal = new BigDecimal(this.amount);
                    TokenInfo.Companion companion = TokenInfo.Companion;
                    return getString(i2, BalanceFormatter.formatBalance(bigDecimal, companion.map(this.cryptoCode).getDecimals()), getString(companion.map(this.cryptoCode).getShortName(), new Object[0]), this.toWalletAddress);
                } else if (i != 2) {
                    return "";
                } else {
                    int i3 = C3286R.string.push_notification_wallet_crypto_transfer_out_failed_description;
                    BigDecimal bigDecimal2 = new BigDecimal(this.amount);
                    TokenInfo.Companion companion2 = TokenInfo.Companion;
                    return getString(i3, BalanceFormatter.formatBalance(bigDecimal2, companion2.map(this.cryptoCode).getDecimals()), getString(companion2.map(this.cryptoCode).getShortName(), new Object[0]), this.toWalletAddress);
                }
            }
        }
    }

    public final String getString(int i, Object... formatArgs) {
        Intrinsics.checkNotNullParameter(formatArgs, "formatArgs");
        String string = ApplicationLoader.applicationContext.getString(i, Arrays.copyOf(formatArgs, formatArgs.length));
        Intrinsics.checkNotNullExpressionValue(string, "applicationContext.getString(id, *formatArgs)");
        return string;
    }

    /* compiled from: PushNotificationModel.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
