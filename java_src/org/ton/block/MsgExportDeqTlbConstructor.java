package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.MsgEnvelope;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgExportDeq.kt */
/* loaded from: classes6.dex */
public final class MsgExportDeqTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportDeq> {
    public static final MsgExportDeqTlbConstructor INSTANCE = new MsgExportDeqTlbConstructor();

    private MsgExportDeqTlbConstructor() {
        super("msg_export_deq$1100 out_msg:^MsgEnvelope import_block_lt:uint63 = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportDeq value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeRef(value.getOutMsg().toCell(MsgEnvelope.Companion));
        cellBuilder.storeUInt(value.m5128getImportBlockLtsVKNKU(), 63);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportDeq loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        MsgEnvelope.Companion companion = MsgEnvelope.Companion;
        return new MsgExportDeq(CellRef.Companion.valueOf(cellSlice.loadRef(), (TlbCodec) companion), ULong.m1994constructorimpl(cellSlice.loadUInt(63).longValue()), null);
    }
}
