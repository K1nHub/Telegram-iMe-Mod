package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: McBlockExtra.kt */
/* loaded from: classes6.dex */
final class McBlockExtraAuxTlbConstructor extends org.ton.tlb.TlbConstructor<McBlockExtraAux> {
    public static final McBlockExtraAuxTlbConstructor INSTANCE = new McBlockExtraAuxTlbConstructor();
    private static final TlbCodec<HashMapE<CryptoSignaturePair>> HashMapE16CryptoSignaturePair = HashMapE.Companion.tlbCodec(16, CryptoSignaturePair.Companion);
    private static final TlbCodec<Maybe<CellRef<InMsg>>> MaybeInMsg = Maybe.Companion.tlbCodec(CellRef.Companion.tlbCodec(InMsg.Companion));

    private McBlockExtraAuxTlbConstructor() {
        super("$_ prev_blk_signatures:(HashmapE 16 CryptoSignaturePair) recover_create_msg:(Maybe ^InMsg) mint_msg:(Maybe ^InMsg)", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public McBlockExtraAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbCodec<Maybe<CellRef<InMsg>>> tlbCodec = MaybeInMsg;
        return new McBlockExtraAux(HashMapE16CryptoSignaturePair.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice), tlbCodec.loadTlb(cellSlice));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, McBlockExtraAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        HashMapE16CryptoSignaturePair.storeTlb(cellBuilder, value.getPrevBlkSignatures());
        TlbCodec<Maybe<CellRef<InMsg>>> tlbCodec = MaybeInMsg;
        tlbCodec.storeTlb(cellBuilder, value.getRecoverCreateMsg());
        tlbCodec.storeTlb(cellBuilder, value.getMintMsg());
    }
}
