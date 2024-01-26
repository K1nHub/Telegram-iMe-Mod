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
/* compiled from: CurrencyCollection.kt */
@Serializable
/* loaded from: classes6.dex */
public final class CurrencyCollection implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final Coins coins;
    private final ExtraCurrencyCollection other;

    public static /* synthetic */ CurrencyCollection copy$default(CurrencyCollection currencyCollection, Coins coins, ExtraCurrencyCollection extraCurrencyCollection, int i, Object obj) {
        if ((i & 1) != 0) {
            coins = currencyCollection.coins;
        }
        if ((i & 2) != 0) {
            extraCurrencyCollection = currencyCollection.other;
        }
        return currencyCollection.copy(coins, extraCurrencyCollection);
    }

    public final CurrencyCollection copy(Coins coins, ExtraCurrencyCollection other) {
        Intrinsics.checkNotNullParameter(coins, "coins");
        Intrinsics.checkNotNullParameter(other, "other");
        return new CurrencyCollection(coins, other);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CurrencyCollection) {
            CurrencyCollection currencyCollection = (CurrencyCollection) obj;
            return Intrinsics.areEqual(this.coins, currencyCollection.coins) && Intrinsics.areEqual(this.other, currencyCollection.other);
        }
        return false;
    }

    public int hashCode() {
        return (this.coins.hashCode() * 31) + this.other.hashCode();
    }

    public /* synthetic */ CurrencyCollection(int i, Coins coins, ExtraCurrencyCollection extraCurrencyCollection, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CurrencyCollection$$serializer.INSTANCE.getDescriptor());
        }
        this.coins = coins;
        this.other = extraCurrencyCollection;
    }

    public CurrencyCollection(Coins coins, ExtraCurrencyCollection other) {
        Intrinsics.checkNotNullParameter(coins, "coins");
        Intrinsics.checkNotNullParameter(other, "other");
        this.coins = coins;
        this.other = other;
    }

    public static final /* synthetic */ void write$Self(CurrencyCollection currencyCollection, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, Coins$$serializer.INSTANCE, currencyCollection.coins);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ExtraCurrencyCollection$$serializer.INSTANCE, currencyCollection.other);
    }

    public final Coins coins() {
        return this.coins;
    }

    public final ExtraCurrencyCollection other() {
        return this.other;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: CurrencyCollection.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<CurrencyCollection> {
        private final /* synthetic */ CurrencyCollectionTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public CurrencyCollection loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CurrencyCollection loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CurrencyCollection value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<CurrencyCollection> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CurrencyCollectionTlbConstructor.INSTANCE;
        }

        public final KSerializer<CurrencyCollection> serializer() {
            return CurrencyCollection$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("currencies");
        open.field("coins", this.coins);
        open.field("other", this.other);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
