package org.ton.api.pub;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.encoding.Base64;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.crypto.Base64ByteArraySerializer;
import org.ton.crypto.Encryptor;
import org.ton.crypto.EncryptorNone;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: pub.kt */
@Serializable
/* loaded from: classes6.dex */
public final class PublicKeyUnencrypted implements PublicKey, Encryptor {
    public static final Companion Companion = new Companion(null);
    private final /* synthetic */ EncryptorNone $$delegate_0;
    private final byte[] data;

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return this.$$delegate_0.encrypt(data);
    }

    public /* synthetic */ PublicKeyUnencrypted(int i, @Serializable(with = Base64ByteArraySerializer.class) byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PublicKeyUnencrypted$$serializer.INSTANCE.getDescriptor());
        }
        this.data = bArr;
        this.$$delegate_0 = EncryptorNone.INSTANCE;
    }

    public PublicKeyUnencrypted(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.$$delegate_0 = EncryptorNone.INSTANCE;
    }

    public final byte[] getData() {
        return this.data;
    }

    @Override // org.ton.api.pub.PublicKey
    public AdnlIdShort toAdnlIdShort() {
        return AdnlIdShort.Companion.m50of(Companion.hash(this));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PublicKeyUnencrypted) && Arrays.equals(this.data, ((PublicKeyUnencrypted) obj).data);
    }

    public int hashCode() {
        return Arrays.hashCode(this.data);
    }

    public String toString() {
        String str = "PublicKeyUnencrypted(data=" + Base64.encode$default(Base64.Default, this.data, 0, 0, 6, null) + ")";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }

    /* compiled from: pub.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PublicKeyUnencrypted> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pub.unenc data:bytes = PublicKey", null, 2, null);
        }

        public final KSerializer<PublicKeyUnencrypted> serializer() {
            return PublicKeyUnencrypted$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter output, PublicKeyUnencrypted value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            TlWriter.writeBytes$default(output, value.getData(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p045tl.TlDecoder
        public PublicKeyUnencrypted decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new PublicKeyUnencrypted(input.readBytes());
        }
    }
}
