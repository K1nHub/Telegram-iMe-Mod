package org.ton.block;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
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
/* compiled from: Coins.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Coins implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private static final int DECIMALS = 9;
    private final VarUInteger amount;

    public Coins() {
        this((VarUInteger) null, 1, (DefaultConstructorMarker) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Coins) && Intrinsics.areEqual(this.amount, ((Coins) obj).amount);
    }

    public int hashCode() {
        return this.amount.hashCode();
    }

    public /* synthetic */ Coins(int i, VarUInteger varUInteger, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, Coins$$serializer.INSTANCE.getDescriptor());
        }
        if ((i & 1) == 0) {
            this.amount = new VarUInteger(0);
        } else {
            this.amount = varUInteger;
        }
    }

    public Coins(VarUInteger amount) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.amount = amount;
    }

    public static final /* synthetic */ void write$Self(Coins coins, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        boolean z = true;
        if (!compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 0) && Intrinsics.areEqual(coins.amount, new VarUInteger(0))) {
            z = false;
        }
        if (z) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 0, VarUInteger$$serializer.INSTANCE, coins.amount);
        }
    }

    public /* synthetic */ Coins(VarUInteger varUInteger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new VarUInteger(0) : varUInteger);
    }

    public final VarUInteger amount() {
        return this.amount;
    }

    public String toString() {
        return toString(DECIMALS);
    }

    public final String toString(int i) {
        String dropLast;
        String takeLast;
        String padStart;
        String it = this.amount.value().toString();
        StringBuilder sb = new StringBuilder();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        dropLast = StringsKt___StringsKt.dropLast(it, i);
        if (dropLast.length() == 0) {
            dropLast = SessionDescription.SUPPORTED_SDP_VERSION;
        }
        sb.append(dropLast);
        sb.append('.');
        takeLast = StringsKt___StringsKt.takeLast(it, i);
        padStart = StringsKt__StringsKt.padStart(takeLast, i, '0');
        sb.append(padStart);
        return sb.toString();
    }

    /* compiled from: Coins.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<Coins> {
        private final /* synthetic */ CoinsTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Coins loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Coins loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Coins value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<Coins> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CoinsTlbConstructor.INSTANCE;
        }

        public final KSerializer<Coins> serializer() {
            return Coins$$serializer.INSTANCE;
        }

        public final Coins ofNano(long j) {
            return new Coins(new VarUInteger(j));
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("nanocoins");
        open.field("amount", this.amount);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
