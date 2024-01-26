package org.ton.boc;

import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
/* compiled from: BagOfCells.kt */
/* loaded from: classes6.dex */
public final class BagOfCellsKt {
    public static final BagOfCells BagOfCells(byte[] byteArray) {
        Intrinsics.checkNotNullParameter(byteArray, "byteArray");
        return BagOfCells.Companion.m33of(byteArray);
    }

    public static final BagOfCells BagOfCells(Collection<? extends Cell> roots) {
        Intrinsics.checkNotNullParameter(roots, "roots");
        return BagOfCells.Companion.m34of(roots);
    }

    public static final BagOfCells BagOfCells(Cell... roots) {
        Intrinsics.checkNotNullParameter(roots, "roots");
        return BagOfCells.Companion.m32of((Cell[]) Arrays.copyOf(roots, roots.length));
    }
}
