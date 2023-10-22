package org.ton.block;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: ChainedSignature.kt */
@Serializable
/* loaded from: classes6.dex */
public final class ChainedSignature implements CryptoSignature {
    public static final Companion Companion = new Companion(null);
    private final SignedCertificate signed_crt;
    private final CryptoSignatureSimple temp_key_signature;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChainedSignature) {
            ChainedSignature chainedSignature = (ChainedSignature) obj;
            return Intrinsics.areEqual(this.signed_crt, chainedSignature.signed_crt) && Intrinsics.areEqual(this.temp_key_signature, chainedSignature.temp_key_signature);
        }
        return false;
    }

    public int hashCode() {
        return (this.signed_crt.hashCode() * 31) + this.temp_key_signature.hashCode();
    }

    public String toString() {
        return "ChainedSignature(signed_crt=" + this.signed_crt + ", temp_key_signature=" + this.temp_key_signature + ')';
    }

    public /* synthetic */ ChainedSignature(int i, SignedCertificate signedCertificate, CryptoSignatureSimple cryptoSignatureSimple, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, ChainedSignature$$serializer.INSTANCE.getDescriptor());
        }
        this.signed_crt = signedCertificate;
        this.temp_key_signature = cryptoSignatureSimple;
    }

    public ChainedSignature(SignedCertificate signed_crt, CryptoSignatureSimple temp_key_signature) {
        Intrinsics.checkNotNullParameter(signed_crt, "signed_crt");
        Intrinsics.checkNotNullParameter(temp_key_signature, "temp_key_signature");
        this.signed_crt = signed_crt;
        this.temp_key_signature = temp_key_signature;
    }

    public static final /* synthetic */ void write$Self(ChainedSignature chainedSignature, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, SignedCertificate$$serializer.INSTANCE, chainedSignature.signed_crt);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, CryptoSignatureSimple$$serializer.INSTANCE, chainedSignature.temp_key_signature);
    }

    public final SignedCertificate getSigned_crt() {
        return this.signed_crt;
    }

    public final CryptoSignatureSimple getTemp_key_signature() {
        return this.temp_key_signature;
    }

    /* compiled from: ChainedSignature.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<ChainedSignature> {
        private final /* synthetic */ ChainedSignatureTLbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public ChainedSignature loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public ChainedSignature loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, ChainedSignature value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<ChainedSignature> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = ChainedSignatureTLbConstructor.INSTANCE;
        }

        public final KSerializer<ChainedSignature> serializer() {
            return ChainedSignature$$serializer.INSTANCE;
        }
    }
}
