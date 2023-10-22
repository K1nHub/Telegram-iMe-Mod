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
import org.ton.bitstring.BitString;
import org.ton.bitstring.FiftHexBitStringSerializer;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: CryptoSignaturePair.kt */
@Serializable
/* loaded from: classes6.dex */
public final class CryptoSignaturePair {
    private final BitString node_id_short;
    private final CryptoSignature sign;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new SealedClassSerializer("org.ton.block.CryptoSignature", Reflection.getOrCreateKotlinClass(CryptoSignature.class), new KClass[]{Reflection.getOrCreateKotlinClass(ChainedSignature.class), Reflection.getOrCreateKotlinClass(CryptoSignatureSimple.class)}, new KSerializer[]{ChainedSignature$$serializer.INSTANCE, CryptoSignatureSimple$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.block.CryptoSignaturePair$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
        if (obj instanceof CryptoSignaturePair) {
            CryptoSignaturePair cryptoSignaturePair = (CryptoSignaturePair) obj;
            return Intrinsics.areEqual(this.node_id_short, cryptoSignaturePair.node_id_short) && Intrinsics.areEqual(this.sign, cryptoSignaturePair.sign);
        }
        return false;
    }

    public int hashCode() {
        return (this.node_id_short.hashCode() * 31) + this.sign.hashCode();
    }

    public String toString() {
        return "CryptoSignaturePair(node_id_short=" + this.node_id_short + ", sign=" + this.sign + ')';
    }

    public /* synthetic */ CryptoSignaturePair(int i, BitString bitString, CryptoSignature cryptoSignature, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, CryptoSignaturePair$$serializer.INSTANCE.getDescriptor());
        }
        this.node_id_short = bitString;
        this.sign = cryptoSignature;
    }

    public CryptoSignaturePair(BitString node_id_short, CryptoSignature sign) {
        Intrinsics.checkNotNullParameter(node_id_short, "node_id_short");
        Intrinsics.checkNotNullParameter(sign, "sign");
        this.node_id_short = node_id_short;
        this.sign = sign;
    }

    public static final /* synthetic */ void write$Self(CryptoSignaturePair cryptoSignaturePair, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, FiftHexBitStringSerializer.INSTANCE, cryptoSignaturePair.node_id_short);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], cryptoSignaturePair.sign);
    }

    public final BitString getNode_id_short() {
        return this.node_id_short;
    }

    public final CryptoSignature getSign() {
        return this.sign;
    }

    /* compiled from: CryptoSignaturePair.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlbConstructorProvider<CryptoSignaturePair> {
        private final /* synthetic */ CryptoSignaturePairTlbConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.tlb.TlbLoader
        public CryptoSignaturePair loadTlb(Cell cell) {
            Intrinsics.checkNotNullParameter(cell, "cell");
            return this.$$delegate_0.loadTlb(cell);
        }

        @Override // org.ton.tlb.TlbLoader
        public CryptoSignaturePair loadTlb(CellSlice cellSlice) {
            Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
            return this.$$delegate_0.loadTlb(cellSlice);
        }

        @Override // org.ton.tlb.TlbStorer
        public void storeTlb(CellBuilder cellBuilder, CryptoSignaturePair value) {
            Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.storeTlb(cellBuilder, value);
        }

        @Override // org.ton.tlb.providers.TlbConstructorProvider
        public org.ton.tlb.TlbConstructor<CryptoSignaturePair> tlbConstructor() {
            return this.$$delegate_0.tlbConstructor();
        }

        private Companion() {
            this.$$delegate_0 = CryptoSignaturePairTlbConstructor.INSTANCE;
        }

        public final KSerializer<CryptoSignaturePair> serializer() {
            return CryptoSignaturePair$$serializer.INSTANCE;
        }
    }
}
