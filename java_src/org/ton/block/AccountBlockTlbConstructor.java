package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.HashUpdate;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAug;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: AccountBlock.kt */
/* loaded from: classes6.dex */
final class AccountBlockTlbConstructor extends org.ton.tlb.TlbConstructor<AccountBlock> {
    public static final AccountBlockTlbConstructor INSTANCE = new AccountBlockTlbConstructor();
    private static final TlbCodec<HashmapAug<CellRef<Transaction>, CurrencyCollection>> augDictionaryEdge = HashmapAug.Companion.tlbCodec(64, CellRef.Companion.tlbCodec(Transaction.Companion), CurrencyCollection.Companion);

    private AccountBlockTlbConstructor() {
        super("acc_trans#5 account_addr:bits256            transactions:(HashmapAug 64 ^Transaction CurrencyCollection)            state_update:^(HASH_UPDATE Account)          = AccountBlock", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccountBlock value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getAccountAddr());
        augDictionaryEdge.storeTlb(cellBuilder, value.getTransactions());
        cellBuilder.storeRef(value.getStateUpdate().toCell(HashUpdate.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccountBlock loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        HashUpdate.Companion companion = HashUpdate.Companion;
        return new AccountBlock(cellSlice.loadBits(256), augDictionaryEdge.loadTlb(cellSlice), CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion));
    }
}
