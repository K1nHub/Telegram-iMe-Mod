package io.ktor.network.sockets;

import io.ktor.network.sockets.Configurable;
import io.ktor.network.sockets.SocketOptions;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Builders.kt */
/* loaded from: classes4.dex */
public interface Configurable<T extends Configurable<? extends T, Options>, Options extends SocketOptions> {
    T configure(Function1<? super Options, Unit> function1);

    Options getOptions();

    void setOptions(Options options);

    /* compiled from: Builders.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static <T extends Configurable<? extends T, Options>, Options extends SocketOptions> T configure(Configurable<? extends T, Options> configurable, Function1<? super Options, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            SocketOptions copy$ktor_network = configurable.getOptions().copy$ktor_network();
            Intrinsics.checkNotNull(copy$ktor_network, "null cannot be cast to non-null type Options of io.ktor.network.sockets.Configurable");
            block.invoke(copy$ktor_network);
            configurable.setOptions(copy$ktor_network);
            Intrinsics.checkNotNull(configurable, "null cannot be cast to non-null type T of io.ktor.network.sockets.Configurable");
            return configurable;
        }
    }
}
