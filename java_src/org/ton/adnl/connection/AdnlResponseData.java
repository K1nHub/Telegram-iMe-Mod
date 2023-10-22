package org.ton.adnl.connection;

import io.ktor.utils.p032io.core.ByteReadPacket;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.Clock$System;
import kotlinx.datetime.Instant;
/* compiled from: AdnlRequestData.kt */
/* loaded from: classes6.dex */
public final class AdnlResponseData {
    private final ByteReadPacket body;
    private final CoroutineContext callContext;

    public AdnlResponseData(Instant requestTime, ByteReadPacket body, CoroutineContext callContext) {
        Intrinsics.checkNotNullParameter(requestTime, "requestTime");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(callContext, "callContext");
        this.body = body;
        this.callContext = callContext;
        Clock$System.INSTANCE.now();
    }

    public final ByteReadPacket getBody() {
        return this.body;
    }
}
