package org.ton.hashmap;

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
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmlLong.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmlLong implements HmLabel {
    public static final Companion Companion = new Companion(null);

    /* renamed from: n */
    private final int f2110n;

    /* renamed from: s */
    private final BitString f2111s;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HmlLong) {
            HmlLong hmlLong = (HmlLong) obj;
            return this.f2110n == hmlLong.f2110n && Intrinsics.areEqual(this.f2111s, hmlLong.f2111s);
        }
        return false;
    }

    public int hashCode() {
        return (this.f2110n * 31) + this.f2111s.hashCode();
    }

    public /* synthetic */ HmlLong(int i, int i2, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, HmlLong$$serializer.INSTANCE.getDescriptor());
        }
        this.f2110n = i2;
        this.f2111s = bitString;
    }

    public HmlLong(int i, BitString s) {
        Intrinsics.checkNotNullParameter(s, "s");
        this.f2110n = i;
        this.f2111s = s;
    }

    public static final /* synthetic */ void write$Self(HmlLong hmlLong, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeIntElement(serialDescriptor, 0, hmlLong.f2110n);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, hmlLong.f2111s);
    }

    public final int getN() {
        return this.f2110n;
    }

    public final BitString getS() {
        return this.f2111s;
    }

    @Override // org.ton.hashmap.HmLabel
    public BitString toBitString() {
        return this.f2111s;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmlLong.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<HmlLong> serializer() {
            return HmlLong$$serializer.INSTANCE;
        }

        public final TlbNegatedConstructor<HmlLong> tlbCodec(int i) {
            return new HashMapLabelLongTlbConstructor(i);
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hml_long");
        open.field("n", Integer.valueOf(this.f2110n));
        open.field("s", this.f2111s);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
