package org.ton.api.pub;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.p043pk.PrivateKeyEd25519;
import org.ton.crypto.Ed25519;
import org.ton.crypto.Encryptor;
import org.ton.crypto.EncryptorEd25519;
import org.ton.p044tl.ByteString;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: ed25519.kt */
@Polymorphic
@Serializable
/* loaded from: classes6.dex */
public final class PublicKeyEd25519 implements PublicKey, Encryptor {
    public static final Companion Companion = new Companion(null);
    private final /* synthetic */ EncryptorEd25519 $$delegate_0;
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
        return (obj instanceof PublicKeyEd25519) && Intrinsics.areEqual(this.key, ((PublicKeyEd25519) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "PublicKeyEd25519(key=" + this.key + ')';
    }

    public /* synthetic */ PublicKeyEd25519(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        Lazy lazy;
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PublicKeyEd25519$$serializer.INSTANCE.getDescriptor());
        }
        this.key = byteString;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<AdnlIdShort>() { // from class: org.ton.api.pub.PublicKeyEd25519.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AdnlIdShort invoke() {
                return AdnlIdShort.Companion.m50of(PublicKeyEd25519.Companion.hash(PublicKeyEd25519.this));
            }
        });
        this._adnlIdShort$delegate = lazy;
        this.$$delegate_0 = new EncryptorEd25519(byteString.toByteArray());
    }

    public PublicKeyEd25519(ByteString key) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.$$delegate_0 = new EncryptorEd25519(key.toByteArray());
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<AdnlIdShort>() { // from class: org.ton.api.pub.PublicKeyEd25519$_adnlIdShort$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AdnlIdShort invoke() {
                return AdnlIdShort.Companion.m50of(PublicKeyEd25519.Companion.hash(PublicKeyEd25519.this));
            }
        });
        this._adnlIdShort$delegate = lazy;
    }

    public final ByteString getKey() {
        return this.key;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PublicKeyEd25519(byte[] key) {
        this(ByteString.Companion.of$default(ByteString.Companion, key, 0, 0, 3, null));
        Intrinsics.checkNotNullParameter(key, "key");
    }

    private final AdnlIdShort get_adnlIdShort() {
        return (AdnlIdShort) this._adnlIdShort$delegate.getValue();
    }

    @Override // org.ton.api.pub.PublicKey
    public AdnlIdShort toAdnlIdShort() {
        return get_adnlIdShort();
    }

    /* compiled from: ed25519.kt */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<PublicKeyEd25519> {
        private final /* synthetic */ PublicKeyEd25519TlConstructor $$delegate_0;

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // org.ton.p044tl.TlDecoder
        public PublicKeyEd25519 decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public PublicKeyEd25519 decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public PublicKeyEd25519 decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, PublicKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, PublicKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, PublicKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, PublicKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(PublicKeyEd25519 value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        public byte[] hash(PublicKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.hash(value);
        }

        private Companion() {
            this.$$delegate_0 = PublicKeyEd25519TlConstructor.INSTANCE;
        }

        public final KSerializer<PublicKeyEd25519> serializer() {
            return PublicKeyEd25519$$serializer.INSTANCE;
        }

        public final TlConstructor<PublicKeyEd25519> tlConstructor() {
            return PublicKeyEd25519TlConstructor.INSTANCE;
        }

        /* renamed from: of */
        public final PublicKeyEd25519 m48of(PrivateKeyEd25519 privateKey) {
            Intrinsics.checkNotNullParameter(privateKey, "privateKey");
            return new PublicKeyEd25519(Ed25519.publicKey(privateKey.getKey().toByteArray()));
        }
    }
}
