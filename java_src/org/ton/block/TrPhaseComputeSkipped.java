package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrPhaseComputeSkipped.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrPhaseComputeSkipped implements TrComputePhase {
    private final ComputeSkipReason reason;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {ComputeSkipReason.Companion.serializer()};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof TrPhaseComputeSkipped) && this.reason == ((TrPhaseComputeSkipped) obj).reason;
    }

    public int hashCode() {
        return this.reason.hashCode();
    }

    public /* synthetic */ TrPhaseComputeSkipped(int i, ComputeSkipReason computeSkipReason, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, TrPhaseComputeSkipped$$serializer.INSTANCE.getDescriptor());
        }
        this.reason = computeSkipReason;
    }

    public TrPhaseComputeSkipped(ComputeSkipReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
    }

    public final ComputeSkipReason getReason() {
        return this.reason;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrPhaseComputeSkipped.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrPhaseComputeSkipped> {
        private final /* synthetic */ TrPhaseComputeSkippedTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseComputeSkipped loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseComputeSkipped loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrPhaseComputeSkipped value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrPhaseComputeSkipped> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrPhaseComputeSkippedTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrPhaseComputeSkipped> serializer() {
            return TrPhaseComputeSkipped$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_compute_skipped");
        open.field("reason", this.reason);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
