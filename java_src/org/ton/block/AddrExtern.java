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
/* compiled from: AddrExtern.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AddrExtern implements MsgAddressExt {
    public static final Companion Companion = new Companion(null);
    private final BitString externalAddress;
    private final int len;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddrExtern) {
            AddrExtern addrExtern = (AddrExtern) obj;
            return this.len == addrExtern.len && Intrinsics.areEqual(this.externalAddress, addrExtern.externalAddress);
        }
        return false;
    }

    public int hashCode() {
        return (this.len * 31) + this.externalAddress.hashCode();
    }

    public /* synthetic */ AddrExtern(int i, int i2, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AddrExtern$$serializer.INSTANCE.getDescriptor());
        }
        this.len = i2;
        this.externalAddress = bitString;
        if (bitString.getSize() == i2) {
            return;
        }
        throw new IllegalArgumentException(("required: external_address.size == len, actual: " + bitString.getSize()).toString());
    }

    public AddrExtern(int i, BitString externalAddress) {
        Intrinsics.checkNotNullParameter(externalAddress, "externalAddress");
        this.len = i;
        this.externalAddress = externalAddress;
        if (externalAddress.getSize() == i) {
            return;
        }
        throw new IllegalArgumentException(("required: external_address.size == len, actual: " + externalAddress.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(AddrExtern addrExtern, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, addrExtern.len);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, addrExtern.externalAddress);
    }

    public final int getLen() {
        return this.len;
    }

    public final BitString externalAddress() {
        return this.externalAddress;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AddrExtern.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<AddrExtern> {
        private final /* synthetic */ AddrExternTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrExtern loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrExtern loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AddrExtern value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<AddrExtern> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = AddrExternTlbConstructor.INSTANCE;
        }

        public final KSerializer<AddrExtern> serializer() {
            return AddrExtern$$serializer.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter tlbPrettyPrinter) {
        Intrinsics.checkNotNullParameter(tlbPrettyPrinter, "tlbPrettyPrinter");
        TlbPrettyPrinter open = tlbPrettyPrinter.open("addr_extern");
        open.field("len", Integer.valueOf(this.len));
        open.field("external_address", this.externalAddress);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return tlbPrettyPrinter;
    }
}
