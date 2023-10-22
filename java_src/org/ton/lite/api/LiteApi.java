package org.ton.lite.api;

import kotlin.coroutines.Continuation;
import org.ton.lite.api.liteserver.LiteServerSendMsgStatus;
import org.ton.lite.api.liteserver.functions.LiteServerSendMessage;
/* compiled from: LiteApi.kt */
/* loaded from: classes6.dex */
public interface LiteApi {
    Object invoke(LiteServerSendMessage liteServerSendMessage, Continuation<? super LiteServerSendMsgStatus> continuation);
}
