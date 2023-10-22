package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.ULong;
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
import org.ton.hashmap.HashMapE;
import org.ton.hashmap.HashmapAugE;
import org.ton.hashmap.HmeEmpty;
import org.ton.hashmap.HmeRoot;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: OutMsgQueueInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class OutMsgQueueInfo implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final HashMapE<IhrPendingSince> ihrPending;
    private final HashmapAugE<EnqueuedMsg, ULong> outQueue;
    private final HashMapE<ProcessedUpto> procInfo;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OutMsgQueueInfo) {
            OutMsgQueueInfo outMsgQueueInfo = (OutMsgQueueInfo) obj;
            return Intrinsics.areEqual(this.outQueue, outMsgQueueInfo.outQueue) && Intrinsics.areEqual(this.procInfo, outMsgQueueInfo.procInfo) && Intrinsics.areEqual(this.ihrPending, outMsgQueueInfo.ihrPending);
        }
        return false;
    }

    public int hashCode() {
        return (((this.outQueue.hashCode() * 31) + this.procInfo.hashCode()) * 31) + this.ihrPending.hashCode();
    }

    public /* synthetic */ OutMsgQueueInfo(int i, HashmapAugE hashmapAugE, HashMapE hashMapE, HashMapE hashMapE2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, OutMsgQueueInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.outQueue = hashmapAugE;
        this.procInfo = hashMapE;
        this.ihrPending = hashMapE2;
    }

    public OutMsgQueueInfo(HashmapAugE<EnqueuedMsg, ULong> outQueue, HashMapE<ProcessedUpto> procInfo, HashMapE<IhrPendingSince> ihrPending) {
        Intrinsics.checkNotNullParameter(outQueue, "outQueue");
        Intrinsics.checkNotNullParameter(procInfo, "procInfo");
        Intrinsics.checkNotNullParameter(ihrPending, "ihrPending");
        this.outQueue = outQueue;
        this.procInfo = procInfo;
        this.ihrPending = ihrPending;
    }

    public static final /* synthetic */ void write$Self(OutMsgQueueInfo outMsgQueueInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], outMsgQueueInfo.outQueue);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], outMsgQueueInfo.procInfo);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, kSerializerArr[2], outMsgQueueInfo.ihrPending);
    }

    public final HashmapAugE<EnqueuedMsg, ULong> getOutQueue() {
        return this.outQueue;
    }

    public final HashMapE<ProcessedUpto> getProcInfo() {
        return this.procInfo;
    }

    public final HashMapE<IhrPendingSince> getIhrPending() {
        return this.ihrPending;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: OutMsgQueueInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<OutMsgQueueInfo> {
        private final /* synthetic */ OutMsgQueueInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public OutMsgQueueInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public OutMsgQueueInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, OutMsgQueueInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<OutMsgQueueInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = OutMsgQueueInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<OutMsgQueueInfo> serializer() {
            return OutMsgQueueInfo$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HashmapAugE.class);
        Annotation[] annotationArr = {new JsonClassDiscriminator("@type") { // from class: org.ton.block.OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }};
        KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(HashMapE.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)};
        HmeEmpty.Companion companion = HmeEmpty.Companion;
        HmeRoot.Companion companion2 = HmeRoot.Companion;
        $childSerializers = new KSerializer[]{new PolymorphicSerializer(orCreateKotlinClass, annotationArr), new SealedClassSerializer("org.ton.hashmap.HashMapE", orCreateKotlinClass2, kClassArr, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), new SealedClassSerializer("org.ton.hashmap.HashMapE", Reflection.getOrCreateKotlinClass(HashMapE.class), new KClass[]{Reflection.getOrCreateKotlinClass(HmeEmpty.class), Reflection.getOrCreateKotlinClass(HmeRoot.class)}, new KSerializer[]{companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), companion2.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("out_msg_queue_info");
        open.field("out_queue", this.outQueue);
        open.field("proc_info", this.procInfo);
        open.field("ihr_pending", this.ihrPending);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
