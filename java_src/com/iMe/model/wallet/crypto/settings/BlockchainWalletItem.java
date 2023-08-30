package com.iMe.model.wallet.crypto.settings;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainWalletItem.kt */
/* loaded from: classes3.dex */
public final class BlockchainWalletItem {
    private final String address;
    private final BlockchainType blockchainType;
    private final String creationDate;
    private final List<String> secretWords;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BlockchainWalletItem copy$default(BlockchainWalletItem blockchainWalletItem, BlockchainType blockchainType, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            blockchainType = blockchainWalletItem.blockchainType;
        }
        if ((i & 2) != 0) {
            str = blockchainWalletItem.address;
        }
        if ((i & 4) != 0) {
            str2 = blockchainWalletItem.creationDate;
        }
        if ((i & 8) != 0) {
            list = blockchainWalletItem.secretWords;
        }
        return blockchainWalletItem.copy(blockchainType, str, str2, list);
    }

    public final BlockchainType component1() {
        return this.blockchainType;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.creationDate;
    }

    public final List<String> component4() {
        return this.secretWords;
    }

    public final BlockchainWalletItem copy(BlockchainType blockchainType, String address, String creationDate, List<String> secretWords) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(creationDate, "creationDate");
        Intrinsics.checkNotNullParameter(secretWords, "secretWords");
        return new BlockchainWalletItem(blockchainType, address, creationDate, secretWords);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockchainWalletItem) {
            BlockchainWalletItem blockchainWalletItem = (BlockchainWalletItem) obj;
            return this.blockchainType == blockchainWalletItem.blockchainType && Intrinsics.areEqual(this.address, blockchainWalletItem.address) && Intrinsics.areEqual(this.creationDate, blockchainWalletItem.creationDate) && Intrinsics.areEqual(this.secretWords, blockchainWalletItem.secretWords);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.blockchainType.hashCode() * 31) + this.address.hashCode()) * 31) + this.creationDate.hashCode()) * 31) + this.secretWords.hashCode();
    }

    public String toString() {
        return "BlockchainWalletItem(blockchainType=" + this.blockchainType + ", address=" + this.address + ", creationDate=" + this.creationDate + ", secretWords=" + this.secretWords + ')';
    }

    public BlockchainWalletItem(BlockchainType blockchainType, String address, String creationDate, List<String> secretWords) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(creationDate, "creationDate");
        Intrinsics.checkNotNullParameter(secretWords, "secretWords");
        this.blockchainType = blockchainType;
        this.address = address;
        this.creationDate = creationDate;
        this.secretWords = secretWords;
    }

    public final BlockchainType getBlockchainType() {
        return this.blockchainType;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getCreationDate() {
        return this.creationDate;
    }

    public final List<String> getSecretWords() {
        return this.secretWords;
    }
}
