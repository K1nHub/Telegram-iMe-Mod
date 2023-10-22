package io.ktor.network.sockets;

import io.ktor.network.selector.Selectable;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import io.ktor.utils.p032io.ByteChannel;
import io.ktor.utils.p032io.CoroutinesKt;
import io.ktor.utils.p032io.ReaderJob;
import java.nio.channels.WritableByteChannel;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
/* compiled from: CIOWriter.kt */
/* loaded from: classes4.dex */
public final class CIOWriterKt {
    public static final ReaderJob attachForWritingDirectImpl(CoroutineScope coroutineScope, ByteChannel channel, WritableByteChannel nioChannel, Selectable selectable, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(nioChannel, "nioChannel");
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        Intrinsics.checkNotNullParameter(selector, "selector");
        return CoroutinesKt.reader(coroutineScope, Dispatchers.getUnconfined().plus(new CoroutineName("cio-to-nio-writer")), channel, new CIOWriterKt$attachForWritingDirectImpl$1(selectable, channel, nioChannel, tCPClientSocketOptions, selector, null));
    }
}
