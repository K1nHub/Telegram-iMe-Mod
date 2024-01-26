package org.ton.hashmap;

import java.util.Arrays;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HashMapE.kt */
/* loaded from: classes6.dex */
public final class HashMapETlbCombinator<X> extends TlbCombinator<HashMapE<?>> {

    /* compiled from: HashMapE.kt */
    /* loaded from: classes6.dex */
    private static final class EmptyHashMapETlbConstructor extends TlbConstructor<HmeEmpty<?>> {
        public static final EmptyHashMapETlbConstructor INSTANCE = new EmptyHashMapETlbConstructor();

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, HmeEmpty<?> value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
        }

        private EmptyHashMapETlbConstructor() {
            super("hme_empty$0 {n:#} {X:Type} = HashmapE n X;", BitString.Companion.m42of(Arrays.copyOf(new boolean[]{false}, 1)));
        }

        @Override // org.ton.tlb.TlbConstructor, org.ton.tlb.TlbLoader
        public HmeEmpty<?> loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return new HmeEmpty<>();
        }
    }

    public /* synthetic */ HashMapETlbCombinator(int i, TlbCodec tlbCodec, TlbConstructor<HmeRoot<X>> tlbConstructor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, tlbCodec, (i2 & 4) != 0 ? HmeRoot.Companion.tlbConstructor(i, tlbCodec) : tlbConstructor);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashMapETlbCombinator(int i, TlbCodec<X> x, TlbConstructor<HmeRoot<X>> root) {
        super(Reflection.getOrCreateKotlinClass(HashMapE.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(HmeEmpty.class), EmptyHashMapETlbConstructor.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(HmeRoot.class), root));
        Intrinsics.checkNotNullParameter(x, "x");
        Intrinsics.checkNotNullParameter(root, "root");
    }
}
