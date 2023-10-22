package com.iMe.storage.domain.model.crypto;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.send.BitcoinUnspentOutput;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransactionSpeedLevel;
import java.math.BigInteger;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionParams.kt */
/* loaded from: classes3.dex */
public abstract class TransactionParams {
    private final GasPriceInfo fastest;
    private final GasPriceInfo low;
    private final GasPriceInfo medium;

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionSpeedLevel.values().length];
            try {
                iArr[TransactionSpeedLevel.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionSpeedLevel.MEDIUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransactionSpeedLevel.FASTEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ TransactionParams(GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, DefaultConstructorMarker defaultConstructorMarker) {
        this(gasPriceInfo, gasPriceInfo2, gasPriceInfo3);
    }

    private TransactionParams(GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3) {
        this.fastest = gasPriceInfo;
        this.medium = gasPriceInfo2;
        this.low = gasPriceInfo3;
    }

    public /* synthetic */ TransactionParams(GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : gasPriceInfo, gasPriceInfo2, (i & 4) != 0 ? null : gasPriceInfo3, null);
    }

    public GasPriceInfo getFastest() {
        return this.fastest;
    }

    public GasPriceInfo getMedium() {
        return this.medium;
    }

    public GasPriceInfo getLow() {
        return this.low;
    }

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public static final class Ether extends TransactionParams {
        private final long chainId;
        private final GasPriceInfo fastest;
        private final GasPriceInfo low;
        private final GasPriceInfo medium;
        private final BigInteger nonce;

        public static /* synthetic */ Ether copy$default(Ether ether, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, BigInteger bigInteger, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                gasPriceInfo = ether.getMedium();
            }
            if ((i & 2) != 0) {
                gasPriceInfo2 = ether.getFastest();
            }
            GasPriceInfo gasPriceInfo4 = gasPriceInfo2;
            if ((i & 4) != 0) {
                gasPriceInfo3 = ether.getLow();
            }
            GasPriceInfo gasPriceInfo5 = gasPriceInfo3;
            if ((i & 8) != 0) {
                bigInteger = ether.nonce;
            }
            BigInteger bigInteger2 = bigInteger;
            if ((i & 16) != 0) {
                j = ether.chainId;
            }
            return ether.copy(gasPriceInfo, gasPriceInfo4, gasPriceInfo5, bigInteger2, j);
        }

        public final GasPriceInfo component1() {
            return getMedium();
        }

        public final GasPriceInfo component2() {
            return getFastest();
        }

        public final GasPriceInfo component3() {
            return getLow();
        }

        public final BigInteger component4() {
            return this.nonce;
        }

        public final long component5() {
            return this.chainId;
        }

        public final Ether copy(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, BigInteger nonce, long j) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            return new Ether(medium, gasPriceInfo, gasPriceInfo2, nonce, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ether) {
                Ether ether = (Ether) obj;
                return Intrinsics.areEqual(getMedium(), ether.getMedium()) && Intrinsics.areEqual(getFastest(), ether.getFastest()) && Intrinsics.areEqual(getLow(), ether.getLow()) && Intrinsics.areEqual(this.nonce, ether.nonce) && this.chainId == ether.chainId;
            }
            return false;
        }

        public int hashCode() {
            return (((((((getMedium().hashCode() * 31) + (getFastest() == null ? 0 : getFastest().hashCode())) * 31) + (getLow() != null ? getLow().hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.chainId);
        }

        public String toString() {
            return "Ether(medium=" + getMedium() + ", fastest=" + getFastest() + ", low=" + getLow() + ", nonce=" + this.nonce + ", chainId=" + this.chainId + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getMedium() {
            return this.medium;
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getFastest() {
            return this.fastest;
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getLow() {
            return this.low;
        }

        public final BigInteger getNonce() {
            return this.nonce;
        }

        public final long getChainId() {
            return this.chainId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ether(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, BigInteger nonce, long j) {
            super(gasPriceInfo, medium, gasPriceInfo2, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            this.medium = medium;
            this.fastest = gasPriceInfo;
            this.low = gasPriceInfo2;
            this.nonce = nonce;
            this.chainId = j;
        }
    }

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public static final class Tron extends TransactionParams {
        private final TronBlockHeader blockHeader;
        private final String contractAddress;
        private final GasPriceInfo medium;

        public static /* synthetic */ Tron copy$default(Tron tron, GasPriceInfo gasPriceInfo, TronBlockHeader tronBlockHeader, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                gasPriceInfo = tron.getMedium();
            }
            if ((i & 2) != 0) {
                tronBlockHeader = tron.blockHeader;
            }
            if ((i & 4) != 0) {
                str = tron.contractAddress;
            }
            return tron.copy(gasPriceInfo, tronBlockHeader, str);
        }

        public final GasPriceInfo component1() {
            return getMedium();
        }

        public final TronBlockHeader component2() {
            return this.blockHeader;
        }

        public final String component3() {
            return this.contractAddress;
        }

        public final Tron copy(GasPriceInfo medium, TronBlockHeader blockHeader, String str) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            return new Tron(medium, blockHeader, str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Tron) {
                Tron tron = (Tron) obj;
                return Intrinsics.areEqual(getMedium(), tron.getMedium()) && Intrinsics.areEqual(this.blockHeader, tron.blockHeader) && Intrinsics.areEqual(this.contractAddress, tron.contractAddress);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = ((getMedium().hashCode() * 31) + this.blockHeader.hashCode()) * 31;
            String str = this.contractAddress;
            return hashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Tron(medium=" + getMedium() + ", blockHeader=" + this.blockHeader + ", contractAddress=" + this.contractAddress + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getMedium() {
            return this.medium;
        }

        public final TronBlockHeader getBlockHeader() {
            return this.blockHeader;
        }

        public final String getContractAddress() {
            return this.contractAddress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Tron(GasPriceInfo medium, TronBlockHeader blockHeader, String str) {
            super(null, medium, null, 5, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            this.medium = medium;
            this.blockHeader = blockHeader;
            this.contractAddress = str;
        }
    }

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public static final class Ton extends TransactionParams {
        private final GasPriceInfo medium;
        private final int walletSeqno;

        public static /* synthetic */ Ton copy$default(Ton ton, GasPriceInfo gasPriceInfo, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                gasPriceInfo = ton.getMedium();
            }
            if ((i2 & 2) != 0) {
                i = ton.walletSeqno;
            }
            return ton.copy(gasPriceInfo, i);
        }

        public final GasPriceInfo component1() {
            return getMedium();
        }

        public final int component2() {
            return this.walletSeqno;
        }

        public final Ton copy(GasPriceInfo medium, int i) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            return new Ton(medium, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ton) {
                Ton ton = (Ton) obj;
                return Intrinsics.areEqual(getMedium(), ton.getMedium()) && this.walletSeqno == ton.walletSeqno;
            }
            return false;
        }

        public int hashCode() {
            return (getMedium().hashCode() * 31) + this.walletSeqno;
        }

        public String toString() {
            return "Ton(medium=" + getMedium() + ", walletSeqno=" + this.walletSeqno + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getMedium() {
            return this.medium;
        }

        public final int getWalletSeqno() {
            return this.walletSeqno;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ton(GasPriceInfo medium, int i) {
            super(null, medium, null, 5, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            this.medium = medium;
            this.walletSeqno = i;
        }
    }

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public static final class Bitcoin extends TransactionParams {
        private final String changeAddress;
        private final GasPriceInfo fastest;
        private final GasPriceInfo low;
        private final GasPriceInfo medium;
        private final List<BitcoinUnspentOutput> utxos;

        public static /* synthetic */ Bitcoin copy$default(Bitcoin bitcoin, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, List list, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                gasPriceInfo = bitcoin.getMedium();
            }
            if ((i & 2) != 0) {
                gasPriceInfo2 = bitcoin.getFastest();
            }
            GasPriceInfo gasPriceInfo4 = gasPriceInfo2;
            if ((i & 4) != 0) {
                gasPriceInfo3 = bitcoin.getLow();
            }
            GasPriceInfo gasPriceInfo5 = gasPriceInfo3;
            List<BitcoinUnspentOutput> list2 = list;
            if ((i & 8) != 0) {
                list2 = bitcoin.utxos;
            }
            List list3 = list2;
            if ((i & 16) != 0) {
                str = bitcoin.changeAddress;
            }
            return bitcoin.copy(gasPriceInfo, gasPriceInfo4, gasPriceInfo5, list3, str);
        }

        public final GasPriceInfo component1() {
            return getMedium();
        }

        public final GasPriceInfo component2() {
            return getFastest();
        }

        public final GasPriceInfo component3() {
            return getLow();
        }

        public final List<BitcoinUnspentOutput> component4() {
            return this.utxos;
        }

        public final String component5() {
            return this.changeAddress;
        }

        public final Bitcoin copy(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, List<BitcoinUnspentOutput> utxos, String changeAddress) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            return new Bitcoin(medium, gasPriceInfo, gasPriceInfo2, utxos, changeAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Bitcoin) {
                Bitcoin bitcoin = (Bitcoin) obj;
                return Intrinsics.areEqual(getMedium(), bitcoin.getMedium()) && Intrinsics.areEqual(getFastest(), bitcoin.getFastest()) && Intrinsics.areEqual(getLow(), bitcoin.getLow()) && Intrinsics.areEqual(this.utxos, bitcoin.utxos) && Intrinsics.areEqual(this.changeAddress, bitcoin.changeAddress);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getMedium().hashCode() * 31) + (getFastest() == null ? 0 : getFastest().hashCode())) * 31) + (getLow() != null ? getLow().hashCode() : 0)) * 31) + this.utxos.hashCode()) * 31) + this.changeAddress.hashCode();
        }

        public String toString() {
            return "Bitcoin(medium=" + getMedium() + ", fastest=" + getFastest() + ", low=" + getLow() + ", utxos=" + this.utxos + ", changeAddress=" + this.changeAddress + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getMedium() {
            return this.medium;
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getFastest() {
            return this.fastest;
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getLow() {
            return this.low;
        }

        public final List<BitcoinUnspentOutput> getUtxos() {
            return this.utxos;
        }

        public final String getChangeAddress() {
            return this.changeAddress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bitcoin(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, List<BitcoinUnspentOutput> utxos, String changeAddress) {
            super(gasPriceInfo, medium, gasPriceInfo2, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(utxos, "utxos");
            Intrinsics.checkNotNullParameter(changeAddress, "changeAddress");
            this.medium = medium;
            this.fastest = gasPriceInfo;
            this.low = gasPriceInfo2;
            this.utxos = utxos;
            this.changeAddress = changeAddress;
        }
    }

    public final GasPriceInfo getFeeByLevel(TransactionSpeedLevel speedLevel) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        if (this instanceof Ether) {
            int i = WhenMappings.$EnumSwitchMapping$0[speedLevel.ordinal()];
            if (i == 1) {
                GasPriceInfo low = getLow();
                return low == null ? getMedium() : low;
            } else if (i != 2) {
                if (i == 3) {
                    GasPriceInfo fastest = getFastest();
                    return fastest == null ? getMedium() : fastest;
                }
                throw new NoWhenBranchMatchedException();
            } else {
                return getMedium();
            }
        }
        return getMedium();
    }

    public final List<GasPriceInfo> getFees() {
        List<GasPriceInfo> listOf;
        List<GasPriceInfo> listOfNotNull;
        if (this instanceof Ether) {
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new GasPriceInfo[]{getLow(), getMedium(), getFastest()});
            return listOfNotNull;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getMedium());
        return listOf;
    }
}
