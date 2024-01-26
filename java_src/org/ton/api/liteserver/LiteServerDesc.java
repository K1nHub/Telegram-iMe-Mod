package org.ton.api.liteserver;

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
import org.ton.api.pub.PublicKey;
import org.ton.api.pub.PublicKeyAes;
import org.ton.api.pub.PublicKeyAes$$serializer;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519$$serializer;
import org.ton.api.pub.PublicKeyOverlay;
import org.ton.api.pub.PublicKeyOverlay$$serializer;
import org.ton.api.pub.PublicKeyUnencrypted;
import org.ton.api.pub.PublicKeyUnencrypted$$serializer;
/* compiled from: LiteServerDesc.kt */
@Serializable
/* loaded from: classes6.dex */
public final class LiteServerDesc {

    /* renamed from: id */
    private final PublicKey f2050id;

    /* renamed from: ip */
    private final int f2051ip;
    private final int port;
    public static final Companion Companion = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {new SealedClassSerializer("org.ton.api.pub.PublicKey", Reflection.getOrCreateKotlinClass(PublicKey.class), new KClass[]{Reflection.getOrCreateKotlinClass(PublicKeyAes.class), Reflection.getOrCreateKotlinClass(PublicKeyEd25519.class), Reflection.getOrCreateKotlinClass(PublicKeyOverlay.class), Reflection.getOrCreateKotlinClass(PublicKeyUnencrypted.class)}, new KSerializer[]{PublicKeyAes$$serializer.INSTANCE, PublicKeyEd25519$$serializer.INSTANCE, PublicKeyOverlay$$serializer.INSTANCE, PublicKeyUnencrypted$$serializer.INSTANCE}, new Annotation[]{new JsonClassDiscriminator("@type") { // from class: org.ton.api.liteserver.LiteServerDesc$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0
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
    }}), null, null};

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LiteServerDesc) {
            LiteServerDesc liteServerDesc = (LiteServerDesc) obj;
            return Intrinsics.areEqual(this.f2050id, liteServerDesc.f2050id) && this.f2051ip == liteServerDesc.f2051ip && this.port == liteServerDesc.port;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f2050id.hashCode() * 31) + this.f2051ip) * 31) + this.port;
    }

    /* compiled from: LiteServerDesc.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<LiteServerDesc> serializer() {
            return LiteServerDesc$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ LiteServerDesc(int i, PublicKey publicKey, int i2, int i3, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i & 7)) {
            PluginExceptionsKt.throwMissingFieldException(i, 7, LiteServerDesc$$serializer.INSTANCE.getDescriptor());
        }
        this.f2050id = publicKey;
        this.f2051ip = i2;
        this.port = i3;
    }

    public static final /* synthetic */ void write$Self(LiteServerDesc liteServerDesc, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor) {
        compositeEncoder.encodeSerializableElement(serialDescriptor, 0, $childSerializers[0], liteServerDesc.f2050id);
        compositeEncoder.encodeIntElement(serialDescriptor, 1, liteServerDesc.f2051ip);
        compositeEncoder.encodeIntElement(serialDescriptor, 2, liteServerDesc.port);
    }

    public final PublicKey getId() {
        return this.f2050id;
    }

    public final int getIp() {
        return this.f2051ip;
    }

    public final int getPort() {
        return this.port;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f2051ip);
        sb.append(':');
        sb.append(this.port);
        sb.append(':');
        sb.append(this.f2050id);
        return sb.toString();
    }
}
