package org.ton.api.pub;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ed25519.kt */
/* loaded from: classes6.dex */
public final class PublicKeyEd25519TlConstructor extends TlConstructor<PublicKeyEd25519> {
    public static final PublicKeyEd25519TlConstructor INSTANCE = new PublicKeyEd25519TlConstructor();

    private PublicKeyEd25519TlConstructor() {
        super("pub.ed25519 key:int256 = PublicKey", null, 2, null);
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, PublicKeyEd25519 value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        writer.writeRaw(value.getKey());
    }

    @Override // org.ton.p045tl.TlDecoder
    public PublicKeyEd25519 decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new PublicKeyEd25519(reader.readByteString(32));
    }
}
