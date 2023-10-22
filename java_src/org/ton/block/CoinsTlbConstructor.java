package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Coins.kt */
/* loaded from: classes6.dex */
public final class CoinsTlbConstructor extends org.ton.tlb.TlbConstructor<Coins> {
    public static final CoinsTlbConstructor INSTANCE = new CoinsTlbConstructor();
    private static final TlbCodec<VarUInteger> varUIntegerCodec = VarUInteger.Companion.tlbCodec(16);

    private CoinsTlbConstructor() {
        super("nanocoins$_ amount:(VarUInteger 16) = Coins;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, Coins value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        varUIntegerCodec.storeTlb(cellBuilder, value.amount());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public Coins loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new Coins(varUIntegerCodec.loadTlb(cellSlice));
    }
}
