package com.iMe.storage.data.network.model.response.crypto.wallet;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TronBlockHeaderResponse.kt */
/* loaded from: classes3.dex */
public final class TronBlockHeaderResponse {
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

    public final TronBlockHeaderResponse copy(long j, String txTrieRoot, String witnessAddress, String parentHash, int i, long j2) {
        Intrinsics.checkNotNullParameter(txTrieRoot, "txTrieRoot");
        Intrinsics.checkNotNullParameter(witnessAddress, "witnessAddress");
        Intrinsics.checkNotNullParameter(parentHash, "parentHash");
        return new TronBlockHeaderResponse(j, txTrieRoot, witnessAddress, parentHash, i, j2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TronBlockHeaderResponse) {
            TronBlockHeaderResponse tronBlockHeaderResponse = (TronBlockHeaderResponse) obj;
            return this.number == tronBlockHeaderResponse.number && Intrinsics.areEqual(this.txTrieRoot, tronBlockHeaderResponse.txTrieRoot) && Intrinsics.areEqual(this.witnessAddress, tronBlockHeaderResponse.witnessAddress) && Intrinsics.areEqual(this.parentHash, tronBlockHeaderResponse.parentHash) && this.version == tronBlockHeaderResponse.version && this.timestamp == tronBlockHeaderResponse.timestamp;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((BotsDbModel$$ExternalSyntheticBackport0.m702m(this.number) * 31) + this.txTrieRoot.hashCode()) * 31) + this.witnessAddress.hashCode()) * 31) + this.parentHash.hashCode()) * 31) + this.version) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.timestamp);
    }

    public String toString() {
        return "TronBlockHeaderResponse(number=" + this.number + ", txTrieRoot=" + this.txTrieRoot + ", witnessAddress=" + this.witnessAddress + ", parentHash=" + this.parentHash + ", version=" + this.version + ", timestamp=" + this.timestamp + ')';
    }

    public TronBlockHeaderResponse(long j, String txTrieRoot, String witnessAddress, String parentHash, int i, long j2) {
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
