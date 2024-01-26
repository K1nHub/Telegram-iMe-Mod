package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: IntermediateAddressRegular.kt */
@Serializable
/* loaded from: classes6.dex */
public final class IntermediateAddressRegular implements IntermediateAddress {
    public static final Companion Companion = new Companion(null);
    private final int useDestBits;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof IntermediateAddressRegular) && this.useDestBits == ((IntermediateAddressRegular) obj).useDestBits;
    }

    public int hashCode() {
        return this.useDestBits;
    }

    public IntermediateAddressRegular(int i) {
        this.useDestBits = i;
        if (i <= 96) {
            return;
        }
        throw new IllegalArgumentException(("expected: use_dest_bits <= 96, actual: " + i).toString());
    }

    public /* synthetic */ IntermediateAddressRegular(int i, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, IntermediateAddressRegular$$serializer.INSTANCE.getDescriptor());
        }
        this.useDestBits = i2;
        if (i2 <= 96) {
            return;
        }
        throw new IllegalArgumentException(("expected: use_dest_bits <= 96, actual: " + i2).toString());
    }

    public final int getUseDestBits() {
        return this.useDestBits;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: IntermediateAddressRegular.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<IntermediateAddressRegular> {
        private final /* synthetic */ IntermediateAddressRegularTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressRegular loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressRegular loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, IntermediateAddressRegular value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<IntermediateAddressRegular> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = IntermediateAddressRegularTlbConstructor.INSTANCE;
        }

        public final KSerializer<IntermediateAddressRegular> serializer() {
            return IntermediateAddressRegular$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("interm_addr_regular");
        open.field("use_dest_bits", Integer.valueOf(this.useDestBits));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
