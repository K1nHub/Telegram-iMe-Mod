package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardAccounts.kt */
/* loaded from: classes6.dex */
public final class ShardAccountsTlbCodec implements TlbCodec<ShardAccounts> {
    public static final ShardAccountsTlbCodec INSTANCE = new ShardAccountsTlbCodec();
    private static final TlbCodec<HashmapAugE<ShardAccount, DepthBalanceInfo>> codec = HashmapAugE.Companion.tlbCodec(256, ShardAccount.Companion, DepthBalanceInfo.Companion);

    private ShardAccountsTlbCodec() {
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
        return ShardAccounts.m5316boximpl(m5328loadTlb63rkgx0(cell));
    }

    @Override // org.ton.tlb.TlbLoader
    public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
        return ShardAccounts.m5316boximpl(m5329loadTlb63rkgx0(cellSlice));
    }

    /* renamed from: loadTlb-63rkgx0  reason: not valid java name */
    public HashmapAugE<ShardAccount, DepthBalanceInfo> m5328loadTlb63rkgx0(Cell cell) {
        return ((ShardAccounts) TlbCodec.DefaultImpls.loadTlb(this, cell)).m5322unboximpl();
    }

    @Override // org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        m5330storeTlbo4VblW0(cellBuilder, ((ShardAccounts) obj).m5322unboximpl());
    }

    /* renamed from: storeTlb-o4VblW0  reason: not valid java name */
    public void m5330storeTlbo4VblW0(CellBuilder cellBuilder, HashmapAugE<ShardAccount, DepthBalanceInfo> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        codec.storeTlb(cellBuilder, value);
    }

    /* renamed from: loadTlb-63rkgx0  reason: not valid java name */
    public HashmapAugE<ShardAccount, DepthBalanceInfo> m5329loadTlb63rkgx0(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return ShardAccounts.m5317constructorimpl(codec.loadTlb(cellSlice));
    }
}
