package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.CurrencyCollection;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShardStateUnsplit.kt */
/* loaded from: classes6.dex */
public final class ShardStateUnsplitAuxTlbConstructor extends org.ton.tlb.TlbConstructor<ShardStateUnsplitAux> {
    public static final ShardStateUnsplitAuxTlbConstructor INSTANCE = new ShardStateUnsplitAuxTlbConstructor();
    private static final TlbCodec<HashMapE<LibDescr>> hashMapELibDesc = HashMapE.Companion.tlbCodec(256, LibDescr.Companion);
    private static final TlbCodec<Maybe<BlkMasterInfo>> maybeBlkMasterInfo = Maybe.Companion.tlbCodec(BlkMasterInfo.Companion);

    private ShardStateUnsplitAuxTlbConstructor() {
        super("[$_ overload_history:uint64 underload_history:uint64 total_balance:CurrencyCollection total_validator_fees:CurrencyCollection libraries:(HashmapE 256 LibDescr) master_ref:(Maybe BlkMasterInfo) ]", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ShardStateUnsplitAux value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        cellBuilder.storeUInt(value.m5201getOverloadHistorysVKNKU(), 64);
        cellBuilder.storeUInt(value.m5202getUnderloadHistorysVKNKU(), 64);
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        companion.storeTlb(cellBuilder, (CellBuilder) value.getTotalBalance());
        companion.storeTlb(cellBuilder, (CellBuilder) value.getTotalValidatorFees());
        hashMapELibDesc.storeTlb(cellBuilder, value.getLibraries());
        maybeBlkMasterInfo.storeTlb(cellBuilder, value.getMasterRef());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ShardStateUnsplitAux loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        long m1994constructorimpl = ULong.m1994constructorimpl(cellSlice.loadUInt(64).longValue());
        long m1994constructorimpl2 = ULong.m1994constructorimpl(cellSlice.loadUInt(64).longValue());
        CurrencyCollection.Companion companion = CurrencyCollection.Companion;
        return new ShardStateUnsplitAux(m1994constructorimpl, m1994constructorimpl2, companion.loadTlb(cellSlice), companion.loadTlb(cellSlice), hashMapELibDesc.loadTlb(cellSlice), maybeBlkMasterInfo.loadTlb(cellSlice), null);
    }
}
