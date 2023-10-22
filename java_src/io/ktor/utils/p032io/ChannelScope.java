package io.ktor.utils.p032io;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Coroutines.kt */
/* renamed from: io.ktor.utils.io.ChannelScope */
/* loaded from: classes4.dex */
final class ChannelScope implements ReaderScope, WriterScope, CoroutineScope {
    private final /* synthetic */ CoroutineScope $$delegate_0;
    private final ByteChannel channel;

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    public ChannelScope(CoroutineScope delegate, ByteChannel channel) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(channel, "channel");
        this.channel = channel;
        this.$$delegate_0 = delegate;
    }
}
