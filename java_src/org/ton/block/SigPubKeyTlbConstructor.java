package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
/* compiled from: SigPubKey.kt */
/* loaded from: classes6.dex */
final class SigPubKeyTlbConstructor extends org.ton.tlb.TlbConstructor<SigPubKey> {
    public static final SigPubKeyTlbConstructor INSTANCE = new SigPubKeyTlbConstructor();

    private SigPubKeyTlbConstructor() {
        super("ed25519_pubkey#8e81278a pubkey:bits256 = SigPubKey;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, SigPubKey value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeBits(value.getPubkey());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public SigPubKey loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new SigPubKey(cellSlice.loadBits(256));
    }
}
