package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IhrPendingSince.kt */
/* loaded from: classes6.dex */
public final class IhrPendingSinceTlbConstructor extends org.ton.tlb.TlbConstructor<IhrPendingSince> {
    public static final IhrPendingSinceTlbConstructor INSTANCE = new IhrPendingSinceTlbConstructor();

    private IhrPendingSinceTlbConstructor() {
        super("ihr_pending$_ import_lt:uint64 = IhrPendingSince;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, IhrPendingSince value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.mo5378storeUInt64VKZWuLQ(value.m5283getImport_ltsVKNKU());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public IhrPendingSince loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new IhrPendingSince(cellSlice.mo5388loadUInt64sVKNKU(), null);
    }
}
