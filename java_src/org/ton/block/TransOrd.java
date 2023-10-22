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
/* compiled from: TransOrd.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransOrd implements TransactionDescr {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final boolean aborted;
    private final Maybe<CellRef<TrActionPhase>> action;
    private final Maybe<TrBouncePhase> bounce;
    private final TrComputePhase computePh;
    private final boolean creditFirst;
    private final Maybe<TrCreditPhase> creditPh;
    private final boolean destroyed;
    private final Maybe<TrStoragePhase> storagePh;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransOrd) {
            TransOrd transOrd = (TransOrd) obj;
            return this.creditFirst == transOrd.creditFirst && Intrinsics.areEqual(this.storagePh, transOrd.storagePh) && Intrinsics.areEqual(this.creditPh, transOrd.creditPh) && Intrinsics.areEqual(this.computePh, transOrd.computePh) && Intrinsics.areEqual(this.action, transOrd.action) && this.aborted == transOrd.aborted && Intrinsics.areEqual(this.bounce, transOrd.bounce) && this.destroyed == transOrd.destroyed;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r2v8, types: [boolean] */
    public int hashCode() {
        boolean z = this.creditFirst;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((((((((r0 * 31) + this.storagePh.hashCode()) * 31) + this.creditPh.hashCode()) * 31) + this.computePh.hashCode()) * 31) + this.action.hashCode()) * 31;
        ?? r2 = this.aborted;
        int i = r2;
        if (r2 != 0) {
            i = 1;
        }
        int hashCode2 = (((hashCode + i) * 31) + this.bounce.hashCode()) * 31;
        boolean z2 = this.destroyed;
        return hashCode2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public /* synthetic */ TransOrd(int i, boolean z, Maybe maybe, Maybe maybe2, TrComputePhase trComputePhase, Maybe maybe3, boolean z2, Maybe maybe4, boolean z3, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i & 255)) {
            PluginExceptionsKt.throwMissingFieldException(i, 255, TransOrd$$serializer.INSTANCE.getDescriptor());
        }
        this.creditFirst = z;
        this.storagePh = maybe;
        this.creditPh = maybe2;
        this.computePh = trComputePhase;
        this.action = maybe3;
        this.aborted = z2;
        this.bounce = maybe4;
        this.destroyed = z3;
    }

    public TransOrd(boolean z, Maybe<TrStoragePhase> storagePh, Maybe<TrCreditPhase> creditPh, TrComputePhase computePh, Maybe<CellRef<TrActionPhase>> action, boolean z2, Maybe<TrBouncePhase> bounce, boolean z3) {
        Intrinsics.checkNotNullParameter(storagePh, "storagePh");
        Intrinsics.checkNotNullParameter(creditPh, "creditPh");
        Intrinsics.checkNotNullParameter(computePh, "computePh");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(bounce, "bounce");
        this.creditFirst = z;
        this.storagePh = storagePh;
        this.creditPh = creditPh;
        this.computePh = computePh;
        this.action = action;
        this.aborted = z2;
        this.bounce = bounce;
        this.destroyed = z3;
    }

    public static final /* synthetic */ void write$Self(TransOrd transOrd, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, transOrd.creditFirst);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], transOrd.storagePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], transOrd.creditPh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], transOrd.computePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 4, kSerializerArr[4], transOrd.action);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 5, transOrd.aborted);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 6, kSerializerArr[6], transOrd.bounce);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 7, transOrd.destroyed);
    }

    public final boolean getCreditFirst() {
        return this.creditFirst;
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

    public final Maybe<TrBouncePhase> getBounce() {
        return this.bounce;
    }

    public final boolean getDestroyed() {
        return this.destroyed;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TransOrd.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransOrd> {
        private final /* synthetic */ TransOrdTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransOrd loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransOrd loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransOrd value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransOrd> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransOrdTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransOrd> serializer() {
            return TransOrd$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Maybe.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)};
        Just.Companion companion = Just.Companion;
        Nothing.Companion companion2 = Nothing.Companion;
        $childSerializers = new KSerializer[]{null, new SealedClassSerializer("org.ton.block.Maybe", orCreateKotlinClass, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7542x7d68d86("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7542x7d68d86("@type")}), new SealedClassSerializer("org.ton.block.TrComputePhase", Reflection.getOrCreateKotlinClass(TrComputePhase.class), new KClass[]{Reflection.getOrCreateKotlinClass(TrPhaseComputeSkipped.class), Reflection.getOrCreateKotlinClass(TrPhaseComputeVm.class)}, new KSerializer[]{TrPhaseComputeSkipped$$serializer.INSTANCE, TrPhaseComputeVm$$serializer.INSTANCE}, new Annotation[]{new C7542x7d68d86("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7542x7d68d86("@type")}), null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7542x7d68d86("@type")}), null};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("trans_ord");
        open.field("credit_first", Boolean.valueOf(this.creditFirst));
        open.field("storage_ph", this.storagePh);
        open.field("credit_ph", this.creditPh);
        open.field("compute_ph", this.computePh);
        open.field("action", this.action);
        open.field("aborted", Boolean.valueOf(this.aborted));
        open.field("bounce", this.bounce);
        open.field("destroyed", Boolean.valueOf(this.destroyed));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
