package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MerkleUpdate.kt */
/* loaded from: classes6.dex */
public final class MerkleUpdateTlbConstructor<X> extends org.ton.tlb.TlbConstructor<MerkleUpdate<X>> {
    private final TlbCodec<CellRef<X>> xCellRef;

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (MerkleUpdate) ((MerkleUpdate) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MerkleUpdateTlbConstructor(TlbCodec<X> x) {
        super("!merkle_update#04 {X:Type} old_hash:bits256 new_hash:bits256 old_depth:uint16 new_depth:uint16 old:^X new:^X = MERKLE_UPDATE X", null, 2, null);
        Intrinsics.checkNotNullParameter(x, "x");
        this.xCellRef = CellRef.Companion.tlbCodec(x);
    }

    public void storeTlb(CellBuilder cellBuilder, MerkleUpdate<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.setExotic(true);
        cellBuilder.storeBits(value.getOldHash());
        cellBuilder.storeBits(value.getNewHash());
        cellBuilder.mo5055storeUInt16xj2QHRw(value.m4971getOldDepthMh2AYeg());
        cellBuilder.mo5055storeUInt16xj2QHRw(value.m4970getNewDepthMh2AYeg());
        this.xCellRef.storeTlb(cellBuilder, value.getOld());
        this.xCellRef.storeTlb(cellBuilder, value.getNew());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public MerkleUpdate<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new MerkleUpdate<>(cellSlice.loadBits(256), cellSlice.loadBits(256), cellSlice.mo5065loadUInt16Mh2AYeg(), cellSlice.mo5065loadUInt16Mh2AYeg(), this.xCellRef.loadTlb(cellSlice), this.xCellRef.loadTlb(cellSlice), null);
    }
}
