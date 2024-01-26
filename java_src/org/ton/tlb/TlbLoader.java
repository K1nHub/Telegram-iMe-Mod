package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellSlice;
/* compiled from: TlbCodec.kt */
/* loaded from: classes6.dex */
public interface TlbLoader<T> {
    T loadTlb(Cell cell);

    T loadTlb(CellSlice cellSlice);

    /* compiled from: TlbCodec.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> T loadTlb(TlbLoader<T> tlbLoader, Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return tlbLoader.loadTlb(cell.beginParse());
        }
    }
}
