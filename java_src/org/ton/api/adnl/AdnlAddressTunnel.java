package org.ton.api.adnl;

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
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.pub.PublicKey;
import org.ton.api.pub.PublicKeyAes;
import org.ton.api.pub.PublicKeyAes$$serializer;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519$$serializer;
import org.ton.api.pub.PublicKeyOverlay;
import org.ton.api.pub.PublicKeyOverlay$$serializer;
import org.ton.api.pub.PublicKeyUnencrypted;
import org.ton.api.pub.PublicKeyUnencrypted$$serializer;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: AdnlAddress.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class AdnlAddressTunnel implements AdnlAddress {
    private final PublicKey pubkey;

    /* renamed from: to */
    private final byte[] f2024to;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, new SealedClassSerializer("org.ton.api.pub.PublicKey", Reflection.getOrCreateKotlinClass(PublicKey.class), new KClass[]{Reflection.getOrCreateKotlinClass(PublicKeyAes.class), Reflection.getOrCreateKotlinClass(PublicKeyEd25519.class), Reflection.getOrCreateKotlinClass(PublicKeyOverlay.class), Reflection.getOrCreateKotlinClass(PublicKeyUnencrypted.class)}, new KSerializer[]{PublicKeyAes$$serializer.INSTANCE, PublicKeyEd25519$$serializer.INSTANCE, PublicKeyOverlay$$serializer.INSTANCE, PublicKeyUnencrypted$$serializer.INSTANCE}, new Annotation[]{new C7499x63816b8c("@type")})};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlAddressTunnel) {
            AdnlAddressTunnel adnlAddressTunnel = (AdnlAddressTunnel) obj;
            return Intrinsics.areEqual(this.f2024to, adnlAddressTunnel.f2024to) && Intrinsics.areEqual(this.pubkey, adnlAddressTunnel.pubkey);
        }
        return false;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.f2024to) * 31) + this.pubkey.hashCode();
    }

    public String toString() {
        return "AdnlAddressTunnel(to=" + Arrays.toString(this.f2024to) + ", pubkey=" + this.pubkey + ')';
    }

    public /* synthetic */ AdnlAddressTunnel(int i, byte[] bArr, PublicKey publicKey, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i & 3)) {
            PluginExceptionsKt.throwMissingFieldException(i, 3, AdnlAddressTunnel$$serializer.INSTANCE.getDescriptor());
        }
        this.f2024to = bArr;
        this.pubkey = publicKey;
    }

    public AdnlAddressTunnel(byte[] to, PublicKey pubkey) {
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(pubkey, "pubkey");
        this.f2024to = to;
        this.pubkey = pubkey;
    }

    public static final /* synthetic */ void write$Self(AdnlAddressTunnel adnlAddressTunnel, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, ByteArraySerializer.INSTANCE, adnlAddressTunnel.f2024to);
        compositeEncoder.encodeSerializableElement(serialDescriptor, 1, kSerializerArr[1], adnlAddressTunnel.pubkey);
    }

    public final byte[] getTo() {
        return this.f2024to;
    }

    public final PublicKey getPubkey() {
        return this.pubkey;
    }

    /* compiled from: AdnlAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlAddressTunnel> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.address.tunnel to:int256 pubkey:PublicKey = adnl.Address", null, 2, null);
        }

        public final KSerializer<AdnlAddressTunnel> serializer() {
            return AdnlAddressTunnel$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, AdnlAddressTunnel value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeRaw(value.getTo());
            PublicKey.Companion.encode(writer, (TlWriter) value.getPubkey());
        }

        @Override // org.ton.p045tl.TlDecoder
        public AdnlAddressTunnel decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new AdnlAddressTunnel(reader.readRaw(32), PublicKey.Companion.decode(reader));
        }
    }
}
