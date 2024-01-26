package org.ton.lite.api.liteserver.functions;

import kotlin.jvm.internal.Intrinsics;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
/* compiled from: LiteServerSendMessage.kt */
/* loaded from: classes6.dex */
final class LiteServerSendMessageTlConstructor extends TlConstructor<LiteServerSendMessage> {
    public static final LiteServerSendMessageTlConstructor INSTANCE = new LiteServerSendMessageTlConstructor();

    private LiteServerSendMessageTlConstructor() {
        super("liteServer.sendMessage body:bytes = liteServer.SendMsgStatus", null, 2, null);
    }

    @Override // org.ton.p045tl.TlDecoder
    public LiteServerSendMessage decode(TlReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        return new LiteServerSendMessage(reader.readBytes());
    }

    @Override // org.ton.p045tl.TlEncoder
    public void encode(TlWriter writer, LiteServerSendMessage value) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(value, "value");
        TlWriter.writeBytes$default(writer, value.getBody(), 0, 0, 6, (Object) null);
    }
}
