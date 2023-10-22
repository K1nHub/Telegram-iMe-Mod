package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MsgExportDeqShort.kt */
/* loaded from: classes6.dex */
public final class MsgExportDeqShortTlbConstructor extends org.ton.tlb.TlbConstructor<MsgExportDeqShort> {
    public static final MsgExportDeqShortTlbConstructor INSTANCE = new MsgExportDeqShortTlbConstructor();

    private MsgExportDeqShortTlbConstructor() {
        super("msg_export_deq_short$1101 msg_env_hash:bits256 next_workchain:int32 next_addr_pfx:uint64 import_block_lt:uint64 = OutMsg;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, MsgExportDeqShort value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getMsgEnvHash());
        cellBuilder.storeInt(value.getNextWorkchain(), 32);
        cellBuilder.mo5057storeUInt64VKZWuLQ(value.m4976getNextAddrPfxsVKNKU());
        cellBuilder.mo5057storeUInt64VKZWuLQ(value.m4975getImportBlockLtsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MsgExportDeqShort loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new MsgExportDeqShort(cellSlice.loadBits(256), (int) cellSlice.loadTinyInt(32), cellSlice.mo5067loadUInt64sVKNKU(), cellSlice.mo5067loadUInt64sVKNKU(), null);
    }
}
