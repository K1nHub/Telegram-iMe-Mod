package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComputeSkipReason.kt */
/* loaded from: classes6.dex */
public final class ComputeSkipReasonBadStateTlbConstructor extends org.ton.tlb.TlbConstructor<ComputeSkipReason> {
    public static final ComputeSkipReasonBadStateTlbConstructor INSTANCE = new ComputeSkipReasonBadStateTlbConstructor();

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ComputeSkipReason value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    private ComputeSkipReasonBadStateTlbConstructor() {
        super("cskip_bad_state$01 = ComputeSkipReason;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ComputeSkipReason loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return ComputeSkipReason.BAD_STATE;
    }
}
