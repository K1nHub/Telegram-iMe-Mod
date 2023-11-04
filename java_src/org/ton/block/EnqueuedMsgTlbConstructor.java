package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EnqueuedMsg.kt */
/* loaded from: classes6.dex */
public final class EnqueuedMsgTlbConstructor extends org.ton.tlb.TlbConstructor<EnqueuedMsg> {
    public static final EnqueuedMsgTlbConstructor INSTANCE = new EnqueuedMsgTlbConstructor();

    private EnqueuedMsgTlbConstructor() {
        super("_ enqueued_lt:uint64 out_msg:^MsgEnvelope = EnqueuedMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, EnqueuedMsg value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5105getEnqueuedLtsVKNKU());
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public EnqueuedMsg loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        long mo5221loadUInt64sVKNKU = cellSlice.mo5221loadUInt64sVKNKU();
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        return new EnqueuedMsg(mo5221loadUInt64sVKNKU, CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), null);
    }
}
