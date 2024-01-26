package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgDiscardFin.kt */
/* loaded from: classes6.dex */
public final class MsgDiscardFinTlbConstructor extends org.ton.tlb.TlbConstructor<MsgDiscardFin> {
    public static final MsgDiscardFinTlbConstructor INSTANCE = new MsgDiscardFinTlbConstructor();

    private MsgDiscardFinTlbConstructor() {
        super("msg_discard_fin$110 in_msg:^MsgEnvelope transaction_id:uint64 fwd_fee:Coins = InMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgDiscardFin value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getInMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5293getTransactionIdsVKNKU());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFee());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgDiscardFin loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        return new MsgDiscardFin(CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), cellSlice.mo5388loadUInt64sVKNKU(), Coins.Companion.loadTlb(cellSlice), null);
    }
}
