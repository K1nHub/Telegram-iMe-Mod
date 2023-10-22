package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: HashUpdate.kt */
/* loaded from: classes6.dex */
final class HashUpdateTlbConstructor extends org.ton.tlb.TlbConstructor<HashUpdate> {
    public static final HashUpdateTlbConstructor INSTANCE = new HashUpdateTlbConstructor();

    private HashUpdateTlbConstructor() {
        super("update_hashes#72 {X:Type} old_hash:bits256 new_hash:bits256 = HASH_UPDATE X;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, HashUpdate value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getOldHash());
        cellBuilder.storeBits(value.getNewHash());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HashUpdate loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new HashUpdate(cellSlice.loadBits(256), cellSlice.loadBits(256));
    }
}
