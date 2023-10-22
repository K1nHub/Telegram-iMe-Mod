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
/* compiled from: ShardDescr.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardDescrAux implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final CurrencyCollection feesCollected;
    private final CurrencyCollection fundsCreated;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardDescrAux) {
            ShardDescrAux shardDescrAux = (ShardDescrAux) obj;
            return Intrinsics.areEqual(this.feesCollected, shardDescrAux.feesCollected) && Intrinsics.areEqual(this.fundsCreated, shardDescrAux.fundsCreated);
        }
        return false;
    }

    public int hashCode() {
        return (this.feesCollected.hashCode() * 31) + this.fundsCreated.hashCode();
    }

    public /* synthetic */ ShardDescrAux(int i, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ShardDescrAux$$serializer.INSTANCE.getDescriptor());
        }
        this.feesCollected = currencyCollection;
        this.fundsCreated = currencyCollection2;
    }

    public ShardDescrAux(CurrencyCollection feesCollected, CurrencyCollection fundsCreated) {
        Intrinsics.checkNotNullParameter(feesCollected, "feesCollected");
        Intrinsics.checkNotNullParameter(fundsCreated, "fundsCreated");
        this.feesCollected = feesCollected;
        this.fundsCreated = fundsCreated;
    }

    public static final /* synthetic */ void write$Self(ShardDescrAux shardDescrAux, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, currencyCollection$$serializer, shardDescrAux.feesCollected);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, currencyCollection$$serializer, shardDescrAux.fundsCreated);
    }

    public final CurrencyCollection getFeesCollected() {
        return this.feesCollected;
    }

    public final CurrencyCollection getFundsCreated() {
        return this.fundsCreated;
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("fees_collected", this.feesCollected);
        open.field("funds_created", this.fundsCreated);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardDescr.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardDescrAux> {
        private final /* synthetic */ ShardDescrAuxTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrAux loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardDescrAux loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardDescrAux value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardDescrAux> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardDescrAuxTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardDescrAux> serializer() {
            return ShardDescrAux$$serializer.INSTANCE;
        }
    }
}
