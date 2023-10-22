package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TrPhaseBounceOk.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrPhaseBounceOk implements TrBouncePhase {
    public static final Companion Companion = new Companion(null);
    private final Coins fwdFees;
    private final Coins msgFees;
    private final StorageUsedShort msgSize;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrPhaseBounceOk) {
            TrPhaseBounceOk trPhaseBounceOk = (TrPhaseBounceOk) obj;
            return Intrinsics.areEqual(this.msgSize, trPhaseBounceOk.msgSize) && Intrinsics.areEqual(this.msgFees, trPhaseBounceOk.msgFees) && Intrinsics.areEqual(this.fwdFees, trPhaseBounceOk.fwdFees);
        }
        return false;
    }

    public int hashCode() {
        return (((this.msgSize.hashCode() * 31) + this.msgFees.hashCode()) * 31) + this.fwdFees.hashCode();
    }

    public /* synthetic */ TrPhaseBounceOk(int i, StorageUsedShort storageUsedShort, Coins coins, Coins coins2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, TrPhaseBounceOk$$serializer.INSTANCE.getDescriptor());
        }
        this.msgSize = storageUsedShort;
        this.msgFees = coins;
        this.fwdFees = coins2;
    }

    public TrPhaseBounceOk(StorageUsedShort msgSize, Coins msgFees, Coins fwdFees) {
        Intrinsics.checkNotNullParameter(msgSize, "msgSize");
        Intrinsics.checkNotNullParameter(msgFees, "msgFees");
        Intrinsics.checkNotNullParameter(fwdFees, "fwdFees");
        this.msgSize = msgSize;
        this.msgFees = msgFees;
        this.fwdFees = fwdFees;
    }

    public static final /* synthetic */ void write$Self(TrPhaseBounceOk trPhaseBounceOk, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, StorageUsedShort$$serializer.INSTANCE, trPhaseBounceOk.msgSize);
        Coins$$serializer coins$$serializer = Coins$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, coins$$serializer, trPhaseBounceOk.msgFees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, coins$$serializer, trPhaseBounceOk.fwdFees);
    }

    public final StorageUsedShort getMsgSize() {
        return this.msgSize;
    }

    public final Coins getMsgFees() {
        return this.msgFees;
    }

    public final Coins getFwdFees() {
        return this.fwdFees;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrPhaseBounceOk.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrPhaseBounceOk> {
        private final /* synthetic */ TrPhaseBounceOkTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseBounceOk loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseBounceOk loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrPhaseBounceOk value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrPhaseBounceOk> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrPhaseBounceOkTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrPhaseBounceOk> serializer() {
            return TrPhaseBounceOk$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_bounce_ok");
        open.field("msg_size", this.msgSize);
        open.field("msg_fees", this.msgFees);
        open.field("fwd_fees", this.fwdFees);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
