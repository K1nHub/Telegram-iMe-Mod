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
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: CryptoSignatureSimple.kt */
@Serializable
/* loaded from: classes6.dex */
public final class CryptoSignatureSimple implements CryptoSignature {
    public static final Companion Companion = new Companion(null);

    /* renamed from: r */
    private final BitString f2023r;

    /* renamed from: s */
    private final BitString f2024s;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoSignatureSimple) {
            CryptoSignatureSimple cryptoSignatureSimple = (CryptoSignatureSimple) obj;
            return Intrinsics.areEqual(this.f2023r, cryptoSignatureSimple.f2023r) && Intrinsics.areEqual(this.f2024s, cryptoSignatureSimple.f2024s);
        }
        return false;
    }

    public int hashCode() {
        return (this.f2023r.hashCode() * 31) + this.f2024s.hashCode();
    }

    public String toString() {
        return "CryptoSignatureSimple(r=" + this.f2023r + ", s=" + this.f2024s + ')';
    }

    public /* synthetic */ CryptoSignatureSimple(int i, BitString bitString, BitString bitString2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CryptoSignatureSimple$$serializer.INSTANCE.getDescriptor());
        }
        this.f2023r = bitString;
        this.f2024s = bitString2;
    }

    public CryptoSignatureSimple(BitString r, BitString s) {
        Intrinsics.checkNotNullParameter(r, "r");
        Intrinsics.checkNotNullParameter(s, "s");
        this.f2023r = r;
        this.f2024s = s;
    }

    public static final /* synthetic */ void write$Self(CryptoSignatureSimple cryptoSignatureSimple, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        FiftHexBitStringSerializer fiftHexBitStringSerializer = FiftHexBitStringSerializer.INSTANCE;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, fiftHexBitStringSerializer, cryptoSignatureSimple.f2023r);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, fiftHexBitStringSerializer, cryptoSignatureSimple.f2024s);
    }

    public final BitString getR() {
        return this.f2023r;
    }

    public final BitString getS() {
        return this.f2024s;
    }

    /* compiled from: CryptoSignatureSimple.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<CryptoSignatureSimple> {
        private final /* synthetic */ CryptoSignatureSimpleTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public CryptoSignatureSimple loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CryptoSignatureSimple loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CryptoSignatureSimple value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<CryptoSignatureSimple> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CryptoSignatureSimpleTlbConstructor.INSTANCE;
        }

        public final KSerializer<CryptoSignatureSimple> serializer() {
            return CryptoSignatureSimple$$serializer.INSTANCE;
        }
    }
}
