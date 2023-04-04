package com.iMe.storage.domain.model.notification;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.binancepay.BinanceTransactionStatus;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import java.math.BigDecimal;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Notification.kt */
/* loaded from: classes3.dex */
public abstract class Notification {
    private final String date;

    /* renamed from: id */
    private final String f334id;
    private boolean isRead;
    private final NetworkType networkType;
    private final NotificationType type;
    private final String userId;

    public /* synthetic */ Notification(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, notificationType, str2, str3, networkType);
    }

    private Notification(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType) {
        this.f334id = str;
        this.isRead = z;
        this.type = notificationType;
        this.date = str2;
        this.userId = str3;
        this.networkType = networkType;
    }

    public String getId() {
        return this.f334id;
    }

    public boolean isRead() {
        return this.isRead;
    }

    public void setRead(boolean z) {
        this.isRead = z;
    }

    public NotificationType getType() {
        return this.type;
    }

    public String getDate() {
        return this.date;
    }

    public String getUserId() {
        return this.userId;
    }

    public NetworkType getNetworkType() {
        return this.networkType;
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class Simplex extends Notification {
        private final String amount;
        private final String date;

        /* renamed from: id */
        private final String f345id;
        private boolean isRead;
        private final NetworkType networkType;
        private final BigDecimal spentAmount;
        private final FiatCode spentFiatCode;
        private final Status status;
        private final String toAddress;
        private final TokenCode tokenCode;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final Status component10() {
            return this.status;
        }

        public final BigDecimal component11() {
            return this.spentAmount;
        }

        public final FiatCode component12() {
            return this.spentFiatCode;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final TokenCode component7() {
            return this.tokenCode;
        }

        public final String component8() {
            return this.toAddress;
        }

        public final String component9() {
            return this.amount;
        }

        public final Simplex copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String toAddress, String amount, Status status, BigDecimal spentAmount, FiatCode spentFiatCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(toAddress, "toAddress");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
            Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
            return new Simplex(id, z, type, date, userId, networkType, tokenCode, toAddress, amount, status, spentAmount, spentFiatCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Simplex) {
                Simplex simplex = (Simplex) obj;
                return Intrinsics.areEqual(getId(), simplex.getId()) && isRead() == simplex.isRead() && getType() == simplex.getType() && Intrinsics.areEqual(getDate(), simplex.getDate()) && Intrinsics.areEqual(getUserId(), simplex.getUserId()) && getNetworkType() == simplex.getNetworkType() && this.tokenCode == simplex.tokenCode && Intrinsics.areEqual(this.toAddress, simplex.toAddress) && Intrinsics.areEqual(this.amount, simplex.amount) && this.status == simplex.status && Intrinsics.areEqual(this.spentAmount, simplex.spentAmount) && Intrinsics.areEqual(this.spentFiatCode, simplex.spentFiatCode);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.tokenCode.hashCode()) * 31) + this.toAddress.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.status.hashCode()) * 31) + this.spentAmount.hashCode()) * 31) + this.spentFiatCode.hashCode();
        }

        public String toString() {
            return "Simplex(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + this.tokenCode + ", toAddress=" + this.toAddress + ", amount=" + this.amount + ", status=" + this.status + ", spentAmount=" + this.spentAmount + ", spentFiatCode=" + this.spentFiatCode + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f345id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        public final TokenCode getTokenCode() {
            return this.tokenCode;
        }

        public final String getToAddress() {
            return this.toAddress;
        }

        public final String getAmount() {
            return this.amount;
        }

        public final Status getStatus() {
            return this.status;
        }

        public final BigDecimal getSpentAmount() {
            return this.spentAmount;
        }

        public final FiatCode getSpentFiatCode() {
            return this.spentFiatCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Simplex(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String toAddress, String amount, Status status, BigDecimal spentAmount, FiatCode spentFiatCode) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(toAddress, "toAddress");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
            Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
            this.f345id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.tokenCode = tokenCode;
            this.toAddress = toAddress;
            this.amount = amount;
            this.status = status;
            this.spentAmount = spentAmount;
            this.spentFiatCode = spentFiatCode;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class Cancel extends Notification {
        private final String date;

        /* renamed from: id */
        private final String f338id;
        private boolean isRead;
        private final NetworkType networkType;
        private final Status status;
        private final String txHash;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.txHash;
        }

        public final Status component8() {
            return this.status;
        }

        public final Cancel copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String txHash, Status status) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            Intrinsics.checkNotNullParameter(status, "status");
            return new Cancel(id, z, type, date, userId, networkType, txHash, status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Cancel) {
                Cancel cancel = (Cancel) obj;
                return Intrinsics.areEqual(getId(), cancel.getId()) && isRead() == cancel.isRead() && getType() == cancel.getType() && Intrinsics.areEqual(getDate(), cancel.getDate()) && Intrinsics.areEqual(getUserId(), cancel.getUserId()) && getNetworkType() == cancel.getNetworkType() && Intrinsics.areEqual(this.txHash, cancel.txHash) && this.status == cancel.status;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.txHash.hashCode()) * 31) + this.status.hashCode();
        }

        public String toString() {
            return "Cancel(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", txHash=" + this.txHash + ", status=" + this.status + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f338id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        public final String getTxHash() {
            return this.txHash;
        }

        public final Status getStatus() {
            return this.status;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cancel(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String txHash, Status status) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            Intrinsics.checkNotNullParameter(status, "status");
            this.f338id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.txHash = txHash;
            this.status = status;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class Approve extends Notification {
        private final String date;

        /* renamed from: id */
        private final String f335id;
        private boolean isRead;
        private final NetworkType networkType;
        private final Status status;
        private final TokenCode tokenCode;
        private final String txHash;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final TokenCode component7() {
            return this.tokenCode;
        }

        public final String component8() {
            return this.txHash;
        }

        public final Status component9() {
            return this.status;
        }

        public final Approve copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String txHash, Status status) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            Intrinsics.checkNotNullParameter(status, "status");
            return new Approve(id, z, type, date, userId, networkType, tokenCode, txHash, status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Approve) {
                Approve approve = (Approve) obj;
                return Intrinsics.areEqual(getId(), approve.getId()) && isRead() == approve.isRead() && getType() == approve.getType() && Intrinsics.areEqual(getDate(), approve.getDate()) && Intrinsics.areEqual(getUserId(), approve.getUserId()) && getNetworkType() == approve.getNetworkType() && this.tokenCode == approve.tokenCode && Intrinsics.areEqual(this.txHash, approve.txHash) && this.status == approve.status;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.tokenCode.hashCode()) * 31) + this.txHash.hashCode()) * 31) + this.status.hashCode();
        }

        public String toString() {
            return "Approve(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + this.tokenCode + ", txHash=" + this.txHash + ", status=" + this.status + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f335id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        public final TokenCode getTokenCode() {
            return this.tokenCode;
        }

        public final String getTxHash() {
            return this.txHash;
        }

        public final Status getStatus() {
            return this.status;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Approve(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String txHash, Status status) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            Intrinsics.checkNotNullParameter(status, "status");
            this.f335id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.tokenCode = tokenCode;
            this.txHash = txHash;
            this.status = status;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class BinancePayRequestCreated extends Notification {
        private final String amount;
        private final String assetCode;
        private final String assetName;
        private final String date;

        /* renamed from: id */
        private final String f336id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String payerUserId;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.payerUserId;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.amount;
        }

        public final String component8() {
            return this.assetCode;
        }

        public final String component9() {
            return this.assetName;
        }

        public final BinancePayRequestCreated copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String amount, String assetCode, String assetName, String payerUserId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            return new BinancePayRequestCreated(id, z, type, date, userId, networkType, amount, assetCode, assetName, payerUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BinancePayRequestCreated) {
                BinancePayRequestCreated binancePayRequestCreated = (BinancePayRequestCreated) obj;
                return Intrinsics.areEqual(getId(), binancePayRequestCreated.getId()) && isRead() == binancePayRequestCreated.isRead() && getType() == binancePayRequestCreated.getType() && Intrinsics.areEqual(getDate(), binancePayRequestCreated.getDate()) && Intrinsics.areEqual(getUserId(), binancePayRequestCreated.getUserId()) && getNetworkType() == binancePayRequestCreated.getNetworkType() && Intrinsics.areEqual(this.amount, binancePayRequestCreated.amount) && Intrinsics.areEqual(this.assetCode, binancePayRequestCreated.assetCode) && Intrinsics.areEqual(this.assetName, binancePayRequestCreated.assetName) && Intrinsics.areEqual(this.payerUserId, binancePayRequestCreated.payerUserId);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.amount.hashCode()) * 31) + this.assetCode.hashCode()) * 31) + this.assetName.hashCode()) * 31) + this.payerUserId.hashCode();
        }

        public String toString() {
            return "BinancePayRequestCreated(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", amount=" + this.amount + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", payerUserId=" + this.payerUserId + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f336id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
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
        public BinancePayRequestCreated(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String amount, String assetCode, String assetName, String payerUserId) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            this.f336id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.amount = amount;
            this.assetCode = assetCode;
            this.assetName = assetName;
            this.payerUserId = payerUserId;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class BinancePayRequestStatusUpdated extends Notification {
        private final String amount;
        private final String assetCode;
        private final String assetName;
        private final String date;

        /* renamed from: id */
        private final String f337id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String payerUserId;
        private final BinanceTransactionStatus status;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.payerUserId;
        }

        public final BinanceTransactionStatus component11() {
            return this.status;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.amount;
        }

        public final String component8() {
            return this.assetCode;
        }

        public final String component9() {
            return this.assetName;
        }

        public final BinancePayRequestStatusUpdated copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String amount, String assetCode, String assetName, String payerUserId, BinanceTransactionStatus status) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(status, "status");
            return new BinancePayRequestStatusUpdated(id, z, type, date, userId, networkType, amount, assetCode, assetName, payerUserId, status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BinancePayRequestStatusUpdated) {
                BinancePayRequestStatusUpdated binancePayRequestStatusUpdated = (BinancePayRequestStatusUpdated) obj;
                return Intrinsics.areEqual(getId(), binancePayRequestStatusUpdated.getId()) && isRead() == binancePayRequestStatusUpdated.isRead() && getType() == binancePayRequestStatusUpdated.getType() && Intrinsics.areEqual(getDate(), binancePayRequestStatusUpdated.getDate()) && Intrinsics.areEqual(getUserId(), binancePayRequestStatusUpdated.getUserId()) && getNetworkType() == binancePayRequestStatusUpdated.getNetworkType() && Intrinsics.areEqual(this.amount, binancePayRequestStatusUpdated.amount) && Intrinsics.areEqual(this.assetCode, binancePayRequestStatusUpdated.assetCode) && Intrinsics.areEqual(this.assetName, binancePayRequestStatusUpdated.assetName) && Intrinsics.areEqual(this.payerUserId, binancePayRequestStatusUpdated.payerUserId) && this.status == binancePayRequestStatusUpdated.status;
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.amount.hashCode()) * 31) + this.assetCode.hashCode()) * 31) + this.assetName.hashCode()) * 31) + this.payerUserId.hashCode()) * 31) + this.status.hashCode();
        }

        public String toString() {
            return "BinancePayRequestStatusUpdated(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", amount=" + this.amount + ", assetCode=" + this.assetCode + ", assetName=" + this.assetName + ", payerUserId=" + this.payerUserId + ", status=" + this.status + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f337id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
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

        public final BinanceTransactionStatus getStatus() {
            return this.status;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BinancePayRequestStatusUpdated(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String amount, String assetCode, String assetName, String payerUserId, BinanceTransactionStatus status) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(assetCode, "assetCode");
            Intrinsics.checkNotNullParameter(assetName, "assetName");
            Intrinsics.checkNotNullParameter(payerUserId, "payerUserId");
            Intrinsics.checkNotNullParameter(status, "status");
            this.f337id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.amount = amount;
            this.assetCode = assetCode;
            this.assetName = assetName;
            this.payerUserId = payerUserId;
            this.status = status;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class StakingSafeWithdrawalStarted extends Notification {
        private final String amount;
        private final String date;

        /* renamed from: id */
        private final String f348id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String shouldFinishAt;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.amount;
        }

        public final String component11() {
            return this.shouldFinishAt;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.stakingId;
        }

        public final String component8() {
            return this.stakingName;
        }

        public final String component9() {
            return this.stakingToken;
        }

        public final StakingSafeWithdrawalStarted copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String amount, String shouldFinishAt) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(shouldFinishAt, "shouldFinishAt");
            return new StakingSafeWithdrawalStarted(id, z, type, date, userId, networkType, stakingId, stakingName, stakingToken, amount, shouldFinishAt);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingSafeWithdrawalStarted) {
                StakingSafeWithdrawalStarted stakingSafeWithdrawalStarted = (StakingSafeWithdrawalStarted) obj;
                return Intrinsics.areEqual(getId(), stakingSafeWithdrawalStarted.getId()) && isRead() == stakingSafeWithdrawalStarted.isRead() && getType() == stakingSafeWithdrawalStarted.getType() && Intrinsics.areEqual(getDate(), stakingSafeWithdrawalStarted.getDate()) && Intrinsics.areEqual(getUserId(), stakingSafeWithdrawalStarted.getUserId()) && getNetworkType() == stakingSafeWithdrawalStarted.getNetworkType() && Intrinsics.areEqual(this.stakingId, stakingSafeWithdrawalStarted.stakingId) && Intrinsics.areEqual(this.stakingName, stakingSafeWithdrawalStarted.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingSafeWithdrawalStarted.stakingToken) && Intrinsics.areEqual(this.amount, stakingSafeWithdrawalStarted.amount) && Intrinsics.areEqual(this.shouldFinishAt, stakingSafeWithdrawalStarted.shouldFinishAt);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.shouldFinishAt.hashCode();
        }

        public String toString() {
            return "StakingSafeWithdrawalStarted(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", amount=" + this.amount + ", shouldFinishAt=" + this.shouldFinishAt + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f348id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
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
        public StakingSafeWithdrawalStarted(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String amount, String shouldFinishAt) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(shouldFinishAt, "shouldFinishAt");
            this.f348id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingToken = stakingToken;
            this.amount = amount;
            this.shouldFinishAt = shouldFinishAt;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class StakingSafeWithdrawalFinished extends Notification {
        private final String amount;
        private final String date;

        /* renamed from: id */
        private final String f347id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.amount;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.stakingId;
        }

        public final String component8() {
            return this.stakingName;
        }

        public final String component9() {
            return this.stakingToken;
        }

        public final StakingSafeWithdrawalFinished copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String amount) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            return new StakingSafeWithdrawalFinished(id, z, type, date, userId, networkType, stakingId, stakingName, stakingToken, amount);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingSafeWithdrawalFinished) {
                StakingSafeWithdrawalFinished stakingSafeWithdrawalFinished = (StakingSafeWithdrawalFinished) obj;
                return Intrinsics.areEqual(getId(), stakingSafeWithdrawalFinished.getId()) && isRead() == stakingSafeWithdrawalFinished.isRead() && getType() == stakingSafeWithdrawalFinished.getType() && Intrinsics.areEqual(getDate(), stakingSafeWithdrawalFinished.getDate()) && Intrinsics.areEqual(getUserId(), stakingSafeWithdrawalFinished.getUserId()) && getNetworkType() == stakingSafeWithdrawalFinished.getNetworkType() && Intrinsics.areEqual(this.stakingId, stakingSafeWithdrawalFinished.stakingId) && Intrinsics.areEqual(this.stakingName, stakingSafeWithdrawalFinished.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingSafeWithdrawalFinished.stakingToken) && Intrinsics.areEqual(this.amount, stakingSafeWithdrawalFinished.amount);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.amount.hashCode();
        }

        public String toString() {
            return "StakingSafeWithdrawalFinished(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", amount=" + this.amount + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f347id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
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
        public StakingSafeWithdrawalFinished(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String amount) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(amount, "amount");
            this.f347id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
            this.stakingId = stakingId;
            this.stakingName = stakingName;
            this.stakingToken = stakingToken;
            this.amount = amount;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class StakingStarted extends Notification {
        private final String date;

        /* renamed from: id */
        private final String f349id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String stakingAPR;
        private final String stakingAPY;
        private final String stakingAuthor;
        private final String stakingEndsAt;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final String stakingWebsite;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.stakingWebsite;
        }

        public final String component11() {
            return this.stakingAPY;
        }

        public final String component12() {
            return this.stakingAPR;
        }

        public final String component13() {
            return this.stakingEndsAt;
        }

        public final String component14() {
            return this.stakingToken;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.stakingId;
        }

        public final String component8() {
            return this.stakingName;
        }

        public final String component9() {
            return this.stakingAuthor;
        }

        public final StakingStarted copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
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
            return new StakingStarted(id, z, type, date, userId, networkType, stakingId, stakingName, stakingAuthor, stakingWebsite, stakingAPY, stakingAPR, stakingEndsAt, stakingToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingStarted) {
                StakingStarted stakingStarted = (StakingStarted) obj;
                return Intrinsics.areEqual(getId(), stakingStarted.getId()) && isRead() == stakingStarted.isRead() && getType() == stakingStarted.getType() && Intrinsics.areEqual(getDate(), stakingStarted.getDate()) && Intrinsics.areEqual(getUserId(), stakingStarted.getUserId()) && getNetworkType() == stakingStarted.getNetworkType() && Intrinsics.areEqual(this.stakingId, stakingStarted.stakingId) && Intrinsics.areEqual(this.stakingName, stakingStarted.stakingName) && Intrinsics.areEqual(this.stakingAuthor, stakingStarted.stakingAuthor) && Intrinsics.areEqual(this.stakingWebsite, stakingStarted.stakingWebsite) && Intrinsics.areEqual(this.stakingAPY, stakingStarted.stakingAPY) && Intrinsics.areEqual(this.stakingAPR, stakingStarted.stakingAPR) && Intrinsics.areEqual(this.stakingEndsAt, stakingStarted.stakingEndsAt) && Intrinsics.areEqual(this.stakingToken, stakingStarted.stakingToken);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingAuthor.hashCode()) * 31) + this.stakingWebsite.hashCode()) * 31) + this.stakingAPY.hashCode()) * 31) + this.stakingAPR.hashCode()) * 31) + this.stakingEndsAt.hashCode()) * 31) + this.stakingToken.hashCode();
        }

        public String toString() {
            return "StakingStarted(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingAuthor=" + this.stakingAuthor + ", stakingWebsite=" + this.stakingWebsite + ", stakingAPY=" + this.stakingAPY + ", stakingAPR=" + this.stakingAPR + ", stakingEndsAt=" + this.stakingEndsAt + ", stakingToken=" + this.stakingToken + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f349id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
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
        public StakingStarted(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingAuthor, String stakingWebsite, String stakingAPY, String stakingAPR, String stakingEndsAt, String stakingToken) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
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
            this.f349id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
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
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class StakingFinished extends Notification {
        private final String date;
        private final String debtAsToken;
        private final String debtAsUsd;

        /* renamed from: id */
        private final String f346id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String profitAsToken;
        private final String profitAsUsd;
        private final String stakingId;
        private final String stakingName;
        private final String stakingToken;
        private final NotificationType type;
        private final String userId;

        public final String component1() {
            return getId();
        }

        public final String component10() {
            return this.debtAsToken;
        }

        public final String component11() {
            return this.debtAsUsd;
        }

        public final String component12() {
            return this.profitAsToken;
        }

        public final String component13() {
            return this.profitAsUsd;
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final String component7() {
            return this.stakingId;
        }

        public final String component8() {
            return this.stakingName;
        }

        public final String component9() {
            return this.stakingToken;
        }

        public final StakingFinished copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
            Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
            Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
            Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
            return new StakingFinished(id, z, type, date, userId, networkType, stakingId, stakingName, stakingToken, debtAsToken, debtAsUsd, profitAsToken, profitAsUsd);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StakingFinished) {
                StakingFinished stakingFinished = (StakingFinished) obj;
                return Intrinsics.areEqual(getId(), stakingFinished.getId()) && isRead() == stakingFinished.isRead() && getType() == stakingFinished.getType() && Intrinsics.areEqual(getDate(), stakingFinished.getDate()) && Intrinsics.areEqual(getUserId(), stakingFinished.getUserId()) && getNetworkType() == stakingFinished.getNetworkType() && Intrinsics.areEqual(this.stakingId, stakingFinished.stakingId) && Intrinsics.areEqual(this.stakingName, stakingFinished.stakingName) && Intrinsics.areEqual(this.stakingToken, stakingFinished.stakingToken) && Intrinsics.areEqual(this.debtAsToken, stakingFinished.debtAsToken) && Intrinsics.areEqual(this.debtAsUsd, stakingFinished.debtAsUsd) && Intrinsics.areEqual(this.profitAsToken, stakingFinished.profitAsToken) && Intrinsics.areEqual(this.profitAsUsd, stakingFinished.profitAsUsd);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.stakingId.hashCode()) * 31) + this.stakingName.hashCode()) * 31) + this.stakingToken.hashCode()) * 31) + this.debtAsToken.hashCode()) * 31) + this.debtAsUsd.hashCode()) * 31) + this.profitAsToken.hashCode()) * 31) + this.profitAsUsd.hashCode();
        }

        public String toString() {
            return "StakingFinished(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", stakingId=" + this.stakingId + ", stakingName=" + this.stakingName + ", stakingToken=" + this.stakingToken + ", debtAsToken=" + this.debtAsToken + ", debtAsUsd=" + this.debtAsUsd + ", profitAsToken=" + this.profitAsToken + ", profitAsUsd=" + this.profitAsUsd + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f346id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
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
        public StakingFinished(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, String stakingId, String stakingName, String stakingToken, String debtAsToken, String debtAsUsd, String profitAsToken, String profitAsUsd) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(stakingId, "stakingId");
            Intrinsics.checkNotNullParameter(stakingName, "stakingName");
            Intrinsics.checkNotNullParameter(stakingToken, "stakingToken");
            Intrinsics.checkNotNullParameter(debtAsToken, "debtAsToken");
            Intrinsics.checkNotNullParameter(debtAsUsd, "debtAsUsd");
            Intrinsics.checkNotNullParameter(profitAsToken, "profitAsToken");
            Intrinsics.checkNotNullParameter(profitAsUsd, "profitAsUsd");
            this.f346id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
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
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static final class Unsupported extends Notification {
        private final String date;

        /* renamed from: id */
        private final String f350id;
        private boolean isRead;
        private final NetworkType networkType;
        private final NotificationType type;
        private final String userId;

        public static /* synthetic */ Unsupported copy$default(Unsupported unsupported, String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, int i, Object obj) {
            if ((i & 1) != 0) {
                str = unsupported.getId();
            }
            if ((i & 2) != 0) {
                z = unsupported.isRead();
            }
            boolean z2 = z;
            if ((i & 4) != 0) {
                notificationType = unsupported.getType();
            }
            NotificationType notificationType2 = notificationType;
            if ((i & 8) != 0) {
                str2 = unsupported.getDate();
            }
            String str4 = str2;
            if ((i & 16) != 0) {
                str3 = unsupported.getUserId();
            }
            String str5 = str3;
            if ((i & 32) != 0) {
                networkType = unsupported.getNetworkType();
            }
            return unsupported.copy(str, z2, notificationType2, str4, str5, networkType);
        }

        public final String component1() {
            return getId();
        }

        public final boolean component2() {
            return isRead();
        }

        public final NotificationType component3() {
            return getType();
        }

        public final String component4() {
            return getDate();
        }

        public final String component5() {
            return getUserId();
        }

        public final NetworkType component6() {
            return getNetworkType();
        }

        public final Unsupported copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            return new Unsupported(id, z, type, date, userId, networkType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Unsupported) {
                Unsupported unsupported = (Unsupported) obj;
                return Intrinsics.areEqual(getId(), unsupported.getId()) && isRead() == unsupported.isRead() && getType() == unsupported.getType() && Intrinsics.areEqual(getDate(), unsupported.getDate()) && Intrinsics.areEqual(getUserId(), unsupported.getUserId()) && getNetworkType() == unsupported.getNetworkType();
            }
            return false;
        }

        public int hashCode() {
            int hashCode = getId().hashCode() * 31;
            boolean isRead = isRead();
            int i = isRead;
            if (isRead) {
                i = 1;
            }
            return ((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode();
        }

        public String toString() {
            return "Unsupported(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ')';
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f350id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unsupported(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType) {
            super(id, z, type, date, userId, networkType, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(date, "date");
            Intrinsics.checkNotNullParameter(userId, "userId");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.f350id = id;
            this.isRead = z;
            this.type = type;
            this.date = date;
            this.userId = userId;
            this.networkType = networkType;
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static abstract class CryptoTransfer extends Notification {
        private final String amount;
        private final String date;
        private final String fromAddress;

        /* renamed from: id */
        private final String f339id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String toAddress;
        private final TokenCode tokenCode;
        private final NotificationType type;
        private final String userId;

        public /* synthetic */ CryptoTransfer(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, TokenCode tokenCode, String str4, String str5, String str6, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z, notificationType, str2, str3, networkType, tokenCode, str4, str5, str6);
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f339id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        public String getFromAddress() {
            return this.fromAddress;
        }

        public String getToAddress() {
            return this.toAddress;
        }

        public String getAmount() {
            return this.amount;
        }

        private CryptoTransfer(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, TokenCode tokenCode, String str4, String str5, String str6) {
            super(str, z, notificationType, str2, str3, networkType, null);
            this.f339id = str;
            this.isRead = z;
            this.type = notificationType;
            this.date = str2;
            this.userId = str3;
            this.networkType = networkType;
            this.tokenCode = tokenCode;
            this.fromAddress = str4;
            this.toAddress = str5;
            this.amount = str6;
        }

        /* compiled from: Notification.kt */
        /* renamed from: com.iMe.storage.domain.model.notification.Notification$CryptoTransfer$In */
        /* loaded from: classes3.dex */
        public static final class C1918In extends CryptoTransfer {
            private final String amount;
            private final String date;
            private final String fromAddress;

            /* renamed from: id */
            private final String f340id;
            private boolean isRead;
            private final NetworkType networkType;
            private final String toAddress;
            private final TokenCode tokenCode;
            private final NotificationType type;
            private final String userId;

            public final String component1() {
                return getId();
            }

            public final String component10() {
                return getAmount();
            }

            public final boolean component2() {
                return isRead();
            }

            public final NotificationType component3() {
                return getType();
            }

            public final String component4() {
                return getDate();
            }

            public final String component5() {
                return getUserId();
            }

            public final NetworkType component6() {
                return getNetworkType();
            }

            public final TokenCode component7() {
                return getTokenCode();
            }

            public final String component8() {
                return getFromAddress();
            }

            public final String component9() {
                return getToAddress();
            }

            public final C1918In copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new C1918In(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof C1918In) {
                    C1918In c1918In = (C1918In) obj;
                    return Intrinsics.areEqual(getId(), c1918In.getId()) && isRead() == c1918In.isRead() && getType() == c1918In.getType() && Intrinsics.areEqual(getDate(), c1918In.getDate()) && Intrinsics.areEqual(getUserId(), c1918In.getUserId()) && getNetworkType() == c1918In.getNetworkType() && getTokenCode() == c1918In.getTokenCode() && Intrinsics.areEqual(getFromAddress(), c1918In.getFromAddress()) && Intrinsics.areEqual(getToAddress(), c1918In.getToAddress()) && Intrinsics.areEqual(getAmount(), c1918In.getAmount());
                }
                return false;
            }

            public int hashCode() {
                int hashCode = getId().hashCode() * 31;
                boolean isRead = isRead();
                int i = isRead;
                if (isRead) {
                    i = 1;
                }
                return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getFromAddress().hashCode()) * 31) + getToAddress().hashCode()) * 31) + getAmount().hashCode();
            }

            public String toString() {
                return "In(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + getTokenCode() + ", fromAddress=" + getFromAddress() + ", toAddress=" + getToAddress() + ", amount=" + getAmount() + ')';
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getId() {
                return this.f340id;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public boolean isRead() {
                return this.isRead;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public void setRead(boolean z) {
                this.isRead = z;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NotificationType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getDate() {
                return this.date;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getUserId() {
                return this.userId;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getFromAddress() {
                return this.fromAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getToAddress() {
                return this.toAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1918In(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                super(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount, null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.f340id = id;
                this.isRead = z;
                this.type = type;
                this.date = date;
                this.userId = userId;
                this.networkType = networkType;
                this.tokenCode = tokenCode;
                this.fromAddress = fromAddress;
                this.toAddress = toAddress;
                this.amount = amount;
            }
        }

        /* compiled from: Notification.kt */
        /* loaded from: classes3.dex */
        public static final class Out extends CryptoTransfer {
            private final String amount;
            private final String date;
            private final String fromAddress;

            /* renamed from: id */
            private final String f341id;
            private boolean isRead;
            private final NetworkType networkType;
            private final Status status;
            private final String toAddress;
            private final TokenCode tokenCode;
            private final NotificationType type;
            private final String userId;

            public final Status component1() {
                return this.status;
            }

            public final String component10() {
                return getToAddress();
            }

            public final String component11() {
                return getAmount();
            }

            public final String component2() {
                return getId();
            }

            public final boolean component3() {
                return isRead();
            }

            public final NotificationType component4() {
                return getType();
            }

            public final String component5() {
                return getDate();
            }

            public final String component6() {
                return getUserId();
            }

            public final NetworkType component7() {
                return getNetworkType();
            }

            public final TokenCode component8() {
                return getTokenCode();
            }

            public final String component9() {
                return getFromAddress();
            }

            public final Out copy(Status status, String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new Out(status, id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Out) {
                    Out out = (Out) obj;
                    return this.status == out.status && Intrinsics.areEqual(getId(), out.getId()) && isRead() == out.isRead() && getType() == out.getType() && Intrinsics.areEqual(getDate(), out.getDate()) && Intrinsics.areEqual(getUserId(), out.getUserId()) && getNetworkType() == out.getNetworkType() && getTokenCode() == out.getTokenCode() && Intrinsics.areEqual(getFromAddress(), out.getFromAddress()) && Intrinsics.areEqual(getToAddress(), out.getToAddress()) && Intrinsics.areEqual(getAmount(), out.getAmount());
                }
                return false;
            }

            public int hashCode() {
                int hashCode = ((this.status.hashCode() * 31) + getId().hashCode()) * 31;
                boolean isRead = isRead();
                int i = isRead;
                if (isRead) {
                    i = 1;
                }
                return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getFromAddress().hashCode()) * 31) + getToAddress().hashCode()) * 31) + getAmount().hashCode();
            }

            public String toString() {
                return "Out(status=" + this.status + ", id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + getTokenCode() + ", fromAddress=" + getFromAddress() + ", toAddress=" + getToAddress() + ", amount=" + getAmount() + ')';
            }

            public final Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getId() {
                return this.f341id;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public boolean isRead() {
                return this.isRead;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public void setRead(boolean z) {
                this.isRead = z;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NotificationType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getDate() {
                return this.date;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getUserId() {
                return this.userId;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getFromAddress() {
                return this.fromAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getToAddress() {
                return this.toAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Out(Status status, String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                super(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount, null);
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.status = status;
                this.f341id = id;
                this.isRead = z;
                this.type = type;
                this.date = date;
                this.userId = userId;
                this.networkType = networkType;
                this.tokenCode = tokenCode;
                this.fromAddress = fromAddress;
                this.toAddress = toAddress;
                this.amount = amount;
            }
        }
    }

    /* compiled from: Notification.kt */
    /* loaded from: classes3.dex */
    public static abstract class Donation extends CryptoTransfer {
        private final String amount;
        private final String date;
        private final String fromAddress;

        /* renamed from: id */
        private final String f342id;
        private boolean isRead;
        private final NetworkType networkType;
        private final String toAddress;
        private final TokenCode tokenCode;
        private final NotificationType type;
        private final String userId;

        public /* synthetic */ Donation(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, TokenCode tokenCode, String str4, String str5, String str6, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, z, notificationType, str2, str3, networkType, tokenCode, str4, str5, str6);
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public String getId() {
            return this.f342id;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public boolean isRead() {
            return this.isRead;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public void setRead(boolean z) {
            this.isRead = z;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public NotificationType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public String getDate() {
            return this.date;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public String getUserId() {
            return this.userId;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
        public NetworkType getNetworkType() {
            return this.networkType;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
        public String getFromAddress() {
            return this.fromAddress;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
        public String getToAddress() {
            return this.toAddress;
        }

        @Override // com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
        public String getAmount() {
            return this.amount;
        }

        private Donation(String str, boolean z, NotificationType notificationType, String str2, String str3, NetworkType networkType, TokenCode tokenCode, String str4, String str5, String str6) {
            super(str, z, notificationType, str2, str3, networkType, tokenCode, str4, str5, str6, null);
            this.f342id = str;
            this.isRead = z;
            this.type = notificationType;
            this.date = str2;
            this.userId = str3;
            this.networkType = networkType;
            this.tokenCode = tokenCode;
            this.fromAddress = str4;
            this.toAddress = str5;
            this.amount = str6;
        }

        /* compiled from: Notification.kt */
        /* renamed from: com.iMe.storage.domain.model.notification.Notification$Donation$In */
        /* loaded from: classes3.dex */
        public static final class C1919In extends Donation {
            private final String amount;
            private final String date;
            private final String fromAddress;

            /* renamed from: id */
            private final String f343id;
            private boolean isRead;
            private final NetworkType networkType;
            private final String toAddress;
            private final TokenCode tokenCode;
            private final NotificationType type;
            private final String userId;

            public final String component1() {
                return getId();
            }

            public final String component10() {
                return getAmount();
            }

            public final boolean component2() {
                return isRead();
            }

            public final NotificationType component3() {
                return getType();
            }

            public final String component4() {
                return getDate();
            }

            public final String component5() {
                return getUserId();
            }

            public final NetworkType component6() {
                return getNetworkType();
            }

            public final TokenCode component7() {
                return getTokenCode();
            }

            public final String component8() {
                return getFromAddress();
            }

            public final String component9() {
                return getToAddress();
            }

            public final C1919In copy(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new C1919In(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof C1919In) {
                    C1919In c1919In = (C1919In) obj;
                    return Intrinsics.areEqual(getId(), c1919In.getId()) && isRead() == c1919In.isRead() && getType() == c1919In.getType() && Intrinsics.areEqual(getDate(), c1919In.getDate()) && Intrinsics.areEqual(getUserId(), c1919In.getUserId()) && getNetworkType() == c1919In.getNetworkType() && getTokenCode() == c1919In.getTokenCode() && Intrinsics.areEqual(getFromAddress(), c1919In.getFromAddress()) && Intrinsics.areEqual(getToAddress(), c1919In.getToAddress()) && Intrinsics.areEqual(getAmount(), c1919In.getAmount());
                }
                return false;
            }

            public int hashCode() {
                int hashCode = getId().hashCode() * 31;
                boolean isRead = isRead();
                int i = isRead;
                if (isRead) {
                    i = 1;
                }
                return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getFromAddress().hashCode()) * 31) + getToAddress().hashCode()) * 31) + getAmount().hashCode();
            }

            public String toString() {
                return "In(id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + getTokenCode() + ", fromAddress=" + getFromAddress() + ", toAddress=" + getToAddress() + ", amount=" + getAmount() + ')';
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getId() {
                return this.f343id;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public boolean isRead() {
                return this.isRead;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public void setRead(boolean z) {
                this.isRead = z;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NotificationType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getDate() {
                return this.date;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getUserId() {
                return this.userId;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getFromAddress() {
                return this.fromAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getToAddress() {
                return this.toAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1919In(String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                super(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount, null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.f343id = id;
                this.isRead = z;
                this.type = type;
                this.date = date;
                this.userId = userId;
                this.networkType = networkType;
                this.tokenCode = tokenCode;
                this.fromAddress = fromAddress;
                this.toAddress = toAddress;
                this.amount = amount;
            }
        }

        /* compiled from: Notification.kt */
        /* loaded from: classes3.dex */
        public static final class Out extends Donation {
            private final String amount;
            private final String date;
            private final String fromAddress;

            /* renamed from: id */
            private final String f344id;
            private boolean isRead;
            private final NetworkType networkType;
            private final Status status;
            private final String toAddress;
            private final TokenCode tokenCode;
            private final NotificationType type;
            private final String userId;

            public final Status component1() {
                return this.status;
            }

            public final String component10() {
                return getToAddress();
            }

            public final String component11() {
                return getAmount();
            }

            public final String component2() {
                return getId();
            }

            public final boolean component3() {
                return isRead();
            }

            public final NotificationType component4() {
                return getType();
            }

            public final String component5() {
                return getDate();
            }

            public final String component6() {
                return getUserId();
            }

            public final NetworkType component7() {
                return getNetworkType();
            }

            public final TokenCode component8() {
                return getTokenCode();
            }

            public final String component9() {
                return getFromAddress();
            }

            public final Out copy(Status status, String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                return new Out(status, id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Out) {
                    Out out = (Out) obj;
                    return this.status == out.status && Intrinsics.areEqual(getId(), out.getId()) && isRead() == out.isRead() && getType() == out.getType() && Intrinsics.areEqual(getDate(), out.getDate()) && Intrinsics.areEqual(getUserId(), out.getUserId()) && getNetworkType() == out.getNetworkType() && getTokenCode() == out.getTokenCode() && Intrinsics.areEqual(getFromAddress(), out.getFromAddress()) && Intrinsics.areEqual(getToAddress(), out.getToAddress()) && Intrinsics.areEqual(getAmount(), out.getAmount());
                }
                return false;
            }

            public int hashCode() {
                int hashCode = ((this.status.hashCode() * 31) + getId().hashCode()) * 31;
                boolean isRead = isRead();
                int i = isRead;
                if (isRead) {
                    i = 1;
                }
                return ((((((((((((((((hashCode + i) * 31) + getType().hashCode()) * 31) + getDate().hashCode()) * 31) + getUserId().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getFromAddress().hashCode()) * 31) + getToAddress().hashCode()) * 31) + getAmount().hashCode();
            }

            public String toString() {
                return "Out(status=" + this.status + ", id=" + getId() + ", isRead=" + isRead() + ", type=" + getType() + ", date=" + getDate() + ", userId=" + getUserId() + ", networkType=" + getNetworkType() + ", tokenCode=" + getTokenCode() + ", fromAddress=" + getFromAddress() + ", toAddress=" + getToAddress() + ", amount=" + getAmount() + ')';
            }

            public final Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getId() {
                return this.f344id;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public boolean isRead() {
                return this.isRead;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public void setRead(boolean z) {
                this.isRead = z;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NotificationType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getDate() {
                return this.date;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public String getUserId() {
                return this.userId;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer, com.iMe.storage.domain.model.notification.Notification
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getFromAddress() {
                return this.fromAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getToAddress() {
                return this.toAddress;
            }

            @Override // com.iMe.storage.domain.model.notification.Notification.Donation, com.iMe.storage.domain.model.notification.Notification.CryptoTransfer
            public String getAmount() {
                return this.amount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Out(Status status, String id, boolean z, NotificationType type, String date, String userId, NetworkType networkType, TokenCode tokenCode, String fromAddress, String toAddress, String amount) {
                super(id, z, type, date, userId, networkType, tokenCode, fromAddress, toAddress, amount, null);
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(date, "date");
                Intrinsics.checkNotNullParameter(userId, "userId");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(fromAddress, "fromAddress");
                Intrinsics.checkNotNullParameter(toAddress, "toAddress");
                Intrinsics.checkNotNullParameter(amount, "amount");
                this.status = status;
                this.f344id = id;
                this.isRead = z;
                this.type = type;
                this.date = date;
                this.userId = userId;
                this.networkType = networkType;
                this.tokenCode = tokenCode;
                this.fromAddress = fromAddress;
                this.toAddress = toAddress;
                this.amount = amount;
            }
        }
    }
}
