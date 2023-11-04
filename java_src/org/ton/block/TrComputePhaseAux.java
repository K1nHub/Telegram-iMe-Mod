package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.UIntSerializer;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.block.Just;
import org.ton.block.Nothing;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrPhaseComputeVm.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrComputePhaseAux implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final Maybe<Integer> exitArg;
    private final int exitCode;
    private final Maybe<VarUInteger> gasCredit;
    private final VarUInteger gasLimit;
    private final VarUInteger gasUsed;
    private final int mode;
    private final BitString vmFinalStateHash;
    private final BitString vmInitStateHash;
    private final int vmSteps;

    public /* synthetic */ TrComputePhaseAux(int i, VarUInteger varUInteger, VarUInteger varUInteger2, Maybe maybe, int i2, int i3, Maybe maybe2, UInt uInt, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, varUInteger, varUInteger2, maybe, i2, i3, maybe2, uInt, bitString, bitString2, serializationConstructorMarker);
    }

    public /* synthetic */ TrComputePhaseAux(VarUInteger varUInteger, VarUInteger varUInteger2, Maybe maybe, int i, int i2, Maybe maybe2, int i3, BitString bitString, BitString bitString2, DefaultConstructorMarker defaultConstructorMarker) {
        this(varUInteger, varUInteger2, maybe, i, i2, maybe2, i3, bitString, bitString2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrComputePhaseAux) {
            TrComputePhaseAux trComputePhaseAux = (TrComputePhaseAux) obj;
            return Intrinsics.areEqual(this.gasUsed, trComputePhaseAux.gasUsed) && Intrinsics.areEqual(this.gasLimit, trComputePhaseAux.gasLimit) && Intrinsics.areEqual(this.gasCredit, trComputePhaseAux.gasCredit) && this.mode == trComputePhaseAux.mode && this.exitCode == trComputePhaseAux.exitCode && Intrinsics.areEqual(this.exitArg, trComputePhaseAux.exitArg) && this.vmSteps == trComputePhaseAux.vmSteps && Intrinsics.areEqual(this.vmInitStateHash, trComputePhaseAux.vmInitStateHash) && Intrinsics.areEqual(this.vmFinalStateHash, trComputePhaseAux.vmFinalStateHash);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((this.gasUsed.hashCode() * 31) + this.gasLimit.hashCode()) * 31) + this.gasCredit.hashCode()) * 31) + this.mode) * 31) + this.exitCode) * 31) + this.exitArg.hashCode()) * 31) + UInt.m1974hashCodeimpl(this.vmSteps)) * 31) + this.vmInitStateHash.hashCode()) * 31) + this.vmFinalStateHash.hashCode();
    }

    private TrComputePhaseAux(int i, VarUInteger varUInteger, VarUInteger varUInteger2, Maybe<VarUInteger> maybe, int i2, int i3, Maybe<Integer> maybe2, UInt uInt, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (511 != (i & 511)) {
            PluginExceptionsKt.throwMissingFieldException(i, 511, TrComputePhaseAux$$serializer.INSTANCE.getDescriptor());
        }
        this.gasUsed = varUInteger;
        this.gasLimit = varUInteger2;
        this.gasCredit = maybe;
        this.mode = i2;
        this.exitCode = i3;
        this.exitArg = maybe2;
        this.vmSteps = uInt.m1976unboximpl();
        this.vmInitStateHash = bitString;
        this.vmFinalStateHash = bitString2;
    }

    private TrComputePhaseAux(VarUInteger gasUsed, VarUInteger gasLimit, Maybe<VarUInteger> gasCredit, int i, int i2, Maybe<Integer> exitArg, int i3, BitString vmInitStateHash, BitString vmFinalStateHash) {
        Intrinsics.checkNotNullParameter(gasUsed, "gasUsed");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        Intrinsics.checkNotNullParameter(gasCredit, "gasCredit");
        Intrinsics.checkNotNullParameter(exitArg, "exitArg");
        Intrinsics.checkNotNullParameter(vmInitStateHash, "vmInitStateHash");
        Intrinsics.checkNotNullParameter(vmFinalStateHash, "vmFinalStateHash");
        this.gasUsed = gasUsed;
        this.gasLimit = gasLimit;
        this.gasCredit = gasCredit;
        this.mode = i;
        this.exitCode = i2;
        this.exitArg = exitArg;
        this.vmSteps = i3;
        this.vmInitStateHash = vmInitStateHash;
        this.vmFinalStateHash = vmFinalStateHash;
    }

    public static final /* synthetic */ void write$Self(TrComputePhaseAux trComputePhaseAux, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        VarUInteger$$serializer varUInteger$$serializer = VarUInteger$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, varUInteger$$serializer, trComputePhaseAux.gasUsed);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, varUInteger$$serializer, trComputePhaseAux.gasLimit);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], trComputePhaseAux.gasCredit);
        compositeEncoder.encodeIntElement(serialDescriptor, 3, trComputePhaseAux.mode);
        compositeEncoder.encodeIntElement(serialDescriptor, 4, trComputePhaseAux.exitCode);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], trComputePhaseAux.exitArg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, UIntSerializer.INSTANCE, UInt.m1971boximpl(trComputePhaseAux.vmSteps));
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 7, fiftHexBitStringSerializer, trComputePhaseAux.vmInitStateHash);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 8, fiftHexBitStringSerializer, trComputePhaseAux.vmFinalStateHash);
    }

    public final VarUInteger getGasUsed() {
        return this.gasUsed;
    }

    public final VarUInteger getGasLimit() {
        return this.gasLimit;
    }

    public final Maybe<VarUInteger> getGasCredit() {
        return this.gasCredit;
    }

    public final int getMode() {
        return this.mode;
    }

    public final int getExitCode() {
        return this.exitCode;
    }

    public final Maybe<Integer> getExitArg() {
        return this.exitArg;
    }

    /* renamed from: getVmSteps-pVg5ArA  reason: not valid java name */
    public final int m5203getVmStepspVg5ArA() {
        return this.vmSteps;
    }

    public final BitString getVmInitStateHash() {
        return this.vmInitStateHash;
    }

    public final BitString getVmFinalStateHash() {
        return this.vmFinalStateHash;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("gas_used", this.gasUsed);
        open.field("gas_limit", this.gasLimit);
        open.field("gas_credit", this.gasCredit);
        open.field("mode", Integer.valueOf(this.mode));
        open.field("exit_code", Integer.valueOf(this.exitCode));
        open.field("exit_arg", this.exitArg);
        open.field("vm_steps", UInt.m1971boximpl(this.vmSteps));
        open.field("vm_init_state_hash", this.vmInitStateHash);
        open.field("vm_final_state_hash", this.vmFinalStateHash);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrPhaseComputeVm.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrComputePhaseAux> {
        private final /* synthetic */ TrComputePhaseAuxTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrComputePhaseAux loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrComputePhaseAux loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrComputePhaseAux value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrComputePhaseAux> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrComputePhaseAuxTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrComputePhaseAux> serializer() {
            return TrComputePhaseAux$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{null, null, new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7613x101b1ca4("@type")}), null, null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7613x101b1ca4("@type")}), null, null, null};
    }
}
