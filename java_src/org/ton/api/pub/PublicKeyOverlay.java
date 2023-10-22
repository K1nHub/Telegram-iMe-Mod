package org.ton.api.pub;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.crypto.Encryptor;
import org.ton.crypto.EncryptorFail;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: pub.kt */
@Serializable
/* loaded from: classes6.dex */
public final class PublicKeyOverlay implements PublicKey, Encryptor {
    public static final Companion Companion = new Companion(null);
    private final /* synthetic */ EncryptorFail $$delegate_0;
    private final byte[] name;

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return this.$$delegate_0.encrypt(data);
    }

    public String toString() {
        return "PublicKeyOverlay(name=" + Arrays.toString(this.name) + ')';
    }

    public /* synthetic */ PublicKeyOverlay(int i, byte[] bArr, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PublicKeyOverlay$$serializer.INSTANCE.getDescriptor());
        }
        this.name = bArr;
        this.$$delegate_0 = EncryptorFail.INSTANCE;
    }

    public PublicKeyOverlay(byte[] name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.$$delegate_0 = EncryptorFail.INSTANCE;
    }

    public final byte[] getName() {
        return this.name;
    }

    @Override // org.ton.api.pub.PublicKey
    public AdnlIdShort toAdnlIdShort() {
        return AdnlIdShort.Companion.m50of(Companion.hash(this));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PublicKeyOverlay) && Arrays.equals(this.name, ((PublicKeyOverlay) obj).name);
    }

    public int hashCode() {
        return Arrays.hashCode(this.name);
    }

    /* compiled from: pub.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PublicKeyOverlay> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pub.overlay name:bytes = PublicKey", null, 2, null);
        }

        public final KSerializer<PublicKeyOverlay> serializer() {
            return PublicKeyOverlay$$serializer.INSTANCE;
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter output, PublicKeyOverlay value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            TlWriter.writeBytes$default(output, value.getName(), 0, 0, 6, (Object) null);
        }

        @Override // org.ton.p044tl.TlDecoder
        public PublicKeyOverlay decode(TlReader input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return new PublicKeyOverlay(input.readBytes());
        }
    }
}
