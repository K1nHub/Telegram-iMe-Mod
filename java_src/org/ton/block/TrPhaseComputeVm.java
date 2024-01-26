package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrPhaseComputeVm.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrPhaseComputeVm implements TrComputePhase {
    private final boolean accountActivated;
    private final Coins gasFees;
    private final boolean msgStateUsed;

    /* renamed from: r1 */
    private final CellRef<TrComputePhaseAux> f2070r1;
    private final boolean success;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrPhaseComputeVm) {
            TrPhaseComputeVm trPhaseComputeVm = (TrPhaseComputeVm) obj;
            return this.success == trPhaseComputeVm.success && this.msgStateUsed == trPhaseComputeVm.msgStateUsed && this.accountActivated == trPhaseComputeVm.accountActivated && Intrinsics.areEqual(this.gasFees, trPhaseComputeVm.gasFees) && Intrinsics.areEqual(this.f2070r1, trPhaseComputeVm.f2070r1);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.success;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.msgStateUsed;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.accountActivated;
        return ((((i3 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.gasFees.hashCode()) * 31) + this.f2070r1.hashCode();
    }

    public /* synthetic */ TrPhaseComputeVm(int i, boolean z, boolean z2, boolean z3, Coins coins, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i & 31)) {
            PluginExceptionsKt.throwMissingFieldException(i, 31, TrPhaseComputeVm$$serializer.INSTANCE.getDescriptor());
        }
        this.success = z;
        this.msgStateUsed = z2;
        this.accountActivated = z3;
        this.gasFees = coins;
        this.f2070r1 = cellRef;
    }

    public TrPhaseComputeVm(boolean z, boolean z2, boolean z3, Coins gasFees, CellRef<TrComputePhaseAux> r1) {
        Intrinsics.checkNotNullParameter(gasFees, "gasFees");
        Intrinsics.checkNotNullParameter(r1, "r1");
        this.success = z;
        this.msgStateUsed = z2;
        this.accountActivated = z3;
        this.gasFees = gasFees;
        this.f2070r1 = r1;
    }

    public static final /* synthetic */ void write$Self(TrPhaseComputeVm trPhaseComputeVm, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, trPhaseComputeVm.success);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 1, trPhaseComputeVm.msgStateUsed);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 2, trPhaseComputeVm.accountActivated);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, Coins$$serializer.INSTANCE, trPhaseComputeVm.gasFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], trPhaseComputeVm.f2070r1);
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final boolean getMsgStateUsed() {
        return this.msgStateUsed;
    }

    public final boolean getAccountActivated() {
        return this.accountActivated;
    }

    public final Coins getGasFees() {
        return this.gasFees;
    }

    public final CellRef<TrComputePhaseAux> getR1() {
        return this.f2070r1;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrPhaseComputeVm.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrPhaseComputeVm> {
        private final /* synthetic */ TrPhaseComputeVmTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseComputeVm loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseComputeVm loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrPhaseComputeVm value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrPhaseComputeVm> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrPhaseComputeVmTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrPhaseComputeVm> serializer() {
            return TrPhaseComputeVm$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_compute_vm");
        open.field("success", Boolean.valueOf(this.success));
        open.field("msg_state_used", Boolean.valueOf(this.msgStateUsed));
        open.field("account_activated", Boolean.valueOf(this.accountActivated));
        open.field("gas_fees", this.gasFees);
        open.field(this.f2070r1);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
