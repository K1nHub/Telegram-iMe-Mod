package org.ton.api.p043pk;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p044tl.TlConstructor;
import org.ton.p044tl.TlReader;
import org.ton.p044tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ed25519.kt */
/* renamed from: org.ton.api.pk.PrivateKeyEd25519TlConstructor */
/* loaded from: classes6.dex */
public final class PrivateKeyEd25519TlConstructor extends TlConstructor<PrivateKeyEd25519> {
    public static final PrivateKeyEd25519TlConstructor INSTANCE = new PrivateKeyEd25519TlConstructor();

    private PrivateKeyEd25519TlConstructor() {
        super("pk.ed25519 key:int256 = PrivateKey", null, 2, null);
    }

    @Override // org.ton.p044tl.TlEncoder
    public void encode(TlWriter writer, PrivateKeyEd25519 value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeRaw(value.getKey());
    }

    @Override // org.ton.p044tl.TlDecoder
    public PrivateKeyEd25519 decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new PrivateKeyEd25519Impl(reader.readByteString(32));
    }
}
