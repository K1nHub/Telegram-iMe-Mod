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
/* compiled from: ShardFeeCreated.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ShardFeeCreated implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final CurrencyCollection create;
    private final CurrencyCollection fees;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShardFeeCreated) {
            ShardFeeCreated shardFeeCreated = (ShardFeeCreated) obj;
            return Intrinsics.areEqual(this.fees, shardFeeCreated.fees) && Intrinsics.areEqual(this.create, shardFeeCreated.create);
        }
        return false;
    }

    public int hashCode() {
        return (this.fees.hashCode() * 31) + this.create.hashCode();
    }

    public /* synthetic */ ShardFeeCreated(int i, CurrencyCollection currencyCollection, CurrencyCollection currencyCollection2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ShardFeeCreated$$serializer.INSTANCE.getDescriptor());
        }
        this.fees = currencyCollection;
        this.create = currencyCollection2;
    }

    public ShardFeeCreated(CurrencyCollection fees, CurrencyCollection create) {
        Intrinsics.checkNotNullParameter(fees, "fees");
        Intrinsics.checkNotNullParameter(create, "create");
        this.fees = fees;
        this.create = create;
    }

    public static final /* synthetic */ void write$Self(ShardFeeCreated shardFeeCreated, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        CurrencyCollection$$serializer currencyCollection$$serializer = CurrencyCollection$$serializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, currencyCollection$$serializer, shardFeeCreated.fees);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, currencyCollection$$serializer, shardFeeCreated.create);
    }

    public final CurrencyCollection getFees() {
        return this.fees;
    }

    public final CurrencyCollection getCreate() {
        return this.create;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: ShardFeeCreated.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ShardFeeCreated> {
        private final /* synthetic */ ShardFeeCreatedTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardFeeCreated loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ShardFeeCreated loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ShardFeeCreated value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ShardFeeCreated> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ShardFeeCreatedTlbConstructor.INSTANCE;
        }

        public final KSerializer<ShardFeeCreated> serializer() {
            return ShardFeeCreated$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("");
        open.field("fees", this.fees);
        open.field("create", this.create);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
