package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.block.AccountStatus;
import org.ton.block.TransactionAux;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Transaction.kt */
/* loaded from: classes6.dex */
public final class TransactionTlConstructor extends org.ton.tlb.TlbConstructor<Transaction> {
    public static final TransactionTlConstructor INSTANCE = new TransactionTlConstructor();

    private TransactionTlConstructor() {
        super("transaction$0111   account_addr:bits256   lt:uint64   prev_trans_hash:bits256   prev_trans_lt:uint64   now:uint32   outmsg_cnt:uint15   orig_status:AccountStatus   end_status:AccountStatus   ^[ in_msg:(Maybe ^(Message Any)) out_msgs:(HashmapE 15 ^(Message Any)) ]   total_fees:CurrencyCollection state_update:^(HASH_UPDATE Account)   description:^TransactionDescr = Transaction;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Transaction loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        BitString loadBits = cellSlice.loadBits(256);
        long mo5203loadUInt64sVKNKU = cellSlice.mo5203loadUInt64sVKNKU();
        BitString loadBits2 = cellSlice.loadBits(256);
        long mo5203loadUInt64sVKNKU2 = cellSlice.mo5203loadUInt64sVKNKU();
        int mo5202loadUInt32pVg5ArA = cellSlice.mo5202loadUInt32pVg5ArA();
        int intValue = cellSlice.loadUInt(15).intValue();
        AccountStatus.Companion companion = AccountStatus.Companion;
        AccountStatus loadTlb = companion.loadTlb(cellSlice);
        AccountStatus loadTlb2 = companion.loadTlb(cellSlice);
        TransactionAux.Companion companion2 = TransactionAux.Companion;
        Cell loadRef = cellSlice.loadRef();
        CellRef.Companion companion3 = CellRef.Companion;
        return new Transaction(loadBits, mo5203loadUInt64sVKNKU, loadBits2, mo5203loadUInt64sVKNKU2, mo5202loadUInt32pVg5ArA, intValue, loadTlb, loadTlb2, companion3.valueOf(loadRef, (TlbCodec) companion2), CurrencyCollection.Companion.loadTlb(cellSlice), companion3.valueOf(cellSlice.loadRef(), (TlbCodec) HashUpdate.Companion), companion3.valueOf(cellSlice.loadRef(), (TlbCodec) TransactionDescr.Companion), null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Transaction value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.accountAddr());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.m36lt());
        cellBuilder.storeBits(value.prevTransHash());
        cellBuilder.mo5193storeUInt64VKZWuLQ(value.prevTransLt());
        cellBuilder.mo5192storeUInt32WZ4Q5Ns(value.now());
        cellBuilder.storeUInt(value.outMsgCnt(), 15);
        AccountStatus.Companion companion = AccountStatus.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.origStatus());
        companion.storeTlb(cellBuilder, (CellBuilder) value.endStatus());
        cellBuilder.storeRef(value.m35r1().toCell(TransactionAux.Companion));
        CurrencyCollection.Companion.storeTlb(cellBuilder, (CellBuilder) value.totalFees());
        cellBuilder.storeRef(value.stateUpdate().toCell(HashUpdate.Companion));
        cellBuilder.storeRef(value.description().toCell(TransactionDescr.Companion));
    }
}
