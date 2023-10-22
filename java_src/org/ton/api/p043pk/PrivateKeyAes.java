package org.ton.api.p043pk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.p043pk.PrivateKey;
import org.ton.api.pub.PublicKeyAes;
import org.ton.crypto.Decryptor;
import org.ton.crypto.DecryptorAes;
import org.ton.p044tl.ByteString;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: aes.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* renamed from: org.ton.api.pk.PrivateKeyAes */
/* loaded from: classes6.dex */
public final class PrivateKeyAes implements PrivateKey, Decryptor {
    public static final Companion Companion = new Companion(null);
    private final ByteString key;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrivateKeyAes) && Intrinsics.areEqual(this.key, ((PrivateKeyAes) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public /* synthetic */ PrivateKeyAes(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PrivateKeyAes$$serializer.INSTANCE.getDescriptor());
        }
        this.key = byteString;
        new DecryptorAes(byteString.toByteArray());
    }

    public PrivateKeyAes(ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        new DecryptorAes(key.toByteArray());
    }

    public AdnlIdShort toAdnlIdShort() {
        return PrivateKey.DefaultImpls.toAdnlIdShort(this);
    }

    public final ByteString getKey() {
        return this.key;
    }

    @Override // org.ton.api.p043pk.PrivateKey
    public PublicKeyAes publicKey() {
        return new PublicKeyAes(this.key);
    }

    public String toString() {
        return toAdnlIdShort().toString();
    }

    /* compiled from: aes.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyAes$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PrivateKeyAes> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pk.aes key:int256 = PrivateKey", null, 2, null);
        }

        public final KSerializer<PrivateKeyAes> serializer() {
            return PrivateKeyAes$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter output, PrivateKeyAes value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            output.writeRaw(value.getKey());
        }

        @Override // org.ton.p044tl.TlDecoder
        public PrivateKeyAes decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new PrivateKeyAes(input.readByteString(32));
        }
    }
}
