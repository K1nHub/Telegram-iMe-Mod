package org.ton.lite.client;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.api.tonnode.TonNodeBlockIdExt;
import org.ton.bitstring.BitString;
import org.ton.block.Account;
import org.ton.block.AddrStd;
import org.ton.block.Block;
import org.ton.block.MerkleProof;
import org.ton.block.ShardAccount;
import org.ton.block.ShardState;
import org.ton.block.ShardStateUnsplit;
import org.ton.boc.BagOfCellsKt;
import org.ton.cell.Cell;
import org.ton.hashmap.HashmapAugNode;
import org.ton.lite.client.internal.BlockHeaderResult;
import org.ton.lite.client.internal.FullAccountState;
import org.ton.lite.client.internal.TransactionId;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: CheckProofUtils.kt */
/* loaded from: classes6.dex */
public final class CheckProofUtils {
    public static final CheckProofUtils INSTANCE = new CheckProofUtils();

    private CheckProofUtils() {
    }

    public final BlockHeaderResult checkBlockHeaderProof(Cell root, TonNodeBlockIdExt blockId, boolean z) {
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(blockId, "blockId");
        BitString hash$default = Cell.DefaultImpls.hash$default(root, 0, 1, null);
        byte[] byteArray = blockId.rootHash().toByteArray();
        if (!Intrinsics.areEqual(hash$default, BitString.Companion.m43of(byteArray, byteArray.length * 8))) {
            throw new IllegalStateException(("Invalid hash for block: " + blockId + ", expected: " + blockId.rootHash() + ", actual: " + hash$default).toString());
        }
        Block loadTlb = Block.Companion.loadTlb(root);
        return new BlockHeaderResult(loadTlb.getInfo().getValue().m5089getGenUtimepVg5ArA(), loadTlb.getInfo().getValue().m5087getEndLtsVKNKU(), z ? CellRef.DefaultImpls.toCell$default(loadTlb.getStateUpdate(), null, 1, null).getRefs().get(1).hash(0) : null);
    }

    public final FullAccountState checkAccountProof(byte[] proof, TonNodeBlockIdExt shardBlock, AddrStd address, Cell root) {
        List list;
        Intrinsics.checkNotNullParameter(proof, "proof");
        Intrinsics.checkNotNullParameter(shardBlock, "shardBlock");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(root, "root");
        CellRef valueOf = CellRef.Companion.valueOf(root, (TlbCodec) Account.Companion);
        list = CollectionsKt___CollectionsKt.toList(BagOfCellsKt.BagOfCells(proof).getRoots());
        if (!(list.size() == 2)) {
            throw new IllegalStateException(("Invalid roots amount, expected: 2, actual: " + list.size()).toString());
        }
        MerkleProof.Companion companion = MerkleProof.Companion;
        BlockHeaderResult checkBlockHeaderProof = checkBlockHeaderProof(MerkleProof.Companion.virtualize$default(companion, (Cell) list.get(0), 0, 2, null), shardBlock, true);
        Cell virtualize$default = MerkleProof.Companion.virtualize$default(companion, (Cell) list.get(1), 0, 2, null);
        BitString hash$default = Cell.DefaultImpls.hash$default(virtualize$default, 0, 1, null);
        if (!Intrinsics.areEqual(hash$default, checkBlockHeaderProof.getStateHash())) {
            throw new IllegalStateException(("Invalid state hash, expected: " + hash$default + ", actual: " + checkBlockHeaderProof.getStateHash()).toString());
        }
        ShardState loadTlb = ShardState.Companion.loadTlb(virtualize$default);
        Intrinsics.checkNotNull(loadTlb, "null cannot be cast to non-null type org.ton.block.ShardStateUnsplit");
        HashmapAugNode.AhmnLeaf ahmnLeaf = ((ShardStateUnsplit) loadTlb).getAccounts().getValue().m5155unboximpl().get(address.address());
        ShardAccount shardAccount = ahmnLeaf != null ? (ShardAccount) ahmnLeaf.getValue() : null;
        if (shardAccount == null) {
            throw new IllegalStateException(("Shard account " + address.address() + " not found in shard state").toString());
        } else if (!Intrinsics.areEqual(shardAccount.getAccount().hash(), Cell.DefaultImpls.hash$default(root, 0, 1, null))) {
            throw new IllegalStateException(("Account state hash mismatch, expected: " + shardAccount.getAccount().hash() + ", actual: " + Cell.DefaultImpls.hash$default(root, 0, 1, null)).toString());
        } else {
            return new FullAccountState(shardBlock, address, new TransactionId(shardAccount.getLastTransHash(), shardAccount.m5148getLastTransLtsVKNKU()), valueOf);
        }
    }
}
