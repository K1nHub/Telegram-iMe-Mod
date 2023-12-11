package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SealedClassSerializer;
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
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: AddrVar.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AddrVar implements MsgAddressInt {
    private final int addrLen;
    private final BitString address;
    private final Maybe<Anycast> anycast;
    private final int workchainId;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7533x1f70da89("@type")}), null, null, null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddrVar) {
            AddrVar addrVar = (AddrVar) obj;
            return Intrinsics.areEqual(this.anycast, addrVar.anycast) && this.addrLen == addrVar.addrLen && this.workchainId == addrVar.workchainId && Intrinsics.areEqual(this.address, addrVar.address);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.anycast.hashCode() * 31) + this.addrLen) * 31) + this.workchainId) * 31) + this.address.hashCode();
    }

    public /* synthetic */ AddrVar(int i, Maybe maybe, int i2, int i3, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, AddrVar$$serializer.INSTANCE.getDescriptor());
        }
        this.anycast = maybe;
        this.addrLen = i2;
        this.workchainId = i3;
        this.address = bitString;
        if (bitString.getSize() == i2) {
            return;
        }
        throw new IllegalArgumentException(("required: address.size == addr_len, actual: " + bitString.getSize()).toString());
    }

    public AddrVar(Maybe<Anycast> anycast, int i, int i2, BitString address) {
        Intrinsics.checkNotNullParameter(anycast, "anycast");
        Intrinsics.checkNotNullParameter(address, "address");
        this.anycast = anycast;
        this.addrLen = i;
        this.workchainId = i2;
        this.address = address;
        if (address.getSize() == i) {
            return;
        }
        throw new IllegalArgumentException(("required: address.size == addr_len, actual: " + address.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(AddrVar addrVar, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], addrVar.anycast);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, addrVar.addrLen);
        compositeEncoder.encodeIntElement(serialDescriptor, 2, addrVar.getWorkchainId());
        compositeEncoder.encodeSerializableElement(serialDescriptor, 3, FiftHexBitStringSerializer.INSTANCE, addrVar.address);
    }

    public final Maybe<Anycast> getAnycast() {
        return this.anycast;
    }

    public final int getAddrLen() {
        return this.addrLen;
    }

    public int getWorkchainId() {
        return this.workchainId;
    }

    public final BitString getAddress() {
        return this.address;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AddrVar.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<AddrVar> {
        private final /* synthetic */ AddrVarTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrVar loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrVar loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AddrVar value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = AddrVarTlbConstructor.INSTANCE;
        }

        public final KSerializer<AddrVar> serializer() {
            return AddrVar$$serializer.INSTANCE;
        }

        public final org.ton.tlb.TlbConstructor<AddrVar> tlbCodec() {
            return AddrVarTlbConstructor.INSTANCE;
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("addr_var");
        open.field("anycast", this.anycast);
        open.field("addr_len", Integer.valueOf(this.addrLen));
        open.field("workchain_id", Integer.valueOf(getWorkchainId()));
        open.field("address", this.address);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
