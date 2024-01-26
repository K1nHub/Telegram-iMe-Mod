package io.ktor.network.sockets;

import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.ByteWriteChannel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Sockets.kt */
/* loaded from: classes4.dex */
public final class Connection {
    private final ByteReadChannel input;
    private final ByteWriteChannel output;
    private final Socket socket;

    public Connection(Socket socket, ByteReadChannel input, ByteWriteChannel output) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        this.socket = socket;
        this.input = input;
        this.output = output;
    }

    public final ByteReadChannel getInput() {
        return this.input;
    }

    public final ByteWriteChannel getOutput() {
        return this.output;
    }
}
