package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.Configurable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Builders.kt */
/* loaded from: classes4.dex */
public final class SocketBuilder implements Configurable<SocketBuilder, SocketOptions> {
    private SocketOptions options;
    private final SelectorManager selector;

    public SocketBuilder(SelectorManager selector, SocketOptions options) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(options, "options");
        this.selector = selector;
        this.options = options;
    }

    @Override // io.ktor.network.sockets.Configurable
    public SocketBuilder configure(Function1<? super SocketOptions, Unit> function1) {
        return (SocketBuilder) Configurable.DefaultImpls.configure(this, function1);
    }

    @Override // io.ktor.network.sockets.Configurable
    public SocketOptions getOptions() {
        return this.options;
    }

    @Override // io.ktor.network.sockets.Configurable
    public void setOptions(SocketOptions socketOptions) {
        Intrinsics.checkNotNullParameter(socketOptions, "<set-?>");
        this.options = socketOptions;
    }

    public final TcpSocketBuilder tcp() {
        return new TcpSocketBuilder(this.selector, getOptions().peer$ktor_network());
    }
}
