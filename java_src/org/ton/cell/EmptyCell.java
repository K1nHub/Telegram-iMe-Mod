package org.ton.cell;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.crypto.HexKt;
/* compiled from: EmptyCell.kt */
/* loaded from: classes6.dex */
public final class EmptyCell implements Cell {
    private static final BitString EMPTY_CELL_HASH;
    public static final EmptyCell INSTANCE = new EmptyCell();
    private static final BitString bits;
    private static final CellDescriptor descriptor;
    private static final List<Cell> refs;

    @Override // org.ton.cell.Cell
    public int depth(int i) {
        return 0;
    }

    public String toString() {
        return "x{}";
    }

    @Override // org.ton.cell.Cell
    public Cell virtualize(int i) {
        return this;
    }

    private EmptyCell() {
    }

    @Override // org.ton.cell.Cell
    public CellSlice beginParse() {
        return Cell.DefaultImpls.beginParse(this);
    }

    @Override // org.ton.cell.Cell
    /* renamed from: getLevelMask-Kat384U */
    public int mo5206getLevelMaskKat384U() {
        return Cell.DefaultImpls.m5207getLevelMaskKat384U(this);
    }

    @Override // org.ton.cell.Cell
    public CellType getType() {
        return Cell.DefaultImpls.getType(this);
    }

    static {
        List<Cell> emptyList;
        byte[] hex = HexKt.hex("96a296d224f285c67bee93c30f8a309157f0daa35dc5b87e410b78630a09cfc7");
        BitString.Companion companion = BitString.Companion;
        EMPTY_CELL_HASH = companion.m43of(hex, hex.length * 8);
        bits = companion.empty();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        refs = emptyList;
        descriptor = CellDescriptor.Companion.fromBytes((byte) 0, (byte) 0);
    }

    @Override // org.ton.cell.Cell
    public BitString getBits() {
        return bits;
    }

    @Override // org.ton.cell.Cell
    public List<Cell> getRefs() {
        return refs;
    }

    @Override // org.ton.cell.Cell
    public CellDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // org.ton.cell.Cell
    public BitString hash(int i) {
        return EMPTY_CELL_HASH;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Cell) {
            return Intrinsics.areEqual(getDescriptor(), ((Cell) obj).getDescriptor());
        }
        return false;
    }
}
