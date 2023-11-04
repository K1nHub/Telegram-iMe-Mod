package org.ton.lite.client;

import kotlin.coroutines.Continuation;
import org.ton.lite.api.LiteApiClient;
import org.ton.lite.api.liteserver.LiteServerAccountState;
import org.ton.lite.api.liteserver.LiteServerSendMsgStatus;
import org.ton.lite.api.liteserver.functions.LiteServerGetAccountState;
import org.ton.lite.api.liteserver.functions.LiteServerSendMessage;
import org.ton.p045tl.TlCodec;
/* compiled from: LiteClient.kt */
/* loaded from: classes6.dex */
public final class LiteClient$liteApi$1 implements LiteApiClient {
    final /* synthetic */ LiteClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LiteClient$liteApi$1(LiteClient liteClient) {
        this.this$0 = liteClient;
    }

    @Override // org.ton.lite.api.LiteApiClient
    public Object invoke(LiteServerGetAccountState liteServerGetAccountState, int i, Continuation<? super LiteServerAccountState> continuation) {
        return LiteApiClient.DefaultImpls.invoke(this, liteServerGetAccountState, i, continuation);
    }

    @Override // org.ton.lite.api.LiteApi
    public Object invoke(LiteServerSendMessage liteServerSendMessage, Continuation<? super LiteServerSendMsgStatus> continuation) {
        return LiteApiClient.DefaultImpls.invoke(this, liteServerSendMessage, continuation);
    }

    @Override // org.ton.lite.api.LiteApiClient
    public <Q, A> Object sendQuery(TlCodec<Q> tlCodec, TlCodec<A> tlCodec2, Q q, int i, Continuation<? super A> continuation) {
        return LiteApiClient.DefaultImpls.sendQuery(this, tlCodec, tlCodec2, q, i, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00fa -> B:13:0x003f). Please submit an issue!!! */
    @Override // org.ton.lite.api.LiteApiClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object sendRawQuery(io.ktor.utils.p032io.core.ByteReadPacket r14, kotlin.coroutines.Continuation<? super io.ktor.utils.p032io.core.ByteReadPacket> r15) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.lite.client.LiteClient$liteApi$1.sendRawQuery(io.ktor.utils.io.core.ByteReadPacket, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
