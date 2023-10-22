package org.ton.tlb.constructor;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.tlb.TlbCodec;
/* compiled from: CellTlbConstructor.kt */
/* loaded from: classes6.dex */
public final class CellTlbConstructorKt {
    public static final TlbCodec<Cell> tlbCodec(Cell.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return CellTlbConstructor.INSTANCE;
    }

    public static final <T> TlbCodec<T> tlbCodec(Cell.Companion companion, TlbCodec<T> type) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return new CellReferencedTlbConstructor(type);
    }
}
