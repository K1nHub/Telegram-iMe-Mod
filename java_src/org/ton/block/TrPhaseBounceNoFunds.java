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
/* compiled from: TrPhaseBounceNoFunds.kt */
@Serializable
/* loaded from: classes6.dex */
public final class TrPhaseBounceNoFunds implements TrBouncePhase {
    public static final Companion Companion = new Companion(null);
    private final StorageUsedShort msgSize;
    private final Coins reqFwdFees;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TrPhaseBounceNoFunds) {
            TrPhaseBounceNoFunds trPhaseBounceNoFunds = (TrPhaseBounceNoFunds) obj;
            return Intrinsics.areEqual(this.msgSize, trPhaseBounceNoFunds.msgSize) && Intrinsics.areEqual(this.reqFwdFees, trPhaseBounceNoFunds.reqFwdFees);
        }
        return false;
    }

    public int hashCode() {
        return (this.msgSize.hashCode() * 31) + this.reqFwdFees.hashCode();
    }

    public /* synthetic */ TrPhaseBounceNoFunds(int i, StorageUsedShort storageUsedShort, Coins coins, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, TrPhaseBounceNoFunds$$serializer.INSTANCE.getDescriptor());
        }
        this.msgSize = storageUsedShort;
        this.reqFwdFees = coins;
    }

    public TrPhaseBounceNoFunds(StorageUsedShort msgSize, Coins reqFwdFees) {
        Intrinsics.checkNotNullParameter(msgSize, "msgSize");
        Intrinsics.checkNotNullParameter(reqFwdFees, "reqFwdFees");
        this.msgSize = msgSize;
        this.reqFwdFees = reqFwdFees;
    }

    public static final /* synthetic */ void write$Self(TrPhaseBounceNoFunds trPhaseBounceNoFunds, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, StorageUsedShort$$serializer.INSTANCE, trPhaseBounceNoFunds.msgSize);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, Coins$$serializer.INSTANCE, trPhaseBounceNoFunds.reqFwdFees);
    }

    public final StorageUsedShort getMsgSize() {
        return this.msgSize;
    }

    public final Coins getReqFwdFees() {
        return this.reqFwdFees;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: TrPhaseBounceNoFunds.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<TrPhaseBounceNoFunds> {
        private final /* synthetic */ TrPhaseBounceNoFundsTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseBounceNoFunds loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public TrPhaseBounceNoFunds loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, TrPhaseBounceNoFunds value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<TrPhaseBounceNoFunds> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = TrPhaseBounceNoFundsTlbConstructor.INSTANCE;
        }

        public final KSerializer<TrPhaseBounceNoFunds> serializer() {
            return TrPhaseBounceNoFunds$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("tr_phase_bounce_nofunds");
        open.field("msg_size", this.msgSize);
        open.field("reqFwdFees", this.reqFwdFees);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
