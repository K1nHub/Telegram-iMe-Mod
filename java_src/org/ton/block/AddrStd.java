package org.ton.block;

import io.ktor.utils.p032io.bits.Memory;
import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.OutputKt;
import io.ktor.utils.p032io.core.OutputPrimitivesKt;
import io.ktor.utils.p032io.core.StringsKt;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.p034io.encoding.Base64;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
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
import org.ton.crypto.Crc16Kt;
import org.ton.crypto.HexKt;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: AddrStd.kt */
@Serializable
/* loaded from: classes6.dex */
public final class AddrStd implements MsgAddressInt {
    private final BitString address;
    private final Maybe<Anycast> anycast;
    private final int workchainId;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.block.Maybe", Reflection.getOrCreateKotlinClass(Maybe.class), new KClass[]{Reflection.getOrCreateKotlinClass(Just.class), Reflection.getOrCreateKotlinClass(Nothing.class)}, new KSerializer[]{Just.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0])), Nothing.Companion.serializer(new PolymorphicSerializer(Reflection.getOrCreateKotlinClass(Object.class), new Annotation[0]))}, new Annotation[]{new C7532xaf8cfd0d("@type")}), null, null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddrStd) {
            AddrStd addrStd = (AddrStd) obj;
            return Intrinsics.areEqual(this.anycast, addrStd.anycast) && this.workchainId == addrStd.workchainId && Intrinsics.areEqual(this.address, addrStd.address);
        }
        return false;
    }

    public int hashCode() {
        return (((this.anycast.hashCode() * 31) + this.workchainId) * 31) + this.address.hashCode();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AddrStd(Anycast anycast, int i, BitString address) {
        this(Maybe.Companion.m37of(anycast), i, address.toBitString());
        Intrinsics.checkNotNullParameter(address, "address");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AddrStd(Anycast anycast, int i, byte[] address) {
        this(Maybe.Companion.m37of(anycast), i, BitString.Companion.m43of(address, address.length * 8));
        Intrinsics.checkNotNullParameter(address, "address");
    }

    public /* synthetic */ AddrStd(int i, Maybe maybe, int i2, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, AddrStd$$serializer.INSTANCE.getDescriptor());
        }
        this.anycast = maybe;
        this.workchainId = i2;
        this.address = bitString;
        if (bitString.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected address.size == 256, actual: " + bitString.getSize()).toString());
    }

    public AddrStd(Maybe<Anycast> anycast, int i, BitString address) {
        Intrinsics.checkNotNullParameter(anycast, "anycast");
        Intrinsics.checkNotNullParameter(address, "address");
        this.anycast = anycast;
        this.workchainId = i;
        this.address = address;
        if (address.getSize() == 256) {
            return;
        }
        throw new IllegalArgumentException(("expected address.size == 256, actual: " + address.getSize()).toString());
    }

    public static final /* synthetic */ void write$Self(AddrStd addrStd, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], addrStd.anycast);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, addrStd.workchainId());
        compositeEncoder.encodeSerializableElement(serialDescriptor, 2, FiftHexBitStringSerializer.INSTANCE, addrStd.address);
    }

    public final Maybe<Anycast> anycast() {
        return this.anycast;
    }

    public int workchainId() {
        return this.workchainId;
    }

    public final BitString address() {
        return this.address;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AddrStd(int i, BitString address) {
        this((Anycast) null, i, address);
        Intrinsics.checkNotNullParameter(address, "address");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AddrStd(int i, byte[] address) {
        this((Anycast) null, i, address);
        Intrinsics.checkNotNullParameter(address, "address");
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: AddrStd.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbCodec<AddrStd> {
        private final /* synthetic */ AddrStdTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final byte tag(boolean z, boolean z2) {
            return (byte) ((z ? -128 : 0) | (z2 ? 17 : 81));
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrStd loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public AddrStd loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, AddrStd value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        private Companion() {
            this.$$delegate_0 = AddrStdTlbConstructor.INSTANCE;
        }

        public final KSerializer<AddrStd> serializer() {
            return AddrStd$$serializer.INSTANCE;
        }

        public final org.ton.tlb.TlbConstructor<AddrStd> tlbCodec() {
            return AddrStdTlbConstructor.INSTANCE;
        }

        public final String toString(AddrStd address, boolean z, boolean z2, boolean z3, boolean z4) {
            Intrinsics.checkNotNullParameter(address, "address");
            if (z) {
                byte tag = tag(z3, z4);
                int workchainId = address.workchainId();
                byte[] byteArray$default = BitString.DefaultImpls.toByteArray$default(address.address(), false, 1, null);
                int checksum = checksum(tag, workchainId, byteArray$default);
                BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
                try {
                    bytePacketBuilder.writeByte(tag);
                    bytePacketBuilder.writeByte((byte) workchainId);
                    OutputKt.writeFully$default(bytePacketBuilder, byteArray$default, 0, 0, 6, null);
                    OutputPrimitivesKt.writeShort(bytePacketBuilder, (short) checksum);
                    byte[] readBytes$default = StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null);
                    if (z2) {
                        return Base64.encode$default(Base64.Default.getUrlSafe(), readBytes$default, 0, 0, 6, null);
                    }
                    return Base64.encode$default(Base64.Default, readBytes$default, 0, 0, 6, null);
                } catch (Throwable th) {
                    bytePacketBuilder.release();
                    throw th;
                }
            }
            return address.workchainId() + ':' + address.address().toHex();
        }

        public final AddrStd parse(String address) {
            boolean contains$default;
            Intrinsics.checkNotNullParameter(address, "address");
            try {
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) address, ':', false, 2, (Object) null);
                if (contains$default) {
                    return parseRaw(address);
                }
                return parseUserFriendly(address);
            } catch (Exception e) {
                throw new IllegalArgumentException("Can't parse address: " + address, e);
            }
        }

        public final AddrStd parseRaw(String address) {
            boolean contains$default;
            String substringAfter$default;
            String substringBefore$default;
            String substringAfter$default2;
            Intrinsics.checkNotNullParameter(address, "address");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) address, ':', false, 2, (Object) null);
            if (!contains$default) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            substringAfter$default = StringsKt__StringsKt.substringAfter$default(address, ':', (String) null, 2, (Object) null);
            if (!(substringAfter$default.length() == 64)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            substringBefore$default = StringsKt__StringsKt.substringBefore$default(address, ':', (String) null, 2, (Object) null);
            byte parseByte = Byte.parseByte(substringBefore$default);
            substringAfter$default2 = StringsKt__StringsKt.substringAfter$default(address, ':', (String) null, 2, (Object) null);
            return new AddrStd(parseByte, HexKt.hex(substringAfter$default2));
        }

        public final AddrStd parseUserFriendly(String address) {
            byte[] copyInto$default;
            Intrinsics.checkNotNullParameter(address, "address");
            byte[] bArr = new byte[36];
            try {
                try {
                    Base64.decodeIntoByteArray$default(Base64.Default.getUrlSafe(), address, bArr, 0, 0, 0, 28, (Object) null);
                } catch (Exception unused) {
                    Base64.decodeIntoByteArray$default(Base64.Default, address, bArr, 0, 0, 0, 28, (Object) null);
                }
                byte[] bArr2 = new byte[32];
                ByteBuffer order = ByteBuffer.wrap(bArr, 0, 36).slice().order(ByteOrder.BIG_ENDIAN);
                Intrinsics.checkNotNullExpressionValue(order, "wrap(this, offset, lengt…der(ByteOrder.BIG_ENDIAN)");
                ByteBuffer m1912constructorimpl = Memory.m1912constructorimpl(order);
                byte b = m1912constructorimpl.get(0);
                byte b2 = (byte) (b & Byte.MAX_VALUE);
                if ((b2 == 81) | (b2 == 17)) {
                    byte b3 = m1912constructorimpl.get(1);
                    copyInto$default = ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, 2, 34, 2, (Object) null);
                    if (!((UShort.m2018constructorimpl(m1912constructorimpl.getShort(34)) & 65535) == checksum(b, b3, copyInto$default))) {
                        throw new IllegalStateException("CRC check failed".toString());
                    }
                    return new AddrStd(b3, copyInto$default);
                }
                throw new IllegalStateException("unknown address tag".toString());
            } catch (Exception e) {
                throw new IllegalArgumentException("Can't parse address: " + address, e);
            }
        }

        private final int checksum(byte b, int i, byte[] bArr) {
            return Crc16Kt.crc16(new byte[]{b, (byte) i}, bArr);
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("addr_std");
        open.field("anycast", this.anycast);
        open.field("workchain_id", Integer.valueOf(workchainId()));
        open.field("address", this.address);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
