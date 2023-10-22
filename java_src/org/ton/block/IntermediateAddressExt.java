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
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: IntermediateAddressExt.kt */
@Serializable
/* loaded from: classes6.dex */
public final class IntermediateAddressExt implements IntermediateAddress {
    public static final Companion Companion = new Companion(null);
    private final long addrPfx;
    private final int workchainId;

    public /* synthetic */ IntermediateAddressExt(int i, int i2, ULong uLong, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, uLong, serializationConstructorMarker);
    }

    public /* synthetic */ IntermediateAddressExt(int i, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntermediateAddressExt) {
            IntermediateAddressExt intermediateAddressExt = (IntermediateAddressExt) obj;
            return this.workchainId == intermediateAddressExt.workchainId && this.addrPfx == intermediateAddressExt.addrPfx;
        }
        return false;
    }

    public int hashCode() {
        return (this.workchainId * 31) + ULong.m1991hashCodeimpl(this.addrPfx);
    }

    private IntermediateAddressExt(int i, int i2, ULong uLong, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, IntermediateAddressExt$$serializer.INSTANCE.getDescriptor());
        }
        this.workchainId = i2;
        this.addrPfx = uLong.m1993unboximpl();
    }

    private IntermediateAddressExt(int i, long j) {
        this.workchainId = i;
        this.addrPfx = j;
    }

    public static final /* synthetic */ void write$Self(IntermediateAddressExt intermediateAddressExt, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, intermediateAddressExt.workchainId);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, ULongSerializer.INSTANCE, ULong.m1988boximpl(intermediateAddressExt.addrPfx));
    }

    public final int getWorkchainId() {
        return this.workchainId;
    }

    /* renamed from: getAddrPfx-s-VKNKU  reason: not valid java name */
    public final long m4963getAddrPfxsVKNKU() {
        return this.addrPfx;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: IntermediateAddressExt.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<IntermediateAddressExt> {
        private final /* synthetic */ IntermediateAddressExtTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressExt loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public IntermediateAddressExt loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, IntermediateAddressExt value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<IntermediateAddressExt> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = IntermediateAddressExtTlbConstructor.INSTANCE;
        }

        public final KSerializer<IntermediateAddressExt> serializer() {
            return IntermediateAddressExt$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("interm_addr_ext");
        open.field("workchain_id", Integer.valueOf(this.workchainId));
        open.field("addr_pfx", ULong.m1988boximpl(this.addrPfx));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
