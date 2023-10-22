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
/* compiled from: DepthBalanceInfo.kt */
@Serializable
/* loaded from: classes6.dex */
public final class DepthBalanceInfo implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final CurrencyCollection balance;
    private final int splitDepth;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DepthBalanceInfo) {
            DepthBalanceInfo depthBalanceInfo = (DepthBalanceInfo) obj;
            return this.splitDepth == depthBalanceInfo.splitDepth && Intrinsics.areEqual(this.balance, depthBalanceInfo.balance);
        }
        return false;
    }

    public int hashCode() {
        return (this.splitDepth * 31) + this.balance.hashCode();
    }

    public /* synthetic */ DepthBalanceInfo(int i, int i2, CurrencyCollection currencyCollection, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, DepthBalanceInfo$$serializer.INSTANCE.getDescriptor());
        }
        this.splitDepth = i2;
        this.balance = currencyCollection;
        if (i2 <= 30) {
            return;
        }
        throw new IllegalArgumentException(("required: split_depth <= 30, actual: " + i2).toString());
    }

    public DepthBalanceInfo(int i, CurrencyCollection balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        this.splitDepth = i;
        this.balance = balance;
        if (i <= 30) {
            return;
        }
        throw new IllegalArgumentException(("required: split_depth <= 30, actual: " + i).toString());
    }

    public static final /* synthetic */ void write$Self(DepthBalanceInfo depthBalanceInfo, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, depthBalanceInfo.splitDepth);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, CurrencyCollection$$serializer.INSTANCE, depthBalanceInfo.balance);
    }

    public final int getSplitDepth() {
        return this.splitDepth;
    }

    public final CurrencyCollection getBalance() {
        return this.balance;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: DepthBalanceInfo.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<DepthBalanceInfo> {
        private final /* synthetic */ DepthBalanceInfoTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public DepthBalanceInfo loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public DepthBalanceInfo loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, DepthBalanceInfo value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<DepthBalanceInfo> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = DepthBalanceInfoTlbConstructor.INSTANCE;
        }

        public final KSerializer<DepthBalanceInfo> serializer() {
            return DepthBalanceInfo$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("depth_balance");
        open.field("split_depth", Integer.valueOf(this.splitDepth));
        open.field("balance", this.balance);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
