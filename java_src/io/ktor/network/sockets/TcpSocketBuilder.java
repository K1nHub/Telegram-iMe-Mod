package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.Configurable;
import io.ktor.network.sockets.SocketOptions;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TcpSocketBuilder.kt */
/* loaded from: classes4.dex */
public final class TcpSocketBuilder implements Configurable<TcpSocketBuilder, SocketOptions> {
    private SocketOptions options;
    private final SelectorManager selector;

    public TcpSocketBuilder(SelectorManager selector, SocketOptions options) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        Intrinsics.checkNotNullParameter(options, "options");
        this.selector = selector;
        this.options = options;
    }

    @Override // io.ktor.network.sockets.Configurable
    public TcpSocketBuilder configure(Function1<? super SocketOptions, Unit> function1) {
        return (TcpSocketBuilder) Configurable.DefaultImpls.configure(this, function1);
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

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object connect$default(TcpSocketBuilder tcpSocketBuilder, String str, int i, Function1 function1, Continuation continuation, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            function1 = new Function1<SocketOptions.TCPClientSocketOptions, Unit>() { // from class: io.ktor.network.sockets.TcpSocketBuilder$connect$2
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
                    Intrinsics.checkNotNullParameter(tCPClientSocketOptions, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
                    invoke2(tCPClientSocketOptions);
                    return Unit.INSTANCE;
                }
            };
        }
        return tcpSocketBuilder.connect(str, i, function1, continuation);
    }

    public final Object connect(String str, int i, Function1<? super SocketOptions.TCPClientSocketOptions, Unit> function1, Continuation<? super Socket> continuation) {
        return connect(new InetSocketAddress(str, i), function1, continuation);
    }

    public final Object connect(SocketAddress socketAddress, Function1<? super SocketOptions.TCPClientSocketOptions, Unit> function1, Continuation<? super Socket> continuation) {
        SelectorManager selectorManager = this.selector;
        SocketOptions.TCPClientSocketOptions tcp$ktor_network = getOptions().peer$ktor_network().tcp$ktor_network();
        function1.invoke(tcp$ktor_network);
        return ConnectUtilsJvmKt.connect(selectorManager, socketAddress, tcp$ktor_network, continuation);
    }
}
