package com.iMe.storage.domain.model.crypto;

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
        private final Chain chain;
        private final GasPriceInfo fastest;
        private final GasPriceInfo low;
        private final GasPriceInfo medium;
        private final BigInteger nonce;

        public static /* synthetic */ Ether copy$default(Ether ether, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, BigInteger bigInteger, Chain chain, int i, Object obj) {
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
                chain = ether.chain;
            }
            return ether.copy(gasPriceInfo, gasPriceInfo4, gasPriceInfo5, bigInteger2, chain);
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

        public final Chain component5() {
            return this.chain;
        }

        public final Ether copy(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, BigInteger nonce, Chain chain) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(chain, "chain");
            return new Ether(medium, gasPriceInfo, gasPriceInfo2, nonce, chain);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ether) {
                Ether ether = (Ether) obj;
                return Intrinsics.areEqual(getMedium(), ether.getMedium()) && Intrinsics.areEqual(getFastest(), ether.getFastest()) && Intrinsics.areEqual(getLow(), ether.getLow()) && Intrinsics.areEqual(this.nonce, ether.nonce) && Intrinsics.areEqual(this.chain, ether.chain);
            }
            return false;
        }

        public int hashCode() {
            return (((((((getMedium().hashCode() * 31) + (getFastest() == null ? 0 : getFastest().hashCode())) * 31) + (getLow() != null ? getLow().hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + this.chain.hashCode();
        }

        public String toString() {
            return "Ether(medium=" + getMedium() + ", fastest=" + getFastest() + ", low=" + getLow() + ", nonce=" + this.nonce + ", chain=" + this.chain + ')';
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

        public final Chain getChain() {
            return this.chain;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ether(GasPriceInfo medium, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, BigInteger nonce, Chain chain) {
            super(gasPriceInfo, medium, gasPriceInfo2, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(nonce, "nonce");
            Intrinsics.checkNotNullParameter(chain, "chain");
            this.medium = medium;
            this.fastest = gasPriceInfo;
            this.low = gasPriceInfo2;
            this.nonce = nonce;
            this.chain = chain;
        }
    }

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public static final class Tron extends TransactionParams {
        private final TronBlockHeader blockHeader;
        private final GasPriceInfo medium;

        public static /* synthetic */ Tron copy$default(Tron tron, GasPriceInfo gasPriceInfo, TronBlockHeader tronBlockHeader, int i, Object obj) {
            if ((i & 1) != 0) {
                gasPriceInfo = tron.getMedium();
            }
            if ((i & 2) != 0) {
                tronBlockHeader = tron.blockHeader;
            }
            return tron.copy(gasPriceInfo, tronBlockHeader);
        }

        public final GasPriceInfo component1() {
            return getMedium();
        }

        public final TronBlockHeader component2() {
            return this.blockHeader;
        }

        public final Tron copy(GasPriceInfo medium, TronBlockHeader blockHeader) {
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            return new Tron(medium, blockHeader);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Tron) {
                Tron tron = (Tron) obj;
                return Intrinsics.areEqual(getMedium(), tron.getMedium()) && Intrinsics.areEqual(this.blockHeader, tron.blockHeader);
            }
            return false;
        }

        public int hashCode() {
            return (getMedium().hashCode() * 31) + this.blockHeader.hashCode();
        }

        public String toString() {
            return "Tron(medium=" + getMedium() + ", blockHeader=" + this.blockHeader + ')';
        }

        @Override // com.iMe.storage.domain.model.crypto.TransactionParams
        public GasPriceInfo getMedium() {
            return this.medium;
        }

        public final TronBlockHeader getBlockHeader() {
            return this.blockHeader;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Tron(GasPriceInfo medium, TronBlockHeader blockHeader) {
            super(null, medium, null, 5, null);
            Intrinsics.checkNotNullParameter(medium, "medium");
            Intrinsics.checkNotNullParameter(blockHeader, "blockHeader");
            this.medium = medium;
            this.blockHeader = blockHeader;
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
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(getLow(), getMedium(), getFastest());
            return listOfNotNull;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(getMedium());
        return listOf;
    }
}
