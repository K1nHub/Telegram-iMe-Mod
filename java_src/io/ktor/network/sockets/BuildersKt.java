package io.ktor.network.sockets;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Builders.kt */
/* loaded from: classes4.dex */
public final class BuildersKt {
    public static final SocketBuilder aSocket(SelectorManager selector) {
        Intrinsics.checkNotNullParameter(selector, "selector");
        return new SocketBuilder(selector, SocketOptions.Companion.create$ktor_network());
    }

    public static final <T extends Configurable<? extends T, ?>> T tcpNoDelay(T t) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        return (T) t.configure(new Function1<SocketOptions, Unit>() { // from class: io.ktor.network.sockets.BuildersKt$tcpNoDelay$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SocketOptions socketOptions) {
                invoke2(socketOptions);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(SocketOptions configure) {
                Intrinsics.checkNotNullParameter(configure, "$this$configure");
                if (configure instanceof SocketOptions.TCPClientSocketOptions) {
                    ((SocketOptions.TCPClientSocketOptions) configure).setNoDelay(true);
                }
            }
        });
    }
}
