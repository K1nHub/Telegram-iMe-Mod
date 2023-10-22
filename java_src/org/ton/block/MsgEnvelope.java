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
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbConstructorKt;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbCombinatorProvider;
/* compiled from: MsgEnvelope.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgEnvelope implements TlbObject {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final IntermediateAddress curAddr;
    private final Coins fwdFeeRemaining;
    private final CellRef<Message<Cell>> msg;
    private final IntermediateAddress nextAddr;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgEnvelope) {
            MsgEnvelope msgEnvelope = (MsgEnvelope) obj;
            return Intrinsics.areEqual(this.curAddr, msgEnvelope.curAddr) && Intrinsics.areEqual(this.nextAddr, msgEnvelope.nextAddr) && Intrinsics.areEqual(this.fwdFeeRemaining, msgEnvelope.fwdFeeRemaining) && Intrinsics.areEqual(this.msg, msgEnvelope.msg);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.curAddr.hashCode() * 31) + this.nextAddr.hashCode()) * 31) + this.fwdFeeRemaining.hashCode()) * 31) + this.msg.hashCode();
    }

    public /* synthetic */ MsgEnvelope(int i, IntermediateAddress intermediateAddress, IntermediateAddress intermediateAddress2, Coins coins, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, MsgEnvelope$$serializer.INSTANCE.getDescriptor());
        }
        this.curAddr = intermediateAddress;
        this.nextAddr = intermediateAddress2;
        this.fwdFeeRemaining = coins;
        this.msg = cellRef;
    }

    public MsgEnvelope(IntermediateAddress curAddr, IntermediateAddress nextAddr, Coins fwdFeeRemaining, CellRef<Message<Cell>> msg) {
        Intrinsics.checkNotNullParameter(curAddr, "curAddr");
        Intrinsics.checkNotNullParameter(nextAddr, "nextAddr");
        Intrinsics.checkNotNullParameter(fwdFeeRemaining, "fwdFeeRemaining");
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.curAddr = curAddr;
        this.nextAddr = nextAddr;
        this.fwdFeeRemaining = fwdFeeRemaining;
        this.msg = msg;
    }

    public static final /* synthetic */ void write$Self(MsgEnvelope msgEnvelope, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgEnvelope.curAddr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgEnvelope.nextAddr);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgEnvelope.fwdFeeRemaining);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], msgEnvelope.msg);
    }

    public final IntermediateAddress getCurAddr() {
        return this.curAddr;
    }

    public final IntermediateAddress getNextAddr() {
        return this.nextAddr;
    }

    public final Coins getFwdFeeRemaining() {
        return this.fwdFeeRemaining;
    }

    public final CellRef<Message<Cell>> getMsg() {
        return this.msg;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgEnvelope.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCombinatorProvider<MsgEnvelope> {
        private final /* synthetic */ TlbCombinator<MsgEnvelope> $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgEnvelope loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgEnvelope loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgEnvelope value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbCombinatorProvider
        public TlbCombinator<MsgEnvelope> tlbCombinator() {
            return this.$$delegate_0.tlbCombinator();
        }

        private Companion() {
            this.$$delegate_0 = TlbConstructorKt.asTlbCombinator(MsgEnvelopeTlbConstructor.INSTANCE, Reflection.getOrCreateKotlinClass(MsgEnvelope.class));
        }

        public final KSerializer<MsgEnvelope> serializer() {
            return MsgEnvelope$$serializer.INSTANCE;
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(IntermediateAddress.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(IntermediateAddressExt.class), Reflection.getOrCreateKotlinClass(IntermediateAddressRegular.class), Reflection.getOrCreateKotlinClass(IntermediateAddressSimple.class)};
        IntermediateAddressExt$$serializer intermediateAddressExt$$serializer = IntermediateAddressExt$$serializer.INSTANCE;
        IntermediateAddressRegular$$serializer intermediateAddressRegular$$serializer = IntermediateAddressRegular$$serializer.INSTANCE;
        IntermediateAddressSimple$$serializer intermediateAddressSimple$$serializer = IntermediateAddressSimple$$serializer.INSTANCE;
        $childSerializers = new KSerializer[]{new SealedClassSerializer("org.ton.block.IntermediateAddress", orCreateKotlinClass, kClassArr, new KSerializer[]{intermediateAddressExt$$serializer, intermediateAddressRegular$$serializer, intermediateAddressSimple$$serializer}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), new SealedClassSerializer("org.ton.block.IntermediateAddress", Reflection.getOrCreateKotlinClass(IntermediateAddress.class), new KClass[]{Reflection.getOrCreateKotlinClass(IntermediateAddressExt.class), Reflection.getOrCreateKotlinClass(IntermediateAddressRegular.class), Reflection.getOrCreateKotlinClass(IntermediateAddressSimple.class)}, new KSerializer[]{intermediateAddressExt$$serializer, intermediateAddressRegular$$serializer, intermediateAddressSimple$$serializer}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.MsgEnvelope$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        }}), null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_envelope");
        open.field("cur_addr", this.curAddr);
        open.field("next_addr", this.nextAddr);
        open.field("fwd_fee_remaining", this.fwdFeeRemaining);
        open.field("msg", this.msg);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
