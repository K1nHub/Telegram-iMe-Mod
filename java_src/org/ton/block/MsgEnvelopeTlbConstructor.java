package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.IntermediateAddress;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgEnvelope.kt */
/* loaded from: classes6.dex */
public final class MsgEnvelopeTlbConstructor extends org.ton.tlb.TlbConstructor<MsgEnvelope> {
    public static final MsgEnvelopeTlbConstructor INSTANCE = new MsgEnvelopeTlbConstructor();

    private MsgEnvelopeTlbConstructor() {
        super("msg_envelope#4 cur_addr:IntermediateAddress next_addr:IntermediateAddress fwd_fee_remaining:Coins msg:^(Message Any) = MsgEnvelope;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgEnvelope value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        IntermediateAddress.Companion companion = IntermediateAddress.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getCurAddr());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getNextAddr());
        Coins.Companion.storeTlb(cellBuilder, (CellBuilder) value.getFwdFeeRemaining());
        cellBuilder.storeRef(value.getMsg().toCell(Message.Companion.getAny()));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgEnvelope loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        IntermediateAddress.Companion companion = IntermediateAddress.Companion;
        org.ton.tlb.TlbConstructor<Message<Cell>> any = Message.Companion.getAny();
        return new MsgEnvelope(companion.loadTlb(cellSlice), companion.loadTlb(cellSlice), Coins.Companion.loadTlb(cellSlice), CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) any));
    }
}
