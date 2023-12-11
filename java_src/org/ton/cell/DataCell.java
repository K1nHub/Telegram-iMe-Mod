package org.ton.cell;

import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
/* compiled from: DataCell.kt */
/* loaded from: classes6.dex */
public final class DataCell implements Cell {
    private final BitString bits;
    private final CellDescriptor descriptor;
    private final List<Pair<byte[], Integer>> hashes;
    private final List<Cell> refs;

    /* JADX WARN: Multi-variable type inference failed */
    public DataCell(CellDescriptor descriptor, BitString bits, List<? extends Cell> refs, List<Pair<byte[], Integer>> hashes) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(bits, "bits");
        Intrinsics.checkNotNullParameter(refs, "refs");
        Intrinsics.checkNotNullParameter(hashes, "hashes");
        this.descriptor = descriptor;
        this.bits = bits;
        this.refs = refs;
        this.hashes = hashes;
    }

    @Override // org.ton.cell.Cell
    public CellSlice beginParse() {
        return Cell.DefaultImpls.beginParse(this);
    }

    @Override // org.ton.cell.Cell
    /* renamed from: getLevelMask-Kat384U */
    public int mo5188getLevelMaskKat384U() {
        return Cell.DefaultImpls.m5189getLevelMaskKat384U(this);
    }

    @Override // org.ton.cell.Cell
    public CellType getType() {
        return Cell.DefaultImpls.getType(this);
    }

    @Override // org.ton.cell.Cell
    public CellDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // org.ton.cell.Cell
    public BitString getBits() {
        return this.bits;
    }

    @Override // org.ton.cell.Cell
    public List<Cell> getRefs() {
        return this.refs;
    }

    @Override // org.ton.cell.Cell
    public BitString hash(int i) {
        byte[] first = this.hashes.get(LevelMask.m5214getHashIndeximpl(LevelMask.m5208applyspGXSBY(mo5188getLevelMaskKat384U(), i))).getFirst();
        return BitString.Companion.m43of(first, first.length * 8);
    }

    @Override // org.ton.cell.Cell
    public int depth(int i) {
        return this.hashes.get(LevelMask.m5214getHashIndeximpl(LevelMask.m5208applyspGXSBY(mo5188getLevelMaskKat384U(), i))).getSecond().intValue();
    }

    @Override // org.ton.cell.Cell
    public Cell virtualize(int i) {
        return LevelMask.m5217isEmptyimpl(mo5188getLevelMaskKat384U()) ? this : new VirtualCell(this, i);
    }

    public String toString() {
        return Cell.Companion.toString(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DataCell) {
            DataCell dataCell = (DataCell) obj;
            if (Intrinsics.areEqual(getDescriptor(), dataCell.getDescriptor()) && Intrinsics.areEqual(getBits(), dataCell.getBits())) {
                return Intrinsics.areEqual(getRefs(), dataCell.getRefs());
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (((getDescriptor().hashCode() * 31) + getBits().hashCode()) * 31) + getRefs().hashCode();
    }
}
