package org.ton.cell;

import java.util.List;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
/* compiled from: PrunedBranchCell.kt */
/* loaded from: classes6.dex */
public final class PrunedBranchCell implements Cell {
    private final BitString bits;
    private final int depth;
    private final CellDescriptor descriptor;
    private final BitString hash;

    public PrunedBranchCell(BitString hash, int i, CellDescriptor descriptor, BitString bits) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(bits, "bits");
        this.hash = hash;
        this.depth = i;
        this.descriptor = descriptor;
        this.bits = bits;
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
        List<Cell> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // org.ton.cell.Cell
    public BitString hash(int i) {
        byte[] copyOfRange;
        int m5214getHashIndeximpl = LevelMask.m5214getHashIndeximpl(LevelMask.m5208applyspGXSBY(getDescriptor().mo5199getLevelMaskKat384U(), i));
        if (m5214getHashIndeximpl == LevelMask.m5215getLevelimpl(getDescriptor().mo5199getLevelMaskKat384U())) {
            return this.hash;
        }
        int i2 = (m5214getHashIndeximpl * 32) + 2;
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(BitString.DefaultImpls.toByteArray$default(getBits(), false, 1, null), i2, i2 + 32);
        return BitString.Companion.m43of(copyOfRange, copyOfRange.length * 8);
    }

    @Override // org.ton.cell.Cell
    public int depth(int i) {
        int m5214getHashIndeximpl = LevelMask.m5214getHashIndeximpl(LevelMask.m5208applyspGXSBY(getDescriptor().mo5199getLevelMaskKat384U(), i));
        if (m5214getHashIndeximpl == LevelMask.m5215getLevelimpl(getDescriptor().mo5199getLevelMaskKat384U())) {
            return this.depth;
        }
        int m5215getLevelimpl = (LevelMask.m5215getLevelimpl(getDescriptor().mo5199getLevelMaskKat384U()) * 32) + 2 + (m5214getHashIndeximpl * 2);
        byte[] byteArray$default = BitString.DefaultImpls.toByteArray$default(getBits(), false, 1, null);
        return (byteArray$default[m5215getLevelimpl + 1] & 255) | ((byteArray$default[m5215getLevelimpl] & 255) << 8);
    }

    @Override // org.ton.cell.Cell
    public Cell virtualize(int i) {
        return new VirtualCell(this, i);
    }

    public String toString() {
        return getType() + " x{" + getBits() + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrunedBranchCell) {
            return Intrinsics.areEqual(this.hash, ((PrunedBranchCell) obj).hash);
        }
        return false;
    }

    public int hashCode() {
        return this.hash.hashCode();
    }
}
