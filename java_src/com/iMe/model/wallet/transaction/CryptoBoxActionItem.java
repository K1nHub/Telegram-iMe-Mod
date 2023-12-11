package com.iMe.model.wallet.transaction;

import com.iMe.model.common.NoChildNode;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionStatus;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxActionType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import java.math.BigDecimal;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxActionItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxActionItem extends NoChildNode {
    private final BigDecimal amount;
    private final String createdAt;
    private final BigDecimal feeAmount;
    private final TokenItem feeToken;

    /* renamed from: id */
    private final String f306id;
    private final CryptoBoxActionStatus status;
    private final TokenItem token;
    private final String txHash;
    private final String txUrl;
    private final CryptoBoxActionType type;

    /* compiled from: CryptoBoxActionItem.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[CryptoBoxActionType.values().length];
            try {
                iArr[CryptoBoxActionType.CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CryptoBoxActionType.STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CryptoBoxActionStatus.values().length];
            try {
                iArr2[CryptoBoxActionStatus.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[CryptoBoxActionStatus.CONFIRMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[CryptoBoxActionStatus.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final String component1() {
        return this.f306id;
    }

    public final TokenItem component10() {
        return this.token;
    }

    public final BigDecimal component2() {
        return this.amount;
    }

    public final CryptoBoxActionType component3() {
        return this.type;
    }

    public final CryptoBoxActionStatus component4() {
        return this.status;
    }

    public final String component5() {
        return this.createdAt;
    }

    public final String component6() {
        return this.txHash;
    }

    public final String component7() {
        return this.txUrl;
    }

    public final TokenItem component8() {
        return this.feeToken;
    }

    public final BigDecimal component9() {
        return this.feeAmount;
    }

    public final CryptoBoxActionItem copy(String id, BigDecimal amount, CryptoBoxActionType type, CryptoBoxActionStatus status, String createdAt, String txHash, String txUrl, TokenItem feeToken, BigDecimal feeAmount, TokenItem token) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(txUrl, "txUrl");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
        Intrinsics.checkNotNullParameter(token, "token");
        return new CryptoBoxActionItem(id, amount, type, status, createdAt, txHash, txUrl, feeToken, feeAmount, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxActionItem) {
            CryptoBoxActionItem cryptoBoxActionItem = (CryptoBoxActionItem) obj;
            return Intrinsics.areEqual(this.f306id, cryptoBoxActionItem.f306id) && Intrinsics.areEqual(this.amount, cryptoBoxActionItem.amount) && this.type == cryptoBoxActionItem.type && this.status == cryptoBoxActionItem.status && Intrinsics.areEqual(this.createdAt, cryptoBoxActionItem.createdAt) && Intrinsics.areEqual(this.txHash, cryptoBoxActionItem.txHash) && Intrinsics.areEqual(this.txUrl, cryptoBoxActionItem.txUrl) && Intrinsics.areEqual(this.feeToken, cryptoBoxActionItem.feeToken) && Intrinsics.areEqual(this.feeAmount, cryptoBoxActionItem.feeAmount) && Intrinsics.areEqual(this.token, cryptoBoxActionItem.token);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((this.f306id.hashCode() * 31) + this.amount.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + this.txHash.hashCode()) * 31) + this.txUrl.hashCode()) * 31) + this.feeToken.hashCode()) * 31) + this.feeAmount.hashCode()) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "CryptoBoxActionItem(id=" + this.f306id + ", amount=" + this.amount + ", type=" + this.type + ", status=" + this.status + ", createdAt=" + this.createdAt + ", txHash=" + this.txHash + ", txUrl=" + this.txUrl + ", feeToken=" + this.feeToken + ", feeAmount=" + this.feeAmount + ", token=" + this.token + ')';
    }

    public final String getId() {
        return this.f306id;
    }

    /* renamed from: getAmount  reason: collision with other method in class */
    public final BigDecimal m1539getAmount() {
        return this.amount;
    }

    public final CryptoBoxActionType getType() {
        return this.type;
    }

    public final CryptoBoxActionStatus getStatus() {
        return this.status;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getTxHash() {
        return this.txHash;
    }

    public final String getTxUrl() {
        return this.txUrl;
    }

    public final TokenItem getFeeToken() {
        return this.feeToken;
    }

    public final BigDecimal getFeeAmount() {
        return this.feeAmount;
    }

    public final TokenItem getToken() {
        return this.token;
    }

    public CryptoBoxActionItem(String id, BigDecimal amount, CryptoBoxActionType type, CryptoBoxActionStatus status, String createdAt, String txHash, String txUrl, TokenItem feeToken, BigDecimal feeAmount, TokenItem token) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(txUrl, "txUrl");
        Intrinsics.checkNotNullParameter(feeToken, "feeToken");
        Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
        Intrinsics.checkNotNullParameter(token, "token");
        this.f306id = id;
        this.amount = amount;
        this.type = type;
        this.status = status;
        this.createdAt = createdAt;
        this.txHash = txHash;
        this.txUrl = txUrl;
        this.feeToken = feeToken;
        this.feeAmount = feeAmount;
        this.token = token;
    }

    public final String getTransactionTitle(ResourceManager resourceManager) {
        int i;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i2 == 1) {
            i = C3632R.string.cryptobox_action_type_create;
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3632R.string.cryptobox_action_type_stop;
        }
        return resourceManager.getString(i);
    }

    public final String getStatusText(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(this.status.getTitleResId());
    }

    public final int getStatusColor() {
        int i = WhenMappings.$EnumSwitchMapping$1[this.status.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return Theme.key_statisticChartLine_red;
                }
                throw new NoWhenBranchMatchedException();
            }
            return Theme.key_statisticChartLine_green;
        }
        return Theme.key_windowBackgroundWhiteGrayText2;
    }

    public final int getIcon() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return C3632R.C3634drawable.fork_ic_transaction_staking_withdraw;
            }
            throw new NoWhenBranchMatchedException();
        }
        return C3632R.C3634drawable.fork_ic_transaction_sent;
    }

    public final String getTransactionTimeText() {
        return StringExtKt.formatISODate(this.createdAt, DateFormatter.DateType.ONLY_TIME);
    }

    public final String getAmount() {
        return getSymbol() + BalanceFormatter.format(this.amount, Integer.valueOf(this.token.getDecimals())) + ' ' + this.token.getTicker();
    }

    private final String getSymbol() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return "+";
            }
            throw new NoWhenBranchMatchedException();
        }
        return "-";
    }
}
