package org.ton.block;

import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GlobalVersion.kt */
/* loaded from: classes6.dex */
public final class GlobalVersionTlbConstructor extends org.ton.tlb.TlbConstructor<GlobalVersion> {
    public static final GlobalVersionTlbConstructor INSTANCE = new GlobalVersionTlbConstructor();

    private GlobalVersionTlbConstructor() {
        super("capabilities#c4 version:uint32 capabilities:uint64 = GlobalVersion;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, GlobalVersion value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUInt(value.m5282getVersionpVg5ArA(), 32);
        cellBuilder.storeUInt(value.m5281getCapabilitiessVKNKU(), 64);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public GlobalVersion loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new GlobalVersion(UInt.m1975constructorimpl(cellSlice.loadUInt(32).intValue()), ULong.m1997constructorimpl(cellSlice.loadUInt(64).longValue()), null);
    }
}
