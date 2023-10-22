package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: ShardHashes.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardHashes implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers = null;
    public static final Companion Companion = new Companion(null);
    private final HashMapE<CellRef<BinTree<ShardDescr>>> value;

    /* renamed from: box-impl */
    public static final /* synthetic */ ShardHashes m5026boximpl(HashMapE hashMapE) {
        return new ShardHashes(hashMapE);
    }

    /* renamed from: equals-impl */
    public static boolean m5028equalsimpl(HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE, Object obj) {
        return (obj instanceof ShardHashes) && Intrinsics.areEqual(hashMapE, ((ShardHashes) obj).m5033unboximpl());
    }

    /* renamed from: equals-impl0 */
    public static final boolean m5029equalsimpl0(HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE, HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE2) {
        return Intrinsics.areEqual(hashMapE, hashMapE2);
    }

    /* renamed from: hashCode-impl */
    public static int m5030hashCodeimpl(HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE) {
        return hashMapE.hashCode();
    }

    public boolean equals(Object obj) {
        return m5028equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5030hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ HashMapE m5033unboximpl() {
        return this.value;
    }

    private /* synthetic */ ShardHashes(HashMapE hashMapE) {
        this.value = hashMapE;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return m5031printimpl(this.value, printer);
    }

    /* renamed from: print-impl */
    public static TlbPrettyPrinter m5031printimpl(HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE, TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return hashMapE.print(printer);
    }

    /* renamed from: toString-impl */
    public static String m5032toStringimpl(HashMapE<CellRef<? extends BinTree<ShardDescr>>> hashMapE) {
        return TlbObject.DefaultImpls.print$default(m5026boximpl(hashMapE), null, 1, null).toString();
    }

    public String toString() {
        return m5032toStringimpl(this.value);
    }

    /* compiled from: ShardHashes.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ShardHashes> {
        private final /* synthetic */ ShardHashesTlbCodec $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: loadTlb-nCYawEE */
        public HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5036loadTlbnCYawEE(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return ((ShardHashes) this.$$delegate_0.loadTlb(cell)).m5033unboximpl();
        }

        /* renamed from: loadTlb-nCYawEE */
        public HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5037loadTlbnCYawEE(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.m5040loadTlbnCYawEE(cellSlice);
        }

        /* renamed from: storeTlb-ZFAh1YI */
        public void m5038storeTlbZFAh1YI(CellBuilder cellBuilder, HashMapE<CellRef<? extends BinTree<ShardDescr>>> value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.m5041storeTlbZFAh1YI(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = ShardHashesTlbCodec.INSTANCE;
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
            return ShardHashes.m5026boximpl(m5036loadTlbnCYawEE(cell));
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
            return ShardHashes.m5026boximpl(m5037loadTlbnCYawEE(cellSlice));
        }

        public final KSerializer<ShardHashes> serializer() {
            return ShardHashes$$serializer.INSTANCE;
        }

        @Override // org.ton.tlb.TlbStorer
        public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
            m5038storeTlbZFAh1YI(cellBuilder, ((ShardHashes) obj).m5033unboximpl());
        }
    }

    /* renamed from: constructor-impl */
    public static HashMapE<CellRef<? extends BinTree<ShardDescr>>> m5027constructorimpl(HashMapE<CellRef<BinTree<ShardDescr>>> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        $childSerializers = new KSerializer[]{new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{HmeEmpty.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), HmeRoot.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7521xdec07ac5("@type")})};
        return value;
    }
}
