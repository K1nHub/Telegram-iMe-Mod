package com.iMe.storage.domain.model.crypto.send;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.model.crypto.TronBlockHeader;
import java.math.BigInteger;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransferArgs.kt */
/* loaded from: classes3.dex */
public abstract class TransferArgs implements TransactionArgs {
    private final double amount;
    private final int decimals;

    public /* synthetic */ TransferArgs(double d, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, i);
    }

    private TransferArgs(double d, int i) {
        this.amount = d;
        this.decimals = i;
    }

    public double getAmount() {
        return this.amount;
    }

    protected int getDecimals() {
        return this.decimals;
    }

    public final BigInteger getConvertedAmount() {
        return NumberExtKt.convertToBaseUnit(Double.valueOf(getAmount()), getDecimals());
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class EVM extends TransferArgs {
        private final double amount;
        private final long chainId;
        private final String contractAddress;
        private final int decimals;
        private final BigInteger gasLimit;
        private final BigInteger gasPrice;
        private final BigInteger nonce;
        private final String recipientAddress;

        public final double component1() {
            return getAmount();
        }

        protected final int component2() {
            return getDecimals();
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

        public final EVM copy(double d, int i, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String str) {
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            return new EVM(d, i, recipientAddress, j, nonce, gasPrice, gasLimit, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof EVM) {
                EVM evm = (EVM) obj;
                return Double.compare(getAmount(), evm.getAmount()) == 0 && getDecimals() == evm.getDecimals() && Intrinsics.areEqual(this.recipientAddress, evm.recipientAddress) && this.chainId == evm.chainId && Intrinsics.areEqual(this.nonce, evm.nonce) && Intrinsics.areEqual(this.gasPrice, evm.gasPrice) && Intrinsics.areEqual(this.gasLimit, evm.gasLimit) && Intrinsics.areEqual(this.contractAddress, evm.contractAddress);
            }
            return false;
        }

        public int hashCode() {
            int doubleToLongBits = ((((((((((((Double.doubleToLongBits(getAmount()) * 31) + getDecimals()) * 31) + this.recipientAddress.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId)) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode()) * 31;
            String str = this.contractAddress;
            return doubleToLongBits + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "EVM(amount=" + getAmount() + ", decimals=" + getDecimals() + ", recipientAddress=" + this.recipientAddress + ", chainId=" + this.chainId + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ", contractAddress=" + this.contractAddress + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected int getDecimals() {
            return this.decimals;
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
        public EVM(double d, int i, String recipientAddress, long j, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit, String str) {
            super(d, i, null);
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
            Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
            this.amount = d;
            this.decimals = i;
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
        private final int decimals;
        private final boolean isUnencrypted;
        private final String message;
        private final String recipientAddress;
        private final int sendMode;

        public final double component1() {
            return getAmount();
        }

        protected final int component2() {
            return getDecimals();
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

        public final TON copy(double d, int i, String recipientAddress, String str, int i2, boolean z) {
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            return new TON(d, i, recipientAddress, str, i2, z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TON) {
                TON ton = (TON) obj;
                return Double.compare(getAmount(), ton.getAmount()) == 0 && getDecimals() == ton.getDecimals() && Intrinsics.areEqual(this.recipientAddress, ton.recipientAddress) && Intrinsics.areEqual(this.message, ton.message) && this.sendMode == ton.sendMode && this.isUnencrypted == ton.isUnencrypted;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int doubleToLongBits = ((((Double.doubleToLongBits(getAmount()) * 31) + getDecimals()) * 31) + this.recipientAddress.hashCode()) * 31;
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
            return "TON(amount=" + getAmount() + ", decimals=" + getDecimals() + ", recipientAddress=" + this.recipientAddress + ", message=" + this.message + ", sendMode=" + this.sendMode + ", isUnencrypted=" + this.isUnencrypted + ')';
        }

        public /* synthetic */ TON(double d, int i, String str, String str2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(d, i, str, str2, i2, (i3 & 32) != 0 ? true : z);
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected int getDecimals() {
            return this.decimals;
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
        public TON(double d, int i, String recipientAddress, String str, int i2, boolean z) {
            super(d, i, null);
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            this.amount = d;
            this.decimals = i;
            this.recipientAddress = recipientAddress;
            this.message = str;
            this.sendMode = i2;
            this.isUnencrypted = z;
        }
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class TRON extends TransferArgs {
        private final double amount;
        private final TronBlockHeader blockHeader;
        private final String contractAddress;
        private final int decimals;
        private final BigInteger feeLimit;
        private final String recipientAddress;

        public final double component1() {
            return getAmount();
        }

        protected final int component2() {
            return getDecimals();
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

        public final TRON copy(double d, int i, String recipientAddress, BigInteger feeLimit, String str, TronBlockHeader blockHeader) {
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            return new TRON(d, i, recipientAddress, feeLimit, str, blockHeader);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TRON) {
                TRON tron = (TRON) obj;
                return Double.compare(getAmount(), tron.getAmount()) == 0 && getDecimals() == tron.getDecimals() && Intrinsics.areEqual(this.recipientAddress, tron.recipientAddress) && Intrinsics.areEqual(this.feeLimit, tron.feeLimit) && Intrinsics.areEqual(this.contractAddress, tron.contractAddress) && Intrinsics.areEqual(this.blockHeader, tron.blockHeader);
            }
            return false;
        }

        public int hashCode() {
            int doubleToLongBits = ((((((Double.doubleToLongBits(getAmount()) * 31) + getDecimals()) * 31) + this.recipientAddress.hashCode()) * 31) + this.feeLimit.hashCode()) * 31;
            String str = this.contractAddress;
            return ((doubleToLongBits + (str == null ? 0 : str.hashCode())) * 31) + this.blockHeader.hashCode();
        }

        public String toString() {
            return "TRON(amount=" + getAmount() + ", decimals=" + getDecimals() + ", recipientAddress=" + this.recipientAddress + ", feeLimit=" + this.feeLimit + ", contractAddress=" + this.contractAddress + ", blockHeader=" + this.blockHeader + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected int getDecimals() {
            return this.decimals;
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
        public TRON(double d, int i, String recipientAddress, BigInteger feeLimit, String str, TronBlockHeader blockHeader) {
            super(d, i, null);
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(feeLimit, "feeLimit");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            this.amount = d;
            this.decimals = i;
            this.recipientAddress = recipientAddress;
            this.feeLimit = feeLimit;
            this.contractAddress = str;
            this.blockHeader = blockHeader;
        }
    }

    /* compiled from: TransferArgs.kt */
    /* loaded from: classes3.dex */
    public static final class BTC extends TransferArgs {
        private final double amount;
        private final BigInteger byteFee;
        private final String changeAddress;
        private final int decimals;
        private final String recipientAddress;
        private final List<BitcoinUnspentOutput> utxos;

        public final double component1() {
            return getAmount();
        }

        protected final int component2() {
            return getDecimals();
        }

        public final String component3() {
            return this.recipientAddress;
        }

        public final List<BitcoinUnspentOutput> component4() {
            return this.utxos;
        }

        public final String component5() {
            return this.changeAddress;
        }

        public final BigInteger component6() {
            return this.byteFee;
        }

        public final BTC copy(double d, int i, String recipientAddress, List<BitcoinUnspentOutput> utxos, String changeAddress, BigInteger byteFee) {
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            Intrinsics.checkNotNullParameter(byteFee, "byteFee");
            return new BTC(d, i, recipientAddress, utxos, changeAddress, byteFee);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BTC) {
                BTC btc = (BTC) obj;
                return Double.compare(getAmount(), btc.getAmount()) == 0 && getDecimals() == btc.getDecimals() && Intrinsics.areEqual(this.recipientAddress, btc.recipientAddress) && Intrinsics.areEqual(this.utxos, btc.utxos) && Intrinsics.areEqual(this.changeAddress, btc.changeAddress) && Intrinsics.areEqual(this.byteFee, btc.byteFee);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((Double.doubleToLongBits(getAmount()) * 31) + getDecimals()) * 31) + this.recipientAddress.hashCode()) * 31) + this.utxos.hashCode()) * 31) + this.changeAddress.hashCode()) * 31) + this.byteFee.hashCode();
        }

        public String toString() {
            return "BTC(amount=" + getAmount() + ", decimals=" + getDecimals() + ", recipientAddress=" + this.recipientAddress + ", utxos=" + this.utxos + ", changeAddress=" + this.changeAddress + ", byteFee=" + this.byteFee + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        public double getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.crypto.send.TransferArgs
        protected int getDecimals() {
            return this.decimals;
        }

        public final String getRecipientAddress() {
            return this.recipientAddress;
        }

        public final List<BitcoinUnspentOutput> getUtxos() {
            return this.utxos;
        }

        public final String getChangeAddress() {
            return this.changeAddress;
        }

        public final BigInteger getByteFee() {
            return this.byteFee;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BTC(double d, int i, String recipientAddress, List<BitcoinUnspentOutput> utxos, String changeAddress, BigInteger byteFee) {
            super(d, i, null);
            Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            Intrinsics.checkNotNullParameter(byteFee, "byteFee");
            this.amount = d;
            this.decimals = i;
            this.recipientAddress = recipientAddress;
            this.utxos = utxos;
            this.changeAddress = changeAddress;
            this.byteFee = byteFee;
        }
    }
}
