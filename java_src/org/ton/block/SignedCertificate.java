package org.ton.block;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: SignedCertificate.kt */
@Serializable
/* loaded from: classes6.dex */
public final class SignedCertificate {
    private final Certificate certificate;
    private final CryptoSignature certificate_signature;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new SealedClassSerializer("org.ton.block.CryptoSignature", Reflection.getOrCreateKotlinClass(CryptoSignature.class), new KClass[]{Reflection.getOrCreateKotlinClass(ChainedSignature.class), Reflection.getOrCreateKotlinClass(CryptoSignatureSimple.class)}, new KSerializer[]{ChainedSignature$$serializer.INSTANCE, CryptoSignatureSimple$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.SignedCertificate$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
        private final /* synthetic */ String discriminator;

        {
            Intrinsics.checkNotNullParameter(discriminator, "discriminator");
            this.discriminator = discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final /* synthetic */ Class annotationType() {
            return JsonClassDiscriminator.class;
        }

        @Override // kotlinx.serialization.json.JsonClassDiscriminator
        public final /* synthetic */ String discriminator() {
            return this.discriminator;
        }

        @Override // java.lang.annotation.Annotation
        public final boolean equals(Object obj) {
            return (obj instanceof JsonClassDiscriminator) && Intrinsics.areEqual(discriminator(), ((JsonClassDiscriminator) obj).discriminator());
        }

        @Override // java.lang.annotation.Annotation
        public final int hashCode() {
            return this.discriminator.hashCode() ^ 707790692;
        }

        @Override // java.lang.annotation.Annotation
        public final String toString() {
            return "@kotlinx.serialization.json.JsonClassDiscriminator(discriminator=" + this.discriminator + ')';
        }
    }})};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SignedCertificate) {
            SignedCertificate signedCertificate = (SignedCertificate) obj;
            return Intrinsics.areEqual(this.certificate, signedCertificate.certificate) && Intrinsics.areEqual(this.certificate_signature, signedCertificate.certificate_signature);
        }
        return false;
    }

    public int hashCode() {
        return (this.certificate.hashCode() * 31) + this.certificate_signature.hashCode();
    }

    public String toString() {
        return "SignedCertificate(certificate=" + this.certificate + ", certificate_signature=" + this.certificate_signature + ')';
    }

    public /* synthetic */ SignedCertificate(int i, Certificate certificate, CryptoSignature cryptoSignature, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, SignedCertificate$$serializer.INSTANCE.getDescriptor());
        }
        this.certificate = certificate;
        this.certificate_signature = cryptoSignature;
    }

    public SignedCertificate(Certificate certificate, CryptoSignature certificate_signature) {
        Intrinsics.checkNotNullParameter(certificate, "certificate");
        Intrinsics.checkNotNullParameter(certificate_signature, "certificate_signature");
        this.certificate = certificate;
        this.certificate_signature = certificate_signature;
    }

    public static final /* synthetic */ void write$Self(SignedCertificate signedCertificate, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, Certificate$$serializer.INSTANCE, signedCertificate.certificate);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], signedCertificate.certificate_signature);
    }

    public final Certificate getCertificate() {
        return this.certificate;
    }

    public final CryptoSignature getCertificate_signature() {
        return this.certificate_signature;
    }

    /* compiled from: SignedCertificate.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<SignedCertificate> {
        private final /* synthetic */ SignedCertificatedTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public SignedCertificate loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public SignedCertificate loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, SignedCertificate value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<SignedCertificate> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = SignedCertificatedTlbConstructor.INSTANCE;
        }

        public final KSerializer<SignedCertificate> serializer() {
            return SignedCertificate$$serializer.INSTANCE;
        }
    }
}
