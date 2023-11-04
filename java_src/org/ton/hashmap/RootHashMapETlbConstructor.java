package org.ton.hashmap;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HmeRoot.kt */
/* loaded from: classes6.dex */
public final class RootHashMapETlbConstructor<X> extends TlbConstructor<HmeRoot<X>> {

    /* renamed from: ID */
    private static final BitString f2096ID;
    private final TlbCodec<CellRef<HmEdge<X>>> cellRef;

    static {
        new Companion(null);
        f2096ID = BitString.Companion.m42of(Arrays.copyOf(new boolean[]{true}, 1));
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
    public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
        storeTlb(cellBuilder, (HmeRoot) ((HmeRoot) obj));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RootHashMapETlbConstructor(int i, TlbCodec<X> x) {
        super("hme_root$1 {n:#} {X:Type} root:^(Hashmap n X) = HashmapE n X;", f2096ID);
        Intrinsics.checkNotNullParameter(x, "x");
        this.cellRef = CellRef.Companion.tlbCodec(HmEdge.Companion.tlbCodec(i, x));
    }

    public void storeTlb(CellBuilder cellBuilder, HmeRoot<X> value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.cellRef.storeTlb(cellBuilder, value.getRoot());
    }

    @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
    public HmeRoot<X> loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return new HmeRoot<>(this.cellRef.loadTlb(cellSlice));
    }

    /* compiled from: HmeRoot.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
