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
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TransTickTock.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TransTickTock implements TransactionDescr {
    private final boolean aborted;
    private final Maybe<CellRef<TrActionPhase>> action;
    private final TrComputePhase computePh;
    private final boolean destroyed;
    private final boolean isTock;
    private final TrStoragePhase storagePh;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new SealedClassSerializer("org.ton.block.TrComputePhase", Reflection.getOrCreateKotlinClass(TrComputePhase.class), new KClass[]{Reflection.getOrCreateKotlinClass(TrPhaseComputeSkipped.class), Reflection.getOrCreateKotlinClass(TrPhaseComputeVm.class)}, new KSerializer[]{TrPhaseComputeSkipped$$serializer.INSTANCE, TrPhaseComputeVm$$serializer.INSTANCE}, new Annotation[]{new C7621x409a9f17("@type")}), new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7621x409a9f17("@type")}), null, null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TransTickTock) {
            TransTickTock transTickTock = (TransTickTock) obj;
            return this.isTock == transTickTock.isTock && Intrinsics.areEqual(this.storagePh, transTickTock.storagePh) && Intrinsics.areEqual(this.computePh, transTickTock.computePh) && Intrinsics.areEqual(this.action, transTickTock.action) && this.aborted == transTickTock.aborted && this.destroyed == transTickTock.destroyed;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z = this.isTock;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int hashCode = ((((((r0 * 31) + this.storagePh.hashCode()) * 31) + this.computePh.hashCode()) * 31) + this.action.hashCode()) * 31;
        ?? r2 = this.aborted;
        int i = r2;
        if (r2 != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.destroyed;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public /* synthetic */ TransTickTock(int i, boolean z, TrStoragePhase trStoragePhase, TrComputePhase trComputePhase, Maybe maybe, boolean z2, boolean z3, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i & 63)) {
            PluginExceptionsKt.throwMissingFieldException(i, 63, TransTickTock$$serializer.INSTANCE.getDescriptor());
        }
        this.isTock = z;
        this.storagePh = trStoragePhase;
        this.computePh = trComputePhase;
        this.action = maybe;
        this.aborted = z2;
        this.destroyed = z3;
    }

    public TransTickTock(boolean z, TrStoragePhase storagePh, TrComputePhase computePh, Maybe<CellRef<TrActionPhase>> action, boolean z2, boolean z3) {
        Intrinsics.checkNotNullParameter(storagePh, "storagePh");
        Intrinsics.checkNotNullParameter(computePh, "computePh");
        Intrinsics.checkNotNullParameter(action, "action");
        this.isTock = z;
        this.storagePh = storagePh;
        this.computePh = computePh;
        this.action = action;
        this.aborted = z2;
        this.destroyed = z3;
    }

    public static final /* synthetic */ void write$Self(TransTickTock transTickTock, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, transTickTock.isTock);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, TrStoragePhase$$serializer.INSTANCE, transTickTock.storagePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], transTickTock.computePh);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], transTickTock.action);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 4, transTickTock.aborted);
        compositeEncoder.encodeBooleanElement(serialDescriptor, 5, transTickTock.destroyed);
    }

    public final boolean isTock() {
        return this.isTock;
    }

    public final TrStoragePhase getStoragePh() {
        return this.storagePh;
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

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TransTickTock.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TransTickTock> {
        private final /* synthetic */ TransTickTockTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TransTickTock loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TransTickTock loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TransTickTock value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TransTickTock> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TransTickTockTlbConstructor.INSTANCE;
        }

        public final KSerializer<TransTickTock> serializer() {
            return TransTickTock$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("trans_tick_tock");
        open.field("is_tock", Boolean.valueOf(this.isTock));
        open.field("storage_ph", this.storagePh);
        open.field("compute_ph", this.computePh);
        open.field("action", this.action);
        open.field("aborted", Boolean.valueOf(this.aborted));
        open.field("destroyed", Boolean.valueOf(this.destroyed));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
