package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccStatusChange.kt */
/* loaded from: classes6.dex */
public final class AccStatusChangeFrozenTlbConstructor extends org.ton.tlb.TlbConstructor<AccStatusChange> {
    public static final AccStatusChangeFrozenTlbConstructor INSTANCE = new AccStatusChangeFrozenTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, AccStatusChange value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private AccStatusChangeFrozenTlbConstructor() {
        super("acst_frozen$10 = AccStatusChange;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public AccStatusChange loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return AccStatusChange.FROZEN;
    }
}
