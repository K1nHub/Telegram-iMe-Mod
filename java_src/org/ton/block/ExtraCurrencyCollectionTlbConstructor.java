package org.ton.block;

import kotlin.jvm.internal.Intrinsics;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.tlb.TlbCodec;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExtraCurrencyCollection.kt */
/* loaded from: classes6.dex */
public final class ExtraCurrencyCollectionTlbConstructor extends org.ton.tlb.TlbConstructor<ExtraCurrencyCollection> {
    public static final ExtraCurrencyCollectionTlbConstructor INSTANCE = new ExtraCurrencyCollectionTlbConstructor();
    private static final TlbCodec<HashMapE<VarUInteger>> hashMapE32Codec = HashMapE.Companion.tlbCodec(32, VarUInteger.Companion.tlbCodec(32));

    private ExtraCurrencyCollectionTlbConstructor() {
        super("extra_currencies$_ dict:(HashmapE 32 (VarUInteger 32)) = ExtraCurrencyCollection;", null, 2, null);
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, ExtraCurrencyCollection value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        hashMapE32Codec.storeTlb(cellBuilder, value.dict());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public ExtraCurrencyCollection loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new ExtraCurrencyCollection(hashMapE32Codec.loadTlb(cellSlice));
    }
}
