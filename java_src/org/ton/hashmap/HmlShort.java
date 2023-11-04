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
/* compiled from: HmlShort.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmlShort implements HmLabel {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final Unary len;

    /* renamed from: s */
    private final BitString f2095s;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HmlShort) {
            HmlShort hmlShort = (HmlShort) obj;
            return Intrinsics.areEqual(this.len, hmlShort.len) && Intrinsics.areEqual(this.f2095s, hmlShort.f2095s);
        }
        return false;
    }

    public int hashCode() {
        return (this.len.hashCode() * 31) + this.f2095s.hashCode();
    }

    public /* synthetic */ HmlShort(int i, Unary unary, BitString bitString, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, HmlShort$$serializer.INSTANCE.getDescriptor());
        }
        this.len = unary;
        this.f2095s = bitString;
    }

    public HmlShort(Unary len, BitString s) {
        Intrinsics.checkNotNullParameter(len, "len");
        Intrinsics.checkNotNullParameter(s, "s");
        this.len = len;
        this.f2095s = s;
    }

    public static final /* synthetic */ void write$Self(HmlShort hmlShort, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], hmlShort.len);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, FiftHexBitStringSerializer.INSTANCE, hmlShort.f2095s);
    }

    public final Unary getLen() {
        return this.len;
    }

    public final BitString getS() {
        return this.f2095s;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HmlShort(BitString s) {
        this(Unary.Companion.m25of(s.getSize()), s);
        Intrinsics.checkNotNullParameter(s, "s");
    }

    @Override // org.ton.hashmap.HmLabel
    public BitString toBitString() {
        return this.f2095s;
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmlShort.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<HmlShort> serializer() {
            return HmlShort$$serializer.INSTANCE;
        }

        public final TlbNegatedConstructor<HmlShort> tlbCodec() {
            return HashMapLabelShortTlbConstructor.INSTANCE;
        }
    }

    static {
        new HmlShort(BitString.Companion.empty());
        $childSerializers = new KSerializer[]{Unary.Companion.serializer(), null};
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hml_short");
        open.field("len", this.len);
        open.field("s", this.f2095s);
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
