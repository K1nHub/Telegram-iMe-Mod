package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: ShardAccounts.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardAccounts implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers = null;
    public static final Companion Companion = new Companion(null);

    /* renamed from: x */
    private final HashmapAugE<ShardAccount, DepthBalanceInfo> f2036x;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ShardAccounts m4995boximpl(HashmapAugE hashmapAugE) {
        return new ShardAccounts(hashmapAugE);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4997equalsimpl(HashmapAugE<ShardAccount, DepthBalanceInfo> hashmapAugE, Object obj) {
        return (obj instanceof ShardAccounts) && Intrinsics.areEqual(hashmapAugE, ((ShardAccounts) obj).m5001unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4998hashCodeimpl(HashmapAugE<ShardAccount, DepthBalanceInfo> hashmapAugE) {
        return hashmapAugE.hashCode();
    }

    public boolean equals(Object obj) {
        return m4997equalsimpl(this.f2036x, obj);
    }

    public int hashCode() {
        return m4998hashCodeimpl(this.f2036x);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ HashmapAugE m5001unboximpl() {
        return this.f2036x;
    }

    private /* synthetic */ ShardAccounts(HashmapAugE hashmapAugE) {
        this.f2036x = hashmapAugE;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return m4999printimpl(this.f2036x, printer);
    }

    /* renamed from: print-impl  reason: not valid java name */
    public static TlbPrettyPrinter m4999printimpl(HashmapAugE<ShardAccount, DepthBalanceInfo> hashmapAugE, TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return hashmapAugE.print(printer);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m5000toStringimpl(HashmapAugE<ShardAccount, DepthBalanceInfo> hashmapAugE) {
        return TlbObject.DefaultImpls.print$default(m4995boximpl(hashmapAugE), null, 1, null).toString();
    }

    public String toString() {
        return m5000toStringimpl(this.f2036x);
    }

    /* compiled from: ShardAccounts.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<ShardAccounts> {
        private final /* synthetic */ ShardAccountsTlbCodec $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: loadTlb-63rkgx0  reason: not valid java name */
        public HashmapAugE<ShardAccount, DepthBalanceInfo> m5004loadTlb63rkgx0(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return ((ShardAccounts) this.$$delegate_0.loadTlb(cell)).m5001unboximpl();
        }

        /* renamed from: loadTlb-63rkgx0  reason: not valid java name */
        public HashmapAugE<ShardAccount, DepthBalanceInfo> m5005loadTlb63rkgx0(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.m5008loadTlb63rkgx0(cellSlice);
        }

        /* renamed from: storeTlb-o4VblW0  reason: not valid java name */
        public void m5006storeTlbo4VblW0(CellBuilder cellBuilder, HashmapAugE<ShardAccount, DepthBalanceInfo> value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.m5009storeTlbo4VblW0(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = ShardAccountsTlbCodec.INSTANCE;
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
            return ShardAccounts.m4995boximpl(m5004loadTlb63rkgx0(cell));
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
            return ShardAccounts.m4995boximpl(m5005loadTlb63rkgx0(cellSlice));
        }

        public final KSerializer<ShardAccounts> serializer() {
            return ShardAccounts$$serializer.INSTANCE;
        }

        @Override // org.ton.tlb.TlbStorer
        public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
            m5006storeTlbo4VblW0(cellBuilder, ((ShardAccounts) obj).m5001unboximpl());
        }
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static HashmapAugE<ShardAccount, DepthBalanceInfo> m4996constructorimpl(HashmapAugE<ShardAccount, DepthBalanceInfo> x) {
        Intrinsics.checkNotNullParameter(x, "x");
        $childSerializers = new KSerializer[]{new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7519x4bb504db("@type")})};
        return x;
    }
}
