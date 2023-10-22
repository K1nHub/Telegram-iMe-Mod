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
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.block.Just;
import org.ton.block.Nothing;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TransMergeInstall.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransMergeInstall implements TransactionDescr {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final boolean aborted;
    private final Maybe<CellRef<TrActionPhase>> action;
    private final TrComputePhase computePh;
    private final Maybe<TrCreditPhase> creditPh;
    private final boolean destroyed;
    private final CellRef<Transaction> prepareTransaction;
    private final SplitMergeInfo splitInfo;
    private final Maybe<TrStoragePhase> storagePh;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransMergeInstall) {
            TransMergeInstall transMergeInstall = (TransMergeInstall) obj;
            return Intrinsics.areEqual(this.splitInfo, transMergeInstall.splitInfo) && Intrinsics.areEqual(this.prepareTransaction, transMergeInstall.prepareTransaction) && Intrinsics.areEqual(this.storagePh, transMergeInstall.storagePh) && Intrinsics.areEqual(this.creditPh, transMergeInstall.creditPh) && Intrinsics.areEqual(this.computePh, transMergeInstall.computePh) && Intrinsics.areEqual(this.action, transMergeInstall.action) && this.aborted == transMergeInstall.aborted && this.destroyed == transMergeInstall.destroyed;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((this.splitInfo.hashCode() * 31) + this.prepareTransaction.hashCode()) * 31) + this.storagePh.hashCode()) * 31) + this.creditPh.hashCode()) * 31) + this.computePh.hashCode()) * 31) + this.action.hashCode()) * 31;
        boolean z = this.aborted;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.destroyed;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public /* synthetic */ TransMergeInstall(int i, SplitMergeInfo splitMergeInfo, CellRef cellRef, Maybe maybe, Maybe maybe2, TrComputePhase trComputePhase, Maybe maybe3, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, TransMergeInstall$$serializer.INSTANCE.getDescriptor());
        }
        this.splitInfo = splitMergeInfo;
        this.prepareTransaction = cellRef;
        this.storagePh = maybe;
        this.creditPh = maybe2;
        this.computePh = trComputePhase;
        this.action = maybe3;
        this.aborted = z;
        this.destroyed = z2;
    }

    public TransMergeInstall(SplitMergeInfo splitInfo, CellRef<Transaction> prepareTransaction, Maybe<TrStoragePhase> storagePh, Maybe<TrCreditPhase> creditPh, TrComputePhase computePh, Maybe<CellRef<TrActionPhase>> action, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(splitInfo, "splitInfo");
        Intrinsics.checkNotNullParameter(prepareTransaction, "prepareTransaction");
        Intrinsics.checkNotNullParameter(storagePh, "storagePh");
        Intrinsics.checkNotNullParameter(creditPh, "creditPh");
        Intrinsics.checkNotNullParameter(computePh, "computePh");
        Intrinsics.checkNotNullParameter(action, "action");
        this.splitInfo = splitInfo;
        this.prepareTransaction = prepareTransaction;
        this.storagePh = storagePh;
        this.creditPh = creditPh;
        this.computePh = computePh;
        this.action = action;
        this.aborted = z;
        this.destroyed = z2;
    }

    public static final /* synthetic */ void write$Self(TransMergeInstall transMergeInstall, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SplitMergeInfo$$serializer.INSTANCE, transMergeInstall.splitInfo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], transMergeInstall.prepareTransaction);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], transMergeInstall.storagePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], transMergeInstall.creditPh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], transMergeInstall.computePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 5, kSerializerArr[5], transMergeInstall.action);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 6, transMergeInstall.aborted);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 7, transMergeInstall.destroyed);
    }

    public final SplitMergeInfo getSplitInfo() {
        return this.splitInfo;
    }

    public final CellRef<Transaction> getPrepareTransaction() {
        return this.prepareTransaction;
    }

    public final Maybe<TrStoragePhase> getStoragePh() {
        return this.storagePh;
    }

    public final Maybe<TrCreditPhase> getCreditPh() {
        return this.creditPh;
    }

    public final TrComputePhase getComputePh() {
        return this.computePh;
    }

    public final Maybe<CellRef<TrActionPhase>> getAction() {
        return this.action;
    }

    public final boolean getAborted() {
        return this.aborted;
    }

    public final boolean getDestroyed() {
        return this.destroyed;
    }

    /* compiled from: TransMergeInstall.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransMergeInstall> {
        private final /* synthetic */ TransMergeInstallTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransMergeInstall loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransMergeInstall loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransMergeInstall value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransMergeInstall> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransMergeInstallTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransMergeInstall> serializer() {
            return TransMergeInstall$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7540xc1d40114("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7540xc1d40114("@type")}), new SealedClassSerializer("org.ton.block.TrComputePhase", Reflection.getOrCreateKotlinClass(TrComputePhase.class), new KClass[]{Reflection.getOrCreateKotlinClass(TrPhaseComputeSkipped.class), Reflection.getOrCreateKotlinClass(TrPhaseComputeVm.class)}, new KSerializer[]{TrPhaseComputeSkipped$$serializer.INSTANCE, TrPhaseComputeVm$$serializer.INSTANCE}, new Annotation[]{new C7540xc1d40114("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7540xc1d40114("@type")}), null, null};
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("trans_merge_install");
        open.field("split_info", this.splitInfo);
        open.field("prepare_transaction", this.prepareTransaction);
        open.field("storage_ph", this.storagePh);
        open.field("credit_ph", this.creditPh);
        open.field("compute_ph", this.computePh);
        open.field("action", this.action);
        open.field("aborted", Boolean.valueOf(this.aborted));
        open.field("destroyed", Boolean.valueOf(this.destroyed));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
