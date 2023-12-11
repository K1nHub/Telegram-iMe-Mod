package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.ULong;
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
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: EnqueuedMsg.kt */
@Serializable
/* loaded from: classes6.dex */
public final class EnqueuedMsg implements TlbObject {
    private final long enqueuedLt;
    private final CellRef<MsgEnvelope> outMsg;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0])};

    public /* synthetic */ EnqueuedMsg(int i, ULong uLong, CellRef cellRef, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, uLong, cellRef, serializationConstructorMarker);
    }

    public /* synthetic */ EnqueuedMsg(long j, CellRef cellRef, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, cellRef);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EnqueuedMsg) {
            EnqueuedMsg enqueuedMsg = (EnqueuedMsg) obj;
            return this.enqueuedLt == enqueuedMsg.enqueuedLt && Intrinsics.areEqual(this.outMsg, enqueuedMsg.outMsg);
        }
        return false;
    }

    public int hashCode() {
        return (ULong.m1998hashCodeimpl(this.enqueuedLt) * 31) + this.outMsg.hashCode();
    }

    public String toString() {
        return "EnqueuedMsg(enqueuedLt=" + ((Object) ULong.m1999toStringimpl(this.enqueuedLt)) + ", outMsg=" + this.outMsg + ')';
    }

    private EnqueuedMsg(int i, ULong uLong, CellRef<MsgEnvelope> cellRef, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, EnqueuedMsg$$serializer.INSTANCE.getDescriptor());
        }
        this.enqueuedLt = uLong.m2000unboximpl();
        this.outMsg = cellRef;
    }

    private EnqueuedMsg(long j, CellRef<MsgEnvelope> outMsg) {
        Intrinsics.checkNotNullParameter(outMsg, "outMsg");
        this.enqueuedLt = j;
        this.outMsg = outMsg;
    }

    public static final /* synthetic */ void write$Self(EnqueuedMsg enqueuedMsg, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ULongSerializer.INSTANCE, ULong.m1995boximpl(enqueuedMsg.enqueuedLt));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], enqueuedMsg.outMsg);
    }

    /* renamed from: getEnqueuedLt-s-VKNKU  reason: not valid java name */
    public final long m5087getEnqueuedLtsVKNKU() {
        return this.enqueuedLt;
    }

    public final CellRef<MsgEnvelope> getOutMsg() {
        return this.outMsg;
    }

    /* compiled from: EnqueuedMsg.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<EnqueuedMsg> {
        private final /* synthetic */ EnqueuedMsgTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public EnqueuedMsg loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public EnqueuedMsg loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, EnqueuedMsg value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<EnqueuedMsg> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = EnqueuedMsgTlbConstructor.INSTANCE;
        }

        public final KSerializer<EnqueuedMsg> serializer() {
            return EnqueuedMsg$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("enqueued_lt", ULong.m1995boximpl(this.enqueuedLt));
        open.field("out_msg", this.outMsg);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
