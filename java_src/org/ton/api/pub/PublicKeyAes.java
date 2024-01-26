package org.ton.api.pub;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.crypto.Encryptor;
import org.ton.crypto.EncryptorAes;
import org.ton.p045tl.ByteString;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: pub.kt */
@Serializable
/* loaded from: classes6.dex */
public final class PublicKeyAes implements PublicKey, Encryptor {
    public static final Companion Companion = new Companion(null);
    private final /* synthetic */ EncryptorAes $$delegate_0;
    private final Lazy _adnlIdShort$delegate;
    private final ByteString key;

    @Override // org.ton.crypto.Encryptor
    public byte[] encrypt(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return this.$$delegate_0.encrypt(data);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PublicKeyAes) && Intrinsics.areEqual(this.key, ((PublicKeyAes) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "PublicKeyAes(key=" + this.key + ')';
    }

    public /* synthetic */ PublicKeyAes(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        Lazy lazy;
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PublicKeyAes$$serializer.INSTANCE.getDescriptor());
        }
        this.key = byteString;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<AdnlIdShort>() { // from class: org.ton.api.pub.PublicKeyAes.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AdnlIdShort invoke() {
                return AdnlIdShort.Companion.m50of(PublicKeyAes.Companion.hash(PublicKeyAes.this));
            }
        });
        this._adnlIdShort$delegate = lazy;
        this.$$delegate_0 = new EncryptorAes(byteString.toByteArray());
    }

    public PublicKeyAes(ByteString key) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.$$delegate_0 = new EncryptorAes(key.toByteArray());
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<AdnlIdShort>() { // from class: org.ton.api.pub.PublicKeyAes$_adnlIdShort$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AdnlIdShort invoke() {
                return AdnlIdShort.Companion.m50of(PublicKeyAes.Companion.hash(PublicKeyAes.this));
            }
        });
        this._adnlIdShort$delegate = lazy;
    }

    public final ByteString getKey() {
        return this.key;
    }

    private final AdnlIdShort get_adnlIdShort() {
        return (AdnlIdShort) this._adnlIdShort$delegate.getValue();
    }

    @Override // org.ton.api.pub.PublicKey
    public AdnlIdShort toAdnlIdShort() {
        return get_adnlIdShort();
    }

    /* compiled from: pub.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<PublicKeyAes> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("pub.aes key:int256 = PublicKey", null, 2, null);
        }

        public final KSerializer<PublicKeyAes> serializer() {
            return PublicKeyAes$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, PublicKeyAes value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            writer.writeRaw(value.getKey());
        }

        @Override // org.ton.p045tl.TlDecoder
        public PublicKeyAes decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new PublicKeyAes(reader.readByteString(32));
        }
    }
}
