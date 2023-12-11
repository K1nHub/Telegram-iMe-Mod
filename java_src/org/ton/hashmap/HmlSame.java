package org.ton.hashmap;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.bitstring.BitString;
import org.ton.tlb.TlbNegatedConstructor;
import org.ton.tlb.TlbObject;
import org.ton.tlb.TlbPrettyPrinter;
/* compiled from: HmlSame.kt */
@Serializable
/* loaded from: classes6.dex */
public final class HmlSame implements HmLabel {
    public static final Companion Companion = new Companion(null);

    /* renamed from: n */
    private final int f2094n;

    /* renamed from: v */
    private final boolean f2095v;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HmlSame) {
            HmlSame hmlSame = (HmlSame) obj;
            return this.f2095v == hmlSame.f2095v && this.f2094n == hmlSame.f2094n;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.f2095v;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.f2094n;
    }

    public /* synthetic */ HmlSame(int i, boolean z, int i2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, HmlSame$$serializer.INSTANCE.getDescriptor());
        }
        this.f2095v = z;
        this.f2094n = i2;
    }

    public HmlSame(boolean z, int i) {
        this.f2095v = z;
        this.f2094n = i;
    }

    public static final /* synthetic */ void write$Self(HmlSame hmlSame, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeBooleanElement(serialDescriptor, 0, hmlSame.f2095v);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, hmlSame.f2094n);
    }

    public final boolean getV() {
        return this.f2095v;
    }

    public final int getN() {
        return this.f2094n;
    }

    @Override // org.ton.hashmap.HmLabel
    public BitString toBitString() {
        int i = this.f2094n;
        boolean[] zArr = new boolean[i];
        for (int i2 = 0; i2 < i; i2++) {
            zArr[i2] = this.f2095v;
        }
        return BitString.Companion.m42of(Arrays.copyOf(zArr, i));
    }

    public String toString() {
        return TlbObject.DefaultImpls.print$default(this, null, 1, null).toString();
    }

    /* compiled from: HmlSame.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<HmlSame> serializer() {
            return HmlSame$$serializer.INSTANCE;
        }

        public final TlbNegatedConstructor<HmlSame> tlbCodec(int i) {
            return new HashMapLabelSameTlbConstructor(i);
        }
    }

    @Override // org.ton.tlb.TlbObject
    public TlbPrettyPrinter print(TlbPrettyPrinter printer) {
        Intrinsics.checkNotNullParameter(printer, "printer");
        TlbPrettyPrinter open = printer.open("hml_same");
        open.field("v", Boolean.valueOf(this.f2095v));
        open.field("n", Integer.valueOf(this.f2094n));
        TlbPrettyPrinter.close$default(open, null, 1, null);
        return printer;
    }
}
