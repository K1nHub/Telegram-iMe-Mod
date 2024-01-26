package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.hashmap.HashmapAugE;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: BlockCreateStatsExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class BlockCreateStatsExt implements BlockCreateStats {
    private final HashmapAugE<CreatorStats, UInt> counters;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(HashmapAugE.class), new Annotation[]{new C7731xfa365a14("@type")})};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BlockCreateStatsExt) && Intrinsics.areEqual(this.counters, ((BlockCreateStatsExt) obj).counters);
    }

    public int hashCode() {
        return this.counters.hashCode();
    }

    public /* synthetic */ BlockCreateStatsExt(int i, HashmapAugE hashmapAugE, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, BlockCreateStatsExt$$serializer.INSTANCE.getDescriptor());
        }
        this.counters = hashmapAugE;
    }

    public BlockCreateStatsExt(HashmapAugE<CreatorStats, UInt> counters) {
        Intrinsics.checkNotNullParameter(counters, "counters");
        this.counters = counters;
    }

    public final HashmapAugE<CreatorStats, UInt> getCounters() {
        return this.counters;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: BlockCreateStatsExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<BlockCreateStatsExt> {
        private final /* synthetic */ BlockCreateStateExtTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockCreateStatsExt loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public BlockCreateStatsExt loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, BlockCreateStatsExt value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<BlockCreateStatsExt> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = BlockCreateStateExtTlbConstructor.INSTANCE;
        }

        public final KSerializer<BlockCreateStatsExt> serializer() {
            return BlockCreateStatsExt$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("block_create_stats_ext");
        open.field("counters", this.counters);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
