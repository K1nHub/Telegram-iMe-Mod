package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProcessedUpto.kt */
/* loaded from: classes6.dex */
public final class ProcessedUptoTlbConstructor extends org.ton.tlb.TlbConstructor<ProcessedUpto> {
    public static final ProcessedUptoTlbConstructor INSTANCE = new ProcessedUptoTlbConstructor();

    private ProcessedUptoTlbConstructor() {
        super("processed_upto$_ last_msg_lt:uint64 last_msg_hash:bits256 = ProcessedUpto;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ProcessedUpto value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5211storeUInt64VKZWuLQ(value.m5147getLastMsgLtsVKNKU());
        cellBuilder.storeBits(value.getLastMsgHash());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ProcessedUpto loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ProcessedUpto(cellSlice.mo5221loadUInt64sVKNKU(), cellSlice.loadBits(256), null);
    }
}
