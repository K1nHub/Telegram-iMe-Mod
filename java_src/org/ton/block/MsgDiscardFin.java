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
/* compiled from: MsgDiscardFin.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgDiscardFin implements InMsg {
    private final Coins fwdFee;
    private final CellRef<MsgEnvelope> inMsg;
    private final long transactionId;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, null};

    public /* synthetic */ MsgDiscardFin(int i, CellRef cellRef, ULong uLong, Coins coins, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, cellRef, uLong, coins, serializationConstructorMarker);
    }

    public /* synthetic */ MsgDiscardFin(CellRef cellRef, long j, Coins coins, DefaultConstructorMarker defaultConstructorMarker) {
        this(cellRef, j, coins);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgDiscardFin) {
            MsgDiscardFin msgDiscardFin = (MsgDiscardFin) obj;
            return Intrinsics.areEqual(this.inMsg, msgDiscardFin.inMsg) && this.transactionId == msgDiscardFin.transactionId && Intrinsics.areEqual(this.fwdFee, msgDiscardFin.fwdFee);
        }
        return false;
    }

    public int hashCode() {
        return (((this.inMsg.hashCode() * 31) + ULong.m1991hashCodeimpl(this.transactionId)) * 31) + this.fwdFee.hashCode();
    }

    private MsgDiscardFin(int i, CellRef<MsgEnvelope> cellRef, ULong uLong, Coins coins, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, MsgDiscardFin$$serializer.INSTANCE.getDescriptor());
        }
        this.inMsg = cellRef;
        this.transactionId = uLong.m1993unboximpl();
        this.fwdFee = coins;
    }

    private MsgDiscardFin(CellRef<MsgEnvelope> inMsg, long j, Coins fwdFee) {
        Intrinsics.checkNotNullParameter(inMsg, "inMsg");
        Intrinsics.checkNotNullParameter(fwdFee, "fwdFee");
        this.inMsg = inMsg;
        this.transactionId = j;
        this.fwdFee = fwdFee;
    }

    public static final /* synthetic */ void write$Self(MsgDiscardFin msgDiscardFin, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], msgDiscardFin.inMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1988boximpl(msgDiscardFin.transactionId));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgDiscardFin.fwdFee);
    }

    public final CellRef<MsgEnvelope> getInMsg() {
        return this.inMsg;
    }

    /* renamed from: getTransactionId-s-VKNKU  reason: not valid java name */
    public final long m4972getTransactionIdsVKNKU() {
        return this.transactionId;
    }

    public final Coins getFwdFee() {
        return this.fwdFee;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgDiscardFin.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgDiscardFin> {
        private final /* synthetic */ MsgDiscardFinTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgDiscardFin loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgDiscardFin loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgDiscardFin value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgDiscardFin> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgDiscardFinTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgDiscardFin> serializer() {
            return MsgDiscardFin$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_discard_fin");
        open.field("in_msg", this.inMsg);
        open.field("transaction_id", ULong.m1988boximpl(this.transactionId));
        open.field("fwd_fee", this.fwdFee);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
