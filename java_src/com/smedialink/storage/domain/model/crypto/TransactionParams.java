package com.smedialink.storage.domain.model.crypto;

import com.smedialink.storage.domain.model.crypto.send.GasPriceInfo;
import com.smedialink.storage.domain.model.crypto.send.TransactionSpeedLevel;
import java.math.BigInteger;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TransactionParams.kt */
/* loaded from: classes3.dex */
public final class TransactionParams {
    private final Chain chain;
    private final GasPriceInfo fastest;
    private final GasPriceInfo low;
    private final GasPriceInfo medium;
    private final BigInteger nonce;

    /* compiled from: TransactionParams.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransactionSpeedLevel.values().length];
            iArr[TransactionSpeedLevel.LOW.ordinal()] = 1;
            iArr[TransactionSpeedLevel.MEDIUM.ordinal()] = 2;
            iArr[TransactionSpeedLevel.FASTEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ TransactionParams copy$default(TransactionParams transactionParams, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, BigInteger bigInteger, Chain chain, int i, Object obj) {
        if ((i & 1) != 0) {
            gasPriceInfo = transactionParams.fastest;
        }
        if ((i & 2) != 0) {
            gasPriceInfo2 = transactionParams.medium;
        }
        GasPriceInfo gasPriceInfo4 = gasPriceInfo2;
        if ((i & 4) != 0) {
            gasPriceInfo3 = transactionParams.low;
        }
        GasPriceInfo gasPriceInfo5 = gasPriceInfo3;
        if ((i & 8) != 0) {
            bigInteger = transactionParams.nonce;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i & 16) != 0) {
            chain = transactionParams.chain;
        }
        return transactionParams.copy(gasPriceInfo, gasPriceInfo4, gasPriceInfo5, bigInteger2, chain);
    }

    public final GasPriceInfo component1() {
        return this.fastest;
    }

    public final GasPriceInfo component2() {
        return this.medium;
    }

    public final GasPriceInfo component3() {
        return this.low;
    }

    public final BigInteger component4() {
        return this.nonce;
    }

    public final Chain component5() {
        return this.chain;
    }

    public final TransactionParams copy(GasPriceInfo gasPriceInfo, GasPriceInfo medium, GasPriceInfo gasPriceInfo2, BigInteger nonce, Chain chain) {
        Intrinsics.checkNotNullParameter(medium, "medium");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(chain, "chain");
        return new TransactionParams(gasPriceInfo, medium, gasPriceInfo2, nonce, chain);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransactionParams) {
            TransactionParams transactionParams = (TransactionParams) obj;
            return Intrinsics.areEqual(this.fastest, transactionParams.fastest) && Intrinsics.areEqual(this.medium, transactionParams.medium) && Intrinsics.areEqual(this.low, transactionParams.low) && Intrinsics.areEqual(this.nonce, transactionParams.nonce) && Intrinsics.areEqual(this.chain, transactionParams.chain);
        }
        return false;
    }

    public int hashCode() {
        GasPriceInfo gasPriceInfo = this.fastest;
        int hashCode = (((gasPriceInfo == null ? 0 : gasPriceInfo.hashCode()) * 31) + this.medium.hashCode()) * 31;
        GasPriceInfo gasPriceInfo2 = this.low;
        return ((((hashCode + (gasPriceInfo2 != null ? gasPriceInfo2.hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + this.chain.hashCode();
    }

    public String toString() {
        return "TransactionParams(fastest=" + this.fastest + ", medium=" + this.medium + ", low=" + this.low + ", nonce=" + this.nonce + ", chain=" + this.chain + ')';
    }

    public TransactionParams(GasPriceInfo gasPriceInfo, GasPriceInfo medium, GasPriceInfo gasPriceInfo2, BigInteger nonce, Chain chain) {
        Intrinsics.checkNotNullParameter(medium, "medium");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.fastest = gasPriceInfo;
        this.medium = medium;
        this.low = gasPriceInfo2;
        this.nonce = nonce;
        this.chain = chain;
    }

    public final GasPriceInfo getFastest() {
        return this.fastest;
    }

    public final GasPriceInfo getMedium() {
        return this.medium;
    }

    public final GasPriceInfo getLow() {
        return this.low;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final Chain getChain() {
        return this.chain;
    }

    public final GasPriceInfo getFeeByLevel(TransactionSpeedLevel speedLevel) {
        Intrinsics.checkNotNullParameter(speedLevel, "speedLevel");
        int i = WhenMappings.$EnumSwitchMapping$0[speedLevel.ordinal()];
        if (i == 1) {
            GasPriceInfo gasPriceInfo = this.low;
            return gasPriceInfo == null ? this.medium : gasPriceInfo;
        } else if (i != 2) {
            if (i == 3) {
                GasPriceInfo gasPriceInfo2 = this.fastest;
                return gasPriceInfo2 == null ? this.medium : gasPriceInfo2;
            }
            throw new NoWhenBranchMatchedException();
        } else {
            return this.medium;
        }
    }

    public final List<GasPriceInfo> getFees() {
        List<GasPriceInfo> listOfNotNull;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.low, this.medium, this.fastest);
        return listOfNotNull;
    }
}
