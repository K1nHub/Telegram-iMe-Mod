package org.ton.block;

import java.lang.annotation.Annotation;
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
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: MsgImportTr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class MsgImportTr implements InMsg {
    private final CellRef<MsgEnvelope> inMsg;
    private final CellRef<MsgEnvelope> outMsg;
    private final Coins transitFee;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(CellRef.class), new Annotation[0]), null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MsgImportTr) {
            MsgImportTr msgImportTr = (MsgImportTr) obj;
            return Intrinsics.areEqual(this.inMsg, msgImportTr.inMsg) && Intrinsics.areEqual(this.outMsg, msgImportTr.outMsg) && Intrinsics.areEqual(this.transitFee, msgImportTr.transitFee);
        }
        return false;
    }

    public int hashCode() {
        return (((this.inMsg.hashCode() * 31) + this.outMsg.hashCode()) * 31) + this.transitFee.hashCode();
    }

    public /* synthetic */ MsgImportTr(int i, CellRef cellRef, CellRef cellRef2, Coins coins, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, MsgImportTr$$serializer.INSTANCE.getDescriptor());
        }
        this.inMsg = cellRef;
        this.outMsg = cellRef2;
        this.transitFee = coins;
    }

    public MsgImportTr(CellRef<MsgEnvelope> inMsg, CellRef<MsgEnvelope> outMsg, Coins transitFee) {
        Intrinsics.checkNotNullParameter(inMsg, "inMsg");
        Intrinsics.checkNotNullParameter(outMsg, "outMsg");
        Intrinsics.checkNotNullParameter(transitFee, "transitFee");
        this.inMsg = inMsg;
        this.outMsg = outMsg;
        this.transitFee = transitFee;
    }

    public static final /* synthetic */ void write$Self(MsgImportTr msgImportTr, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, kSerializerArr[0], msgImportTr.inMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], msgImportTr.outMsg);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, Coins$$serializer.INSTANCE, msgImportTr.transitFee);
    }

    public final CellRef<MsgEnvelope> getInMsg() {
        return this.inMsg;
    }

    public final CellRef<MsgEnvelope> getOutMsg() {
        return this.outMsg;
    }

    public final Coins getTransitFee() {
        return this.transitFee;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: MsgImportTr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<MsgImportTr> {
        private final /* synthetic */ MsgImportTrTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportTr loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public MsgImportTr loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, MsgImportTr value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<MsgImportTr> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = MsgImportTrTlbConstructor.INSTANCE;
        }

        public final KSerializer<MsgImportTr> serializer() {
            return MsgImportTr$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("msg_import_tr");
        open.field("in_msg", this.inMsg);
        open.field("out_msg", this.outMsg);
        open.field("transit_fee", this.transitFee);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
