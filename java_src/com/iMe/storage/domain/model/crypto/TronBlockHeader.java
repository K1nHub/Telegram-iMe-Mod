package com.iMe.storage.domain.model.crypto;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TronBlockHeader.kt */
/* loaded from: classes3.dex */
public final class TronBlockHeader {
    private final long number;
    private final String parentHash;
    private final long timestamp;
    private final String txTrieRoot;
    private final int version;
    private final String witnessAddress;

    public final long component1() {
        return this.number;
    }

    public final String component2() {
        return this.txTrieRoot;
    }

    public final String component3() {
        return this.witnessAddress;
    }

    public final String component4() {
        return this.parentHash;
    }

    public final int component5() {
        return this.version;
    }

    public final long component6() {
        return this.timestamp;
    }

    public final TronBlockHeader copy(long j, String txTrieRoot, String witnessAddress, String parentHash, int i, long j2) {
        Intrinsics.checkNotNullParameter(txTrieRoot, "txTrieRoot");
        Intrinsics.checkNotNullParameter(witnessAddress, "witnessAddress");
        Intrinsics.checkNotNullParameter(parentHash, "parentHash");
        return new TronBlockHeader(j, txTrieRoot, witnessAddress, parentHash, i, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TronBlockHeader) {
            TronBlockHeader tronBlockHeader = (TronBlockHeader) obj;
            return this.number == tronBlockHeader.number && Intrinsics.areEqual(this.txTrieRoot, tronBlockHeader.txTrieRoot) && Intrinsics.areEqual(this.witnessAddress, tronBlockHeader.witnessAddress) && Intrinsics.areEqual(this.parentHash, tronBlockHeader.parentHash) && this.version == tronBlockHeader.version && this.timestamp == tronBlockHeader.timestamp;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((BotsDbModel$$ExternalSyntheticBackport0.m716m(this.number) * 31) + this.txTrieRoot.hashCode()) * 31) + this.witnessAddress.hashCode()) * 31) + this.parentHash.hashCode()) * 31) + this.version) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.timestamp);
    }

    public String toString() {
        return "TronBlockHeader(number=" + this.number + ", txTrieRoot=" + this.txTrieRoot + ", witnessAddress=" + this.witnessAddress + ", parentHash=" + this.parentHash + ", version=" + this.version + ", timestamp=" + this.timestamp + ')';
    }

    public TronBlockHeader(long j, String txTrieRoot, String witnessAddress, String parentHash, int i, long j2) {
        Intrinsics.checkNotNullParameter(txTrieRoot, "txTrieRoot");
        Intrinsics.checkNotNullParameter(witnessAddress, "witnessAddress");
        Intrinsics.checkNotNullParameter(parentHash, "parentHash");
        this.number = j;
        this.txTrieRoot = txTrieRoot;
        this.witnessAddress = witnessAddress;
        this.parentHash = parentHash;
        this.version = i;
        this.timestamp = j2;
    }

    public final long getNumber() {
        return this.number;
    }

    public final String getTxTrieRoot() {
        return this.txTrieRoot;
    }

    public final String getWitnessAddress() {
        return this.witnessAddress;
    }

    public final String getParentHash() {
        return this.parentHash;
    }

    public final int getVersion() {
        return this.version;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }
}
