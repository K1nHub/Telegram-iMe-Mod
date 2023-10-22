package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgDiscardTr.kt */
/* loaded from: classes6.dex */
public final class MsgDiscardTrTlbConstructor extends org.ton.tlb.TlbConstructor<MsgDiscardTr> {
    public static final MsgDiscardTrTlbConstructor INSTANCE = new MsgDiscardTrTlbConstructor();

    private MsgDiscardTrTlbConstructor() {
        super("msg_discard_tr$111 in_msg:^MsgEnvelope transaction_id:uint64 fwd_fee:Coins proof_delivered:^Cell = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgDiscardTr value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getInMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.mo5057storeUInt64VKZWuLQ(value.m4973getTransactionIdsVKNKU());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFee());
        cellBuilder.storeRef(value.getProofDelivered());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgDiscardTr loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        return new MsgDiscardTr(CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), cellSlice.mo5067loadUInt64sVKNKU(), Coins.Companion.loadTlb(cellSlice), cellSlice.loadRef(), null);
    }
}
