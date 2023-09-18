package com.iMe.storage.domain.model.crypto.nft.avatar;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftCollection.kt */
/* loaded from: classes4.dex */
public final class NftCollection {
    private final String contractAddress;

    /* renamed from: id */
    private final long f418id;
    private final NftCollectionStatus status;
    private final String title;
    private final String transactionHash;

    public static /* synthetic */ NftCollection copy$default(NftCollection nftCollection, long j, String str, String str2, String str3, NftCollectionStatus nftCollectionStatus, int i, Object obj) {
        if ((i & 1) != 0) {
            j = nftCollection.f418id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = nftCollection.title;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = nftCollection.contractAddress;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            str3 = nftCollection.transactionHash;
        }
        String str6 = str3;
        if ((i & 16) != 0) {
            nftCollectionStatus = nftCollection.status;
        }
        return nftCollection.copy(j2, str4, str5, str6, nftCollectionStatus);
    }

    public final long component1() {
        return this.f418id;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.contractAddress;
    }

    public final String component4() {
        return this.transactionHash;
    }

    public final NftCollectionStatus component5() {
        return this.status;
    }

    public final NftCollection copy(long j, String title, String contractAddress, String transactionHash, NftCollectionStatus status) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        Intrinsics.checkNotNullParameter(status, "status");
        return new NftCollection(j, title, contractAddress, transactionHash, status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NftCollection) {
            NftCollection nftCollection = (NftCollection) obj;
            return this.f418id == nftCollection.f418id && Intrinsics.areEqual(this.title, nftCollection.title) && Intrinsics.areEqual(this.contractAddress, nftCollection.contractAddress) && Intrinsics.areEqual(this.transactionHash, nftCollection.transactionHash) && this.status == nftCollection.status;
        }
        return false;
    }

    public int hashCode() {
        return (((((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f418id) * 31) + this.title.hashCode()) * 31) + this.contractAddress.hashCode()) * 31) + this.transactionHash.hashCode()) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "NftCollection(id=" + this.f418id + ", title=" + this.title + ", contractAddress=" + this.contractAddress + ", transactionHash=" + this.transactionHash + ", status=" + this.status + ')';
    }

    public NftCollection(long j, String title, String contractAddress, String transactionHash, NftCollectionStatus status) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(contractAddress, "contractAddress");
        Intrinsics.checkNotNullParameter(transactionHash, "transactionHash");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f418id = j;
        this.title = title;
        this.contractAddress = contractAddress;
        this.transactionHash = transactionHash;
        this.status = status;
    }

    public final long getId() {
        return this.f418id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getContractAddress() {
        return this.contractAddress;
    }

    public final String getTransactionHash() {
        return this.transactionHash;
    }

    public final NftCollectionStatus getStatus() {
        return this.status;
    }
}
