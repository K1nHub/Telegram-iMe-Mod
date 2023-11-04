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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: StorageInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class StorageInfo implements TlbObject {
    private final Maybe<Coins> duePayment;
    private final int lastPaid;
    private final StorageUsed used;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.StorageInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }})};

    public /* synthetic */ StorageInfo(int i, StorageUsed storageUsed, UInt uInt, Maybe maybe, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, storageUsed, uInt, maybe, serializationConstructorMarker);
    }

    public /* synthetic */ StorageInfo(StorageUsed storageUsed, int i, Maybe maybe, DefaultConstructorMarker defaultConstructorMarker) {
        this(storageUsed, i, maybe);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StorageInfo) {
            StorageInfo storageInfo = (StorageInfo) obj;
            return Intrinsics.areEqual(this.used, storageInfo.used) && this.lastPaid == storageInfo.lastPaid && Intrinsics.areEqual(this.duePayment, storageInfo.duePayment);
        }
        return false;
    }

    public int hashCode() {
        return (((this.used.hashCode() * 31) + UInt.m1974hashCodeimpl(this.lastPaid)) * 31) + this.duePayment.hashCode();
    }

    private StorageInfo(int i, StorageUsed storageUsed, UInt uInt, Maybe<Coins> maybe, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, StorageInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.used = storageUsed;
        this.lastPaid = uInt.m1976unboximpl();
        this.duePayment = maybe;
    }

    private StorageInfo(StorageUsed used, int i, Maybe<Coins> duePayment) {
        Intrinsics.checkNotNullParameter(used, "used");
        Intrinsics.checkNotNullParameter(duePayment, "duePayment");
        this.used = used;
        this.lastPaid = i;
        this.duePayment = duePayment;
    }

    public static final /* synthetic */ void write$Self(StorageInfo storageInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, StorageUsed$$serializer.INSTANCE, storageInfo.used);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, UIntSerializer.INSTANCE, UInt.m1971boximpl(storageInfo.lastPaid));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], storageInfo.duePayment);
    }

    public final StorageUsed used() {
        return this.used;
    }

    public final int lastPaid() {
        return this.lastPaid;
    }

    public final Maybe<Coins> duePayment() {
        return this.duePayment;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: StorageInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<StorageInfo> {
        private final /* synthetic */ StorageInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public StorageInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, StorageInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<StorageInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = StorageInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<StorageInfo> serializer() {
            return StorageInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("storage_info");
        open.field("used", this.used);
        open.field("last_paid", UInt.m1971boximpl(this.lastPaid));
        open.field("due_payment", this.duePayment);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
