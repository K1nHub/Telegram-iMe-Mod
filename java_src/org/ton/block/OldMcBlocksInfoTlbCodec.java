package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OldMcBlocksInfo.kt */
/* loaded from: classes6.dex */
public final class OldMcBlocksInfoTlbCodec implements TlbCodec<OldMcBlocksInfo> {
    public static final OldMcBlocksInfoTlbCodec INSTANCE = new OldMcBlocksInfoTlbCodec();
    private static final TlbCodec<HashmapAugE<KeyExtBlkRef, KeyMaxLt>> codec = HashmapAugE.Companion.tlbCodec(32, KeyExtBlkRef.Companion, KeyMaxLt.Companion);

    private OldMcBlocksInfoTlbCodec() {
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
        return OldMcBlocksInfo.m5131boximpl(m5144loadTlba38pvyo(cell));
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
        return OldMcBlocksInfo.m5131boximpl(m5145loadTlba38pvyo(cellSlice));
    }

    /* renamed from: loadTlb-a38pvyo  reason: not valid java name */
    public HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5144loadTlba38pvyo(Cell cell) {
        return ((OldMcBlocksInfo) TlbCodec.DefaultImpls.loadTlb(this, cell)).m5138unboximpl();
    }

    @Override // org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        m5146storeTlbt0Hynxs(cellBuilder, ((OldMcBlocksInfo) obj).m5138unboximpl());
    }

    /* renamed from: storeTlb-t0Hynxs  reason: not valid java name */
    public void m5146storeTlbt0Hynxs(CellBuilder cellBuilder, HashmapAugE<KeyExtBlkRef, KeyMaxLt> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        codec.storeTlb(cellBuilder, value);
    }

    /* renamed from: loadTlb-a38pvyo  reason: not valid java name */
    public HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5145loadTlba38pvyo(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return OldMcBlocksInfo.m5132constructorimpl(codec.loadTlb(cellSlice));
    }
}
