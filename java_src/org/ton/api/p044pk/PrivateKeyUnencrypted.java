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
import org.ton.api.pub.PublicKeyUnencrypted;
import org.ton.crypto.Decryptor;
import org.ton.crypto.DecryptorNone;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: unenc.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* renamed from: org.ton.api.pk.PrivateKeyUnencrypted */
/* loaded from: classes6.dex */
public final class PrivateKeyUnencrypted implements PrivateKey, Decryptor {
    public static final Companion Companion = new Companion(null);
    private final ByteString data;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PrivateKeyUnencrypted) && Intrinsics.areEqual(this.data, ((PrivateKeyUnencrypted) obj).data);
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    public /* synthetic */ PrivateKeyUnencrypted(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PrivateKeyUnencrypted$$serializer.INSTANCE.getDescriptor());
        }
        this.data = byteString;
        DecryptorNone decryptorNone = DecryptorNone.INSTANCE;
    }

    public PrivateKeyUnencrypted(ByteString data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        DecryptorNone decryptorNone = DecryptorNone.INSTANCE;
    }

    public AdnlIdShort toAdnlIdShort() {
        return PrivateKey.DefaultImpls.toAdnlIdShort(this);
    }

    public final ByteString getData() {
        return this.data;
    }

    @Override // org.ton.api.p044pk.PrivateKey
    public PublicKeyUnencrypted publicKey() {
        return new PublicKeyUnencrypted(this.data.toByteArray());
    }

    public String toString() {
        return toAdnlIdShort().toString();
    }

    /* compiled from: unenc.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyUnencrypted$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PrivateKeyUnencrypted> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pk.unenc data:bytes = PrivateKey", null, 2, null);
        }

        public final KSerializer<PrivateKeyUnencrypted> serializer() {
            return PrivateKeyUnencrypted$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, PrivateKeyUnencrypted value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            TlWriter.writeBytes$default(writer, value.getData(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p045tl.TlDecoder
        public PrivateKeyUnencrypted decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new PrivateKeyUnencrypted(ByteString.Companion.of$default(ByteString.Companion, reader.readBytes(), 0, 0, 3, null));
        }
    }
}
