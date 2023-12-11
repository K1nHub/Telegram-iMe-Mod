package org.ton.api.dht;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.lang.annotation.Annotation;
import java.util.Arrays;
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
import org.ton.api.adnl.AdnlAddressList;
import org.ton.api.adnl.AdnlAddressList$$serializer;
import org.ton.api.pub.PublicKey;
import org.ton.api.pub.PublicKeyAes;
import org.ton.api.pub.PublicKeyAes$$serializer;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519$$serializer;
import org.ton.api.pub.PublicKeyOverlay;
import org.ton.api.pub.PublicKeyOverlay$$serializer;
import org.ton.api.pub.PublicKeyUnencrypted;
import org.ton.api.pub.PublicKeyUnencrypted$$serializer;
import org.ton.crypto.Base64ByteArraySerializer;
import org.ton.p045tl.TlCodec;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: DhtNode.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class DhtNode {
    private final AdnlAddressList addrList;

    /* renamed from: id */
    private final PublicKey f2029id;
    private final byte[] signature;
    private final int version;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.api.pub.PublicKey", Reflection.getOrCreateKotlinClass(PublicKey.class), new KClass[]{Reflection.getOrCreateKotlinClass(PublicKeyAes.class), Reflection.getOrCreateKotlinClass(PublicKeyEd25519.class), Reflection.getOrCreateKotlinClass(PublicKeyOverlay.class), Reflection.getOrCreateKotlinClass(PublicKeyUnencrypted.class)}, new KSerializer[]{PublicKeyAes$$serializer.INSTANCE, PublicKeyEd25519$$serializer.INSTANCE, PublicKeyOverlay$$serializer.INSTANCE, PublicKeyUnencrypted$$serializer.INSTANCE}, new Annotation[]{new C7503x6c935aed("@type")}), null, null, null};

    public String toString() {
        return "DhtNode(id=" + this.f2029id + ", addrList=" + this.addrList + ", version=" + this.version + ", signature=" + Arrays.toString(this.signature) + ')';
    }

    public /* synthetic */ DhtNode(int i, PublicKey publicKey, AdnlAddressList adnlAddressList, int i2, @Serializable(with = Base64ByteArraySerializer.class) byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, DhtNode$$serializer.INSTANCE.getDescriptor());
        }
        this.f2029id = publicKey;
        this.addrList = adnlAddressList;
        if ((i & 4) == 0) {
            this.version = 0;
        } else {
            this.version = i2;
        }
        if ((i & 8) == 0) {
            this.signature = new byte[0];
        } else {
            this.signature = bArr;
        }
    }

    public DhtNode(PublicKey id, AdnlAddressList addrList, int i, byte[] signature) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(addrList, "addrList");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this.f2029id = id;
        this.addrList = addrList;
        this.version = i;
        this.signature = signature;
    }

    public static final /* synthetic */ void write$Self(DhtNode dhtNode, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], dhtNode.f2029id);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, AdnlAddressList$$serializer.INSTANCE, dhtNode.addrList);
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 2) || dhtNode.version != 0) {
            compositeEncoder.encodeIntElement(serialDescriptor, 2, dhtNode.version);
        }
        if (compositeEncoder.shouldEncodeElementDefault(serialDescriptor, 3) || !Intrinsics.areEqual(dhtNode.getSignature(), new byte[0])) {
            compositeEncoder.encodeSerializableElement(serialDescriptor, 3, Base64ByteArraySerializer.INSTANCE, dhtNode.getSignature());
        }
    }

    public final PublicKey getId() {
        return this.f2029id;
    }

    public final AdnlAddressList getAddrList() {
        return this.addrList;
    }

    public final int getVersion() {
        return this.version;
    }

    public byte[] getSignature() {
        return this.signature;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DhtNode) {
            DhtNode dhtNode = (DhtNode) obj;
            return Intrinsics.areEqual(this.f2029id, dhtNode.f2029id) && Intrinsics.areEqual(this.addrList, dhtNode.addrList) && this.version == dhtNode.version && Arrays.equals(getSignature(), dhtNode.getSignature());
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f2029id.hashCode() * 31) + this.addrList.hashCode()) * 31) + this.version) * 31) + Arrays.hashCode(getSignature());
    }

    /* compiled from: DhtNode.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<DhtNode> {
        private final /* synthetic */ DhtNodeTlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p045tl.TlDecoder
        public DhtNode decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p045tl.TlDecoder
        public DhtNode decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p045tl.TlDecoder
        public DhtNode decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(Output output, DhtNode value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, DhtNode value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(Output output, DhtNode value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encodeBoxed(TlWriter writer, DhtNode value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p045tl.TlEncoder
        public byte[] encodeToByteArray(DhtNode value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
            this.$$delegate_0 = DhtNodeTlConstructor.INSTANCE;
        }

        public final KSerializer<DhtNode> serializer() {
            return DhtNode$$serializer.INSTANCE;
        }
    }
}
