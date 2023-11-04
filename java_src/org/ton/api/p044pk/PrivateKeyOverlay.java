package org.ton.api.p044pk;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.p044pk.PrivateKey;
import org.ton.api.pub.PublicKeyOverlay;
import org.ton.crypto.Decryptor;
import org.ton.crypto.DecryptorFail;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: overlay.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* renamed from: org.ton.api.pk.PrivateKeyOverlay */
/* loaded from: classes6.dex */
public final class PrivateKeyOverlay implements PrivateKey, Decryptor {
    public static final Companion Companion = new Companion(null);
    private final ByteString name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrivateKeyOverlay) && Intrinsics.areEqual(this.name, ((PrivateKeyOverlay) obj).name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public /* synthetic */ PrivateKeyOverlay(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PrivateKeyOverlay$$serializer.INSTANCE.getDescriptor());
        }
        this.name = byteString;
        DecryptorFail decryptorFail = DecryptorFail.INSTANCE;
    }

    public PrivateKeyOverlay(ByteString name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        DecryptorFail decryptorFail = DecryptorFail.INSTANCE;
    }

    public AdnlIdShort toAdnlIdShort() {
        return PrivateKey.DefaultImpls.toAdnlIdShort(this);
    }

    public final ByteString getName() {
        return this.name;
    }

    @Override // org.ton.api.p044pk.PrivateKey
    public PublicKeyOverlay publicKey() {
        return new PublicKeyOverlay(this.name.toByteArray());
    }

    public String toString() {
        return toAdnlIdShort().toString();
    }

    /* compiled from: overlay.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyOverlay$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PrivateKeyOverlay> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pk.overlay name:bytes = PrivateKey", null, 2, null);
        }

        public final KSerializer<PrivateKeyOverlay> serializer() {
            return PrivateKeyOverlay$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, PrivateKeyOverlay value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            TlWriter.writeBytes$default(writer, value.getName(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p045tl.TlDecoder
        public PrivateKeyOverlay decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new PrivateKeyOverlay(input.readByteString());
        }
    }
}
