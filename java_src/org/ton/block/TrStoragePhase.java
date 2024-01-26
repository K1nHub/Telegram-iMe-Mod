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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrStoragePhase.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrStoragePhase implements TlbObject {
    private final AccStatusChange statusChange;
    private final Coins storageFeesCollected;
    private final Maybe<Coins> storageFeesDue;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.TrStoragePhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }}), AccStatusChange.Companion.serializer()};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrStoragePhase) {
            TrStoragePhase trStoragePhase = (TrStoragePhase) obj;
            return Intrinsics.areEqual(this.storageFeesCollected, trStoragePhase.storageFeesCollected) && Intrinsics.areEqual(this.storageFeesDue, trStoragePhase.storageFeesDue) && this.statusChange == trStoragePhase.statusChange;
        }
        return false;
    }

    public int hashCode() {
        return (((this.storageFeesCollected.hashCode() * 31) + this.storageFeesDue.hashCode()) * 31) + this.statusChange.hashCode();
    }

    public String toString() {
        return "TrStoragePhase(storageFeesCollected=" + this.storageFeesCollected + ", storageFeesDue=" + this.storageFeesDue + ", statusChange=" + this.statusChange + ')';
    }

    public /* synthetic */ TrStoragePhase(int i, Coins coins, Maybe maybe, AccStatusChange accStatusChange, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TrStoragePhase$$serializer.INSTANCE.getDescriptor());
        }
        this.storageFeesCollected = coins;
        this.storageFeesDue = maybe;
        this.statusChange = accStatusChange;
    }

    public TrStoragePhase(Coins storageFeesCollected, Maybe<Coins> storageFeesDue, AccStatusChange statusChange) {
        Intrinsics.checkNotNullParameter(storageFeesCollected, "storageFeesCollected");
        Intrinsics.checkNotNullParameter(storageFeesDue, "storageFeesDue");
        Intrinsics.checkNotNullParameter(statusChange, "statusChange");
        this.storageFeesCollected = storageFeesCollected;
        this.storageFeesDue = storageFeesDue;
        this.statusChange = statusChange;
    }

    public static final /* synthetic */ void write$Self(TrStoragePhase trStoragePhase, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, Coins$$serializer.INSTANCE, trStoragePhase.storageFeesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], trStoragePhase.storageFeesDue);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], trStoragePhase.statusChange);
    }

    public final Coins getStorageFeesCollected() {
        return this.storageFeesCollected;
    }

    public final Maybe<Coins> getStorageFeesDue() {
        return this.storageFeesDue;
    }

    public final AccStatusChange getStatusChange() {
        return this.statusChange;
    }

    /* compiled from: TrStoragePhase.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrStoragePhase> {
        private final /* synthetic */ TrStoragePhaseTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrStoragePhase loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrStoragePhase loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrStoragePhase value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrStoragePhase> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrStoragePhaseTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrStoragePhase> serializer() {
            return TrStoragePhase$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_storage");
        open.field("storage_fees_collected", this.storageFeesCollected);
        open.field("storage_fees_due", this.storageFeesDue);
        open.field("status_change", this.statusChange);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
