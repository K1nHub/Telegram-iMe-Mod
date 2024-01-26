package org.ton.cell;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
/* compiled from: VirtualCell.kt */
/* loaded from: classes6.dex */
public final class VirtualCell implements Cell {
    private final Cell cell;
    private final int offset;

    @Override // org.ton.cell.Cell
    public BitString getBits() {
        return this.cell.getBits();
    }

    @Override // org.ton.cell.Cell
    public CellDescriptor getDescriptor() {
        return this.cell.getDescriptor();
    }

    @Override // org.ton.cell.Cell
    public CellType getType() {
        return this.cell.getType();
    }

    public String toString() {
        return this.cell.toString();
    }

    public VirtualCell(Cell cell, int i) {
        Intrinsics.checkNotNullParameter(cell, "cell");
        this.cell = cell;
        this.offset = i;
    }

    @Override // org.ton.cell.Cell
    public List<Cell> getRefs() {
        int collectionSizeOrDefault;
        List<Cell> refs = this.cell.getRefs();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(refs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Cell cell : refs) {
            arrayList.add(cell.virtualize(this.offset));
        }
        return arrayList;
    }

    @Override // org.ton.cell.Cell
    /* renamed from: getLevelMask-Kat384U */
    public int mo5373getLevelMaskKat384U() {
        return LevelMask.m5405virtualizespGXSBY(this.cell.mo5373getLevelMaskKat384U(), this.offset);
    }

    @Override // org.ton.cell.Cell
    public Cell virtualize(int i) {
        return this.offset == i ? this : new VirtualCell(this.cell, i);
    }

    @Override // org.ton.cell.Cell
    public BitString hash(int i) {
        return this.cell.hash(LevelMask.m5400getLevelimpl(LevelMask.m5393applyspGXSBY(mo5373getLevelMaskKat384U(), i)));
    }

    @Override // org.ton.cell.Cell
    public int depth(int i) {
        return this.cell.depth(LevelMask.m5400getLevelimpl(LevelMask.m5393applyspGXSBY(mo5373getLevelMaskKat384U(), i)));
    }

    @Override // org.ton.cell.Cell
    public CellSlice beginParse() {
        return CellSlice.Companion.beginParse(this);
    }
}
