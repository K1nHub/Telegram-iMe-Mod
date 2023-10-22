package org.ton.api.p043pk;

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
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.p043pk.PrivateKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.crypto.Decryptor;
import org.ton.crypto.DecryptorEd25519;
import org.ton.crypto.Ed25519;
import org.ton.p044tl.ByteString;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ed25519.kt */
@Polymorphic
@Serializable
@JsonClassDiscriminator(discriminator = "@type")
/* renamed from: org.ton.api.pk.PrivateKeyEd25519Impl */
/* loaded from: classes6.dex */
public final class PrivateKeyEd25519Impl implements PrivateKeyEd25519, Decryptor {
    public static final Companion Companion = new Companion(null);
    private final /* synthetic */ DecryptorEd25519 $$delegate_0;
    private final Lazy _publicKey$delegate;
    private final ByteString key;

    @Override // org.ton.crypto.Decryptor
    public byte[] sign(byte[] message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return this.$$delegate_0.sign(message);
    }

    /* compiled from: ed25519.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyEd25519Impl$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<PrivateKeyEd25519Impl> serializer() {
            return PrivateKeyEd25519Impl$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ PrivateKeyEd25519Impl(int i, ByteString byteString, SerializationConstructorMarker serializationConstructorMarker) {
        Lazy lazy;
        if (1 != (i & 1)) {
            PluginExceptionsKt.throwMissingFieldException(i, 1, PrivateKeyEd25519Impl$$serializer.INSTANCE.getDescriptor());
        }
        this.key = byteString;
        if (!(getKey().getSize() == 32)) {
            throw new IllegalArgumentException("key must be 32 byte long".toString());
        }
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<PublicKeyEd25519>() { // from class: org.ton.api.pk.PrivateKeyEd25519Impl.3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final PublicKeyEd25519 invoke() {
                return new PublicKeyEd25519(Ed25519.publicKey(PrivateKeyEd25519Impl.this.getKey().toByteArray()));
            }
        });
        this._publicKey$delegate = lazy;
        this.$$delegate_0 = new DecryptorEd25519(getKey().toByteArray());
    }

    public PrivateKeyEd25519Impl(ByteString key) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.$$delegate_0 = new DecryptorEd25519(key.toByteArray());
        if (!(getKey().getSize() == 32)) {
            throw new IllegalArgumentException("key must be 32 byte long".toString());
        }
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<PublicKeyEd25519>() { // from class: org.ton.api.pk.PrivateKeyEd25519Impl$_publicKey$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final PublicKeyEd25519 invoke() {
                return new PublicKeyEd25519(Ed25519.publicKey(PrivateKeyEd25519Impl.this.getKey().toByteArray()));
            }
        });
        this._publicKey$delegate = lazy;
    }

    public AdnlIdShort toAdnlIdShort() {
        return PrivateKeyEd25519.DefaultImpls.toAdnlIdShort(this);
    }

    @Override // org.ton.api.p043pk.PrivateKeyEd25519
    public ByteString getKey() {
        return this.key;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PrivateKeyEd25519Impl(byte[] key) {
        this(ByteString.Companion.of$default(ByteString.Companion, key, 0, 0, 3, null));
        Intrinsics.checkNotNullParameter(key, "key");
    }

    private final PublicKeyEd25519 get_publicKey() {
        return (PublicKeyEd25519) this._publicKey$delegate.getValue();
    }

    @Override // org.ton.api.p043pk.PrivateKey
    public PublicKeyEd25519 publicKey() {
        return get_publicKey();
    }

    public String toString() {
        return toAdnlIdShort().toString();
    }
}
