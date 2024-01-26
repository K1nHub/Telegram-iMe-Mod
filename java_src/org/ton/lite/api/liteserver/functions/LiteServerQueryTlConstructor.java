package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LiteServerQuery.kt */
/* loaded from: classes6.dex */
public final class LiteServerQueryTlConstructor extends TlConstructor<LiteServerQuery> {
    public static final LiteServerQueryTlConstructor INSTANCE = new LiteServerQueryTlConstructor();

    private LiteServerQueryTlConstructor() {
        super("liteServer.query data:bytes = Object", null, 2, null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public LiteServerQuery decode(TlReader input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return new LiteServerQuery(input.readBytes());
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter output, LiteServerQuery value) {
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(value, "value");
        TlWriter.writeBytes$default(output, value.getData(), 0, 0, 6, (Object) null);
    }
}
