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
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgDiscardTr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgDiscardTr implements InMsg {
    private final Coins fwdFee;
    private final CellRef<MsgEnvelope> inMsg;
    private final Cell proofDelivered;
    private final long transactionId;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null, null, new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Cell.class), new Annotation[]{new C7764x6f655aa4("@type")})};

    public /* synthetic */ MsgDiscardTr(int i, CellRef cellRef, ULong uLong, Coins coins, Cell cell, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, cellRef, uLong, coins, cell, serializationConstructorMarker);
    }

    public /* synthetic */ MsgDiscardTr(CellRef cellRef, long j, Coins coins, Cell cell, DefaultConstructorMarker defaultConstructorMarker) {
        this(cellRef, j, coins, cell);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgDiscardTr) {
            MsgDiscardTr msgDiscardTr = (MsgDiscardTr) obj;
            return Intrinsics.areEqual(this.inMsg, msgDiscardTr.inMsg) && this.transactionId == msgDiscardTr.transactionId && Intrinsics.areEqual(this.fwdFee, msgDiscardTr.fwdFee) && Intrinsics.areEqual(this.proofDelivered, msgDiscardTr.proofDelivered);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.inMsg.hashCode() * 31) + ULong.m1999hashCodeimpl(this.transactionId)) * 31) + this.fwdFee.hashCode()) * 31) + this.proofDelivered.hashCode();
    }

    public String toString() {
        return "MsgDiscardTr(inMsg=" + this.inMsg + ", transactionId=" + ((Object) ULong.m2000toStringimpl(this.transactionId)) + ", fwdFee=" + this.fwdFee + ", proofDelivered=" + this.proofDelivered + ')';
    }

    private MsgDiscardTr(int i, CellRef<MsgEnvelope> cellRef, ULong uLong, Coins coins, Cell cell, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, MsgDiscardTr$$serializer.INSTANCE.getDescriptor());
        }
        this.inMsg = cellRef;
        this.transactionId = uLong.m2001unboximpl();
        this.fwdFee = coins;
        this.proofDelivered = cell;
    }

    private MsgDiscardTr(CellRef<MsgEnvelope> inMsg, long j, Coins fwdFee, Cell proofDelivered) {
        Intrinsics.checkNotNullParameter(inMsg, "inMsg");
        Intrinsics.checkNotNullParameter(fwdFee, "fwdFee");
        Intrinsics.checkNotNullParameter(proofDelivered, "proofDelivered");
        this.inMsg = inMsg;
        this.transactionId = j;
        this.fwdFee = fwdFee;
        this.proofDelivered = proofDelivered;
    }

    public static final /* synthetic */ void write$Self(MsgDiscardTr msgDiscardTr, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgDiscardTr.inMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1996boximpl(msgDiscardTr.transactionId));
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgDiscardTr.fwdFee);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, kSerializerArr[3], msgDiscardTr.proofDelivered);
    }

    public final CellRef<MsgEnvelope> getInMsg() {
        return this.inMsg;
    }

    /* renamed from: getTransactionId-s-VKNKU  reason: not valid java name */
    public final long m5294getTransactionIdsVKNKU() {
        return this.transactionId;
    }

    public final Coins getFwdFee() {
        return this.fwdFee;
    }

    public final Cell getProofDelivered() {
        return this.proofDelivered;
    }

    /* compiled from: MsgDiscardTr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgDiscardTr> {
        private final /* synthetic */ MsgDiscardTrTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgDiscardTr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgDiscardTr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgDiscardTr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgDiscardTr> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgDiscardTrTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgDiscardTr> serializer() {
            return MsgDiscardTr$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_discard_tr");
        open.field("in_msg", this.inMsg);
        open.field("transaction_id", ULong.m1996boximpl(this.transactionId));
        open.field("fwd_fee", this.fwdFee);
        open.field("proof_delivered", this.proofDelivered);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
