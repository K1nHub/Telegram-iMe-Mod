package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: Anycast.kt */
@Serializable
/* loaded from: classes6.dex */
public final class Anycast implements TlbObject {
    public static final Companion Companion = new Companion(null);
    private final int depth;
    private final BitString rewritePfx;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Anycast) {
            Anycast anycast = (Anycast) obj;
            return this.depth == anycast.depth && Intrinsics.areEqual(this.rewritePfx, anycast.rewritePfx);
        }
        return false;
    }

    public int hashCode() {
        return (this.depth * 31) + this.rewritePfx.hashCode();
    }

    public /* synthetic */ Anycast(int i, int i2, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, Anycast$$serializer.INSTANCE.getDescriptor());
        }
        this.depth = i2;
        this.rewritePfx = bitString;
        boolean z = false;
        if (1 <= i2 && i2 < 31) {
            z = true;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(("required: depth in 1..30, actual: " + i2).toString());
    }

    public Anycast(int i, BitString rewritePfx) {
        Intrinsics.checkNotNullParameter(rewritePfx, "rewritePfx");
        this.depth = i;
        this.rewritePfx = rewritePfx;
        boolean z = false;
        if (1 <= i && i < 31) {
            z = true;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(("required: depth in 1..30, actual: " + i).toString());
    }

    public static final /* synthetic */ void write$Self(Anycast anycast, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, anycast.depth);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, anycast.rewritePfx);
    }

    public final int getDepth() {
        return this.depth;
    }

    public final BitString getRewritePfx() {
        return this.rewritePfx;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: Anycast.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<Anycast> {
        private final /* synthetic */ AnycastTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public Anycast loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public Anycast loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, Anycast value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<Anycast> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AnycastTlbConstructor.INSTANCE;
        }

        public final KSerializer<Anycast> serializer() {
            return Anycast$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("anycast_info");
        open.field("depth", Integer.valueOf(this.depth));
        open.field("rewrite_pfx", this.rewritePfx);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
