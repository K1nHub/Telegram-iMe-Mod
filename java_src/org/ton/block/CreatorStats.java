package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: CreatorStats.kt */
@Serializable
/* loaded from: classes6.dex */
public final class CreatorStats implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final Counters mcBlocks;
    private final Counters shardBlocks;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreatorStats) {
            CreatorStats creatorStats = (CreatorStats) obj;
            return Intrinsics.areEqual(this.mcBlocks, creatorStats.mcBlocks) && Intrinsics.areEqual(this.shardBlocks, creatorStats.shardBlocks);
        }
        return false;
    }

    public int hashCode() {
        return (this.mcBlocks.hashCode() * 31) + this.shardBlocks.hashCode();
    }

    public /* synthetic */ CreatorStats(int i, Counters counters, Counters counters2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CreatorStats$$serializer.INSTANCE.getDescriptor());
        }
        this.mcBlocks = counters;
        this.shardBlocks = counters2;
    }

    public CreatorStats(Counters mcBlocks, Counters shardBlocks) {
        Intrinsics.checkNotNullParameter(mcBlocks, "mcBlocks");
        Intrinsics.checkNotNullParameter(shardBlocks, "shardBlocks");
        this.mcBlocks = mcBlocks;
        this.shardBlocks = shardBlocks;
    }

    public static final /* synthetic */ void write$Self(CreatorStats creatorStats, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        Counters$$serializer counters$$serializer = Counters$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, counters$$serializer, creatorStats.mcBlocks);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, counters$$serializer, creatorStats.shardBlocks);
    }

    public final Counters getMcBlocks() {
        return this.mcBlocks;
    }

    public final Counters getShardBlocks() {
        return this.shardBlocks;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: CreatorStats.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<CreatorStats> {
        private final /* synthetic */ CreatorStatsTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public CreatorStats loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CreatorStats loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CreatorStats value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<CreatorStats> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CreatorStatsTlbConstructor.INSTANCE;
        }

        public final KSerializer<CreatorStats> serializer() {
            return CreatorStats$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("creator_info");
        open.field("mc_blocks", this.mcBlocks);
        open.field("shard_blocks", this.shardBlocks);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
