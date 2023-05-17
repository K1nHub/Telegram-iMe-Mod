package com.iMe.storage.domain.model.crypto.send;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.TronBlockHeader;
import com.iMe.storage.domain.utils.crypto.Convert;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferArgs.kt */
/* loaded from: classes3.dex */
public abstract class TransferArgs implements TransactionArgs {
    private final double amount;
    private final Convert.Unit weiConvertUnit;

    public /* synthetic */ TransferArgs(double d, Convert.Unit unit, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, unit);
    }

    private TransferArgs(double d, Convert.Unit unit) {
        this.amount = d;
        this.weiConvertUnit = unit;
    }

    public double getAmount() {
        return this.amount;
    }

    protected Convert.Unit getWeiConvertUnit() {
        return this.weiConvertUnit;
    }

    public final BigInteger getConvertedAmount() {
        return NumberExtKt.convertToWei(Double.valueOf(getAmount()), getWeiConvertUnit());
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends TransferArgs {
        private final double amount;
        private final long chainId;
        private final String contractAddress;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final BigInteger nonce;
        private final String recipientAddress;
        private final Convert.Unit weiConvertUnit;

        public final double component1() {
            return getAmount();
        }

        protected final Convert.Unit component2() {
            return getWeiConvertUnit();
        }

        public final String component3() {
            return this.recipientAddress;
        }

        public final long component4() {
            return this.chainId;
        }

        public final BigInteger component5() {
            return this.nonce;
        }

        public final BigInteger component6() {
            return this.gasPrice;
        }

        public final BigInteger component7() {
            return this.gasLimit;
        }

        public final String component8() {
            return this.contractAddress;
        }

        public final EVM copy(double d, Convert.Unit weiConvertUnit, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String str) {
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            return new EVM(d, weiConvertUnit, recipientAddress, j, nonce, gasPrice, gasLimit, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Double.compare(getAmount(), evm.getAmount()) == 0 && getWeiConvertUnit() == evm.getWeiConvertUnit() && Intrinsics.areEqual(this.recipientAddress, evm.recipientAddress) && this.chainId == evm.chainId && Intrinsics.areEqual(this.nonce, evm.nonce) && Intrinsics.areEqual(this.gasPrice, evm.gasPrice) && Intrinsics.areEqual(this.gasLimit, evm.gasLimit) && Intrinsics.areEqual(this.contractAddress, evm.contractAddress);
            }
            return false;
        }

        public int hashCode() {
            int doubleToLongBits = ((((((((((((Double.doubleToLongBits(getAmount()) * 31) + getWeiConvertUnit().hashCode()) * 31) + this.recipientAddress.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId)) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode()) * 31;
            String str = this.contractAddress;
            return doubleToLongBits + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "EVM(amount=" + getAmount() + ", weiConvertUnit=" + getWeiConvertUnit() + ", recipientAddress=" + this.recipientAddress + ", chainId=" + this.chainId + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ", contractAddress=" + this.contractAddress + ')';
        }

        public /* synthetic */ EVM(double d, Convert.Unit unit, String str, long j, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(d, unit, str, j, bigInteger, bigInteger2, bigInteger3, (i & 128) != 0 ? null : str2);
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected Convert.Unit getWeiConvertUnit() {
            return this.weiConvertUnit;
        }

        public final String getRecipientAddress() {
            return this.recipientAddress;
        }

        public final long getChainId() {
            return this.chainId;
        }

        public final BigInteger getNonce() {
            return this.nonce;
        }

        public final BigInteger getGasPrice() {
            return this.gasPrice;
        }

        public final BigInteger getGasLimit() {
            return this.gasLimit;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EVM(double d, Convert.Unit weiConvertUnit, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String str) {
            super(d, weiConvertUnit, null);
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            this.amount = d;
            this.weiConvertUnit = weiConvertUnit;
            this.recipientAddress = recipientAddress;
            this.chainId = j;
            this.nonce = nonce;
            this.gasPrice = gasPrice;
            this.gasLimit = gasLimit;
            this.contractAddress = str;
        }
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class TON extends TransferArgs {
        private final double amount;
        private final boolean isUnencrypted;
        private final String message;
        private final String recipientAddress;
        private final int sendMode;
        private final Convert.Unit weiConvertUnit;

        public final double component1() {
            return getAmount();
        }

        protected final Convert.Unit component2() {
            return getWeiConvertUnit();
        }

        public final String component3() {
            return this.recipientAddress;
        }

        public final String component4() {
            return this.message;
        }

        public final int component5() {
            return this.sendMode;
        }

        public final boolean component6() {
            return this.isUnencrypted;
        }

        public final TON copy(double d, Convert.Unit weiConvertUnit, String recipientAddress, String str, int i, boolean z) {
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            return new TON(d, weiConvertUnit, recipientAddress, str, i, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TON) {
                TON ton = (TON) obj;
                return Double.compare(getAmount(), ton.getAmount()) == 0 && getWeiConvertUnit() == ton.getWeiConvertUnit() && Intrinsics.areEqual(this.recipientAddress, ton.recipientAddress) && Intrinsics.areEqual(this.message, ton.message) && this.sendMode == ton.sendMode && this.isUnencrypted == ton.isUnencrypted;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int doubleToLongBits = ((((Double.doubleToLongBits(getAmount()) * 31) + getWeiConvertUnit().hashCode()) * 31) + this.recipientAddress.hashCode()) * 31;
            String str = this.message;
            int hashCode = (((doubleToLongBits + (str == null ? 0 : str.hashCode())) * 31) + this.sendMode) * 31;
            boolean z = this.isUnencrypted;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return hashCode + i;
        }

        public String toString() {
            return "TON(amount=" + getAmount() + ", weiConvertUnit=" + getWeiConvertUnit() + ", recipientAddress=" + this.recipientAddress + ", message=" + this.message + ", sendMode=" + this.sendMode + ", isUnencrypted=" + this.isUnencrypted + ')';
        }

        public /* synthetic */ TON(double d, Convert.Unit unit, String str, String str2, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(d, unit, str, str2, i, (i2 & 32) != 0 ? true : z);
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected Convert.Unit getWeiConvertUnit() {
            return this.weiConvertUnit;
        }

        public final String getRecipientAddress() {
            return this.recipientAddress;
        }

        public final String getMessage() {
            return this.message;
        }

        public final int getSendMode() {
            return this.sendMode;
        }

        public final boolean isUnencrypted() {
            return this.isUnencrypted;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TON(double d, Convert.Unit weiConvertUnit, String recipientAddress, String str, int i, boolean z) {
            super(d, weiConvertUnit, null);
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            this.amount = d;
            this.weiConvertUnit = weiConvertUnit;
            this.recipientAddress = recipientAddress;
            this.message = str;
            this.sendMode = i;
            this.isUnencrypted = z;
        }
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends TransferArgs {
        private final double amount;
        private final TronBlockHeader blockHeader;
        private final String contractAddress;
        private final BigInteger feeLimit;
        private final String recipientAddress;
        private final Convert.Unit weiConvertUnit;

        public final double component1() {
            return getAmount();
        }

        protected final Convert.Unit component2() {
            return getWeiConvertUnit();
        }

        public final String component3() {
            return this.recipientAddress;
        }

        public final BigInteger component4() {
            return this.feeLimit;
        }

        public final String component5() {
            return this.contractAddress;
        }

        public final TronBlockHeader component6() {
            return this.blockHeader;
        }

        public final TRON copy(double d, Convert.Unit weiConvertUnit, String recipientAddress, BigInteger feeLimit, String str, TronBlockHeader blockHeader) {
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            return new TRON(d, weiConvertUnit, recipientAddress, feeLimit, str, blockHeader);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Double.compare(getAmount(), tron.getAmount()) == 0 && getWeiConvertUnit() == tron.getWeiConvertUnit() && Intrinsics.areEqual(this.recipientAddress, tron.recipientAddress) && Intrinsics.areEqual(this.feeLimit, tron.feeLimit) && Intrinsics.areEqual(this.contractAddress, tron.contractAddress) && Intrinsics.areEqual(this.blockHeader, tron.blockHeader);
            }
            return false;
        }

        public int hashCode() {
            int doubleToLongBits = ((((((Double.doubleToLongBits(getAmount()) * 31) + getWeiConvertUnit().hashCode()) * 31) + this.recipientAddress.hashCode()) * 31) + this.feeLimit.hashCode()) * 31;
            String str = this.contractAddress;
            return ((doubleToLongBits + (str == null ? 0 : str.hashCode())) * 31) + this.blockHeader.hashCode();
        }

        public String toString() {
            return "TRON(amount=" + getAmount() + ", weiConvertUnit=" + getWeiConvertUnit() + ", recipientAddress=" + this.recipientAddress + ", feeLimit=" + this.feeLimit + ", contractAddress=" + this.contractAddress + ", blockHeader=" + this.blockHeader + ')';
        }

        public /* synthetic */ TRON(double d, Convert.Unit unit, String str, BigInteger bigInteger, String str2, TronBlockHeader tronBlockHeader, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(d, unit, str, bigInteger, (i & 16) != 0 ? null : str2, tronBlockHeader);
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected Convert.Unit getWeiConvertUnit() {
            return this.weiConvertUnit;
        }

        public final String getRecipientAddress() {
            return this.recipientAddress;
        }

        public final BigInteger getFeeLimit() {
            return this.feeLimit;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        public final TronBlockHeader getBlockHeader() {
            return this.blockHeader;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TRON(double d, Convert.Unit weiConvertUnit, String recipientAddress, BigInteger feeLimit, String str, TronBlockHeader blockHeader) {
            super(d, weiConvertUnit, null);
            Intrinsics.checkNotNullParameter(weiConvertUnit, "weiConvertUnit");
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            this.amount = d;
            this.weiConvertUnit = weiConvertUnit;
            this.recipientAddress = recipientAddress;
            this.feeLimit = feeLimit;
            this.contractAddress = str;
            this.blockHeader = blockHeader;
        }
    }
}
