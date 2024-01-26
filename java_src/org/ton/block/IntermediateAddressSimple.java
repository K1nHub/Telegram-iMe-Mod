package org.ton.block;

import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.ULongSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: IntermediateAddressSimple.kt */
@Serializable
/* loaded from: classes6.dex */
public final class IntermediateAddressSimple implements IntermediateAddress {
    public static final Companion Companion = new Companion(null);
    private final long addrPfx;
    private final int workchainId;

    public /* synthetic */ IntermediateAddressSimple(int i, int i2, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ IntermediateAddressSimple(int i, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntermediateAddressSimple) {
            IntermediateAddressSimple intermediateAddressSimple = (IntermediateAddressSimple) obj;
            return this.workchainId == intermediateAddressSimple.workchainId && this.addrPfx == intermediateAddressSimple.addrPfx;
        }
        return false;
    }

    public int hashCode() {
        return (this.workchainId * 31) + ULong.m1999hashCodeimpl(this.addrPfx);
    }

    public String toString() {
        return "IntermediateAddressSimple(workchainId=" + this.workchainId + ", addrPfx=" + ((Object) ULong.m2000toStringimpl(this.addrPfx)) + ')';
    }

    private IntermediateAddressSimple(int i, int i2, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, IntermediateAddressSimple$$serializer.INSTANCE.getDescriptor());
        }
        this.workchainId = i2;
        this.addrPfx = uLong.m2001unboximpl();
    }

    private IntermediateAddressSimple(int i, long j) {
        this.workchainId = i;
        this.addrPfx = j;
    }

    public static final /* synthetic */ void write$Self(IntermediateAddressSimple intermediateAddressSimple, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, intermediateAddressSimple.workchainId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1996boximpl(intermediateAddressSimple.addrPfx));
    }

    public final int getWorkchainId() {
        return this.workchainId;
    }

    /* renamed from: getAddrPfx-s-VKNKU  reason: not valid java name */
    public final long m5285getAddrPfxsVKNKU() {
        return this.addrPfx;
    }

    /* compiled from: IntermediateAddressSimple.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<IntermediateAddressSimple> {
        private final /* synthetic */ IntermediateAddressSimpleTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressSimple loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressSimple loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, IntermediateAddressSimple value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<IntermediateAddressSimple> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = IntermediateAddressSimpleTlbConstructor.INSTANCE;
        }

        public final KSerializer<IntermediateAddressSimple> serializer() {
            return IntermediateAddressSimple$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("interm_addr_simple");
        open.field("workchain_id", Integer.valueOf(this.workchainId));
        open.field("addr_pfx", ULong.m1996boximpl(this.addrPfx));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
