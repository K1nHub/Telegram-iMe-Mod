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
/* compiled from: OldMcBlocksInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class OldMcBlocksInfo implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers = null;
    public static final Companion Companion = new Companion(null);
    private final HashmapAugE<KeyExtBlkRef, KeyMaxLt> value;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ OldMcBlocksInfo m5298boximpl(HashmapAugE hashmapAugE) {
        return new OldMcBlocksInfo(hashmapAugE);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m5300equalsimpl(HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE, Object obj) {
        return (obj instanceof OldMcBlocksInfo) && Intrinsics.areEqual(hashmapAugE, ((OldMcBlocksInfo) obj).m5305unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m5301equalsimpl0(HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE, HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE2) {
        return Intrinsics.areEqual(hashmapAugE, hashmapAugE2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m5302hashCodeimpl(HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE) {
        return hashmapAugE.hashCode();
    }

    public boolean equals(Object obj) {
        return m5300equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5302hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ HashmapAugE m5305unboximpl() {
        return this.value;
    }

    private /* synthetic */ OldMcBlocksInfo(HashmapAugE hashmapAugE) {
        this.value = hashmapAugE;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return m5303printimpl(this.value, printer);
    }

    /* renamed from: print-impl  reason: not valid java name */
    public static TlbPrettyPrinter m5303printimpl(HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE, TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        return hashmapAugE.print(printer);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m5304toStringimpl(HashmapAugE<KeyExtBlkRef, KeyMaxLt> hashmapAugE) {
        return TlbObject.DefaultImpls.print$default(m5298boximpl(hashmapAugE), null, 1, null).toString();
    }

    public String toString() {
        return m5304toStringimpl(this.value);
    }

    /* compiled from: OldMcBlocksInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<OldMcBlocksInfo> {
        private final /* synthetic */ OldMcBlocksInfoTlbCodec $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: loadTlb-a38pvyo  reason: not valid java name */
        public HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5308loadTlba38pvyo(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return ((OldMcBlocksInfo) this.$$delegate_0.loadTlb(cell)).m5305unboximpl();
        }

        /* renamed from: loadTlb-a38pvyo  reason: not valid java name */
        public HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5309loadTlba38pvyo(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.m5312loadTlba38pvyo(cellSlice);
        }

        /* renamed from: storeTlb-t0Hynxs  reason: not valid java name */
        public void m5310storeTlbt0Hynxs(CellBuilder cellBuilder, HashmapAugE<KeyExtBlkRef, KeyMaxLt> value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.m5313storeTlbt0Hynxs(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = OldMcBlocksInfoTlbCodec.INSTANCE;
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(Cell cell) {
            return OldMcBlocksInfo.m5298boximpl(m5308loadTlba38pvyo(cell));
        }

        @Override // org.ton.tlb.TlbLoader
        public /* bridge */ /* synthetic */ Object loadTlb(CellSlice cellSlice) {
            return OldMcBlocksInfo.m5298boximpl(m5309loadTlba38pvyo(cellSlice));
        }

        public final KSerializer<OldMcBlocksInfo> serializer() {
            return OldMcBlocksInfo$$serializer.INSTANCE;
        }

        @Override // org.ton.tlb.TlbStorer
        public /* bridge */ /* synthetic */ void storeTlb(CellBuilder cellBuilder, Object obj) {
            m5310storeTlbt0Hynxs(cellBuilder, ((OldMcBlocksInfo) obj).m5305unboximpl());
        }
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static HashmapAugE<KeyExtBlkRef, KeyMaxLt> m5299constructorimpl(HashmapAugE<KeyExtBlkRef, KeyMaxLt> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        $childSerializers = new KSerializer[]{new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7779xa42a768e("@type")})};
        return value;
    }
}
