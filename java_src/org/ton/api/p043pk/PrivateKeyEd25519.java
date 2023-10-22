package org.ton.api.p043pk;

import io.ktor.utils.p032io.core.Input;
import io.ktor.utils.p032io.core.Output;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import org.ton.api.adnl.AdnlIdShort;
import org.ton.api.p043pk.PrivateKey;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.p044tl.ByteString;
import org.ton.p044tl.TlCodec;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* compiled from: ed25519.kt */
/* renamed from: org.ton.api.pk.PrivateKeyEd25519 */
/* loaded from: classes6.dex */
public interface PrivateKeyEd25519 extends PrivateKey {
    public static final Companion Companion = Companion.$$INSTANCE;

    ByteString getKey();

    @Override // org.ton.api.p043pk.PrivateKey
    PublicKeyEd25519 publicKey();

    /* compiled from: ed25519.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyEd25519$DefaultImpls */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static AdnlIdShort toAdnlIdShort(PrivateKeyEd25519 privateKeyEd25519) {
            return PrivateKey.DefaultImpls.toAdnlIdShort(privateKeyEd25519);
        }
    }

    /* compiled from: ed25519.kt */
    /* renamed from: org.ton.api.pk.PrivateKeyEd25519$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion implements TlCodec<PrivateKeyEd25519> {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private final /* synthetic */ PrivateKeyEd25519TlConstructor $$delegate_0 = PrivateKeyEd25519TlConstructor.INSTANCE;

        @Override // org.ton.p044tl.TlDecoder
        public PrivateKeyEd25519 decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decode(reader);
        }

        @Override // org.ton.p044tl.TlDecoder
        public PrivateKeyEd25519 decodeBoxed(Input input) {
            Intrinsics.checkNotNullParameter(input, "input");
            return this.$$delegate_0.decodeBoxed(input);
        }

        @Override // org.ton.p044tl.TlDecoder
        public PrivateKeyEd25519 decodeBoxed(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return this.$$delegate_0.decodeBoxed(reader);
        }

        public PrivateKeyEd25519 decodeBoxed(byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            return this.$$delegate_0.decodeBoxed(byteArray);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(Output output, PrivateKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encode(TlWriter writer, PrivateKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encode(writer, value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(Output output, PrivateKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(output, "output");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(output, (Output) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public void encodeBoxed(TlWriter writer, PrivateKeyEd25519 value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            this.$$delegate_0.encodeBoxed(writer, (TlWriter) value);
        }

        @Override // org.ton.p044tl.TlEncoder
        public byte[] encodeToByteArray(PrivateKeyEd25519 value, boolean z) {
            Intrinsics.checkNotNullParameter(value, "value");
            return this.$$delegate_0.encodeToByteArray(value, z);
        }

        private Companion() {
        }

        public final TlConstructor<PrivateKeyEd25519> tlConstructor() {
            return PrivateKeyEd25519TlConstructor.INSTANCE;
        }

        /* renamed from: of */
        public final PrivateKeyEd25519 m49of(byte[] byteArray) {
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            int length = byteArray.length;
            if (length == 32) {
                byte[] copyOf = Arrays.copyOf(byteArray, byteArray.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, size)");
                return new PrivateKeyEd25519Impl(copyOf);
            } else if (length == 36) {
                return decodeBoxed(byteArray);
            } else {
                throw new IllegalArgumentException("Invalid key size: " + byteArray.length);
            }
        }
    }
}
