package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtBlkRef.kt */
/* loaded from: classes6.dex */
public final class ExtBlkRefTlbConstructor extends org.ton.tlb.TlbConstructor<ExtBlkRef> {
    public static final ExtBlkRefTlbConstructor INSTANCE = new ExtBlkRefTlbConstructor();

    private ExtBlkRefTlbConstructor() {
        super("ext_blk_ref$_ end_lt:uint64 seq_no:uint32 root_hash:bits256 file_hash:bits256 = ExtBlkRef;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ExtBlkRef value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5273getEndLtsVKNKU());
        cellBuilder.mo5377storeUInt32WZ4Q5Ns(value.m5274getSeqNopVg5ArA());
        cellBuilder.storeBits(value.getRootHash());
        cellBuilder.storeBits(value.getFileHash());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ExtBlkRef loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ExtBlkRef(cellSlice.mo5388loadUInt64sVKNKU(), cellSlice.mo5387loadUInt32pVg5ArA(), cellSlice.loadBits(256), cellSlice.loadBits(256), null);
    }
}
