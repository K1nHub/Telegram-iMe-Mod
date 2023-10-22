package org.ton.adnl.network;

import io.ktor.network.selector.SelectorManager;
import io.ktor.network.selector.SelectorManagerKt;
import io.ktor.network.sockets.Connection;
import io.ktor.network.sockets.Socket;
import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.ByteWriteChannel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import org.ton.adnl.network.TcpClient;
/* compiled from: TcpClientImpl.kt */
/* loaded from: classes6.dex */
public final class TcpClientImpl implements TcpClient {
    private static final SelectorManager selectorManager;
    private static final ExecutorCoroutineDispatcher tcpDispatcher;
    private Connection connection;
    private final AtomicBoolean isClosed$delegate = AtomicFU.atomic(false);
    private Socket socket;

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        TcpClient.DefaultImpls.dispose(this);
    }

    private final boolean isClosed() {
        return this.isClosed$delegate.getValue();
    }

    private final void setClosed(boolean z) {
        this.isClosed$delegate.setValue(z);
    }

    @Override // org.ton.adnl.network.TcpClient
    public ByteReadChannel getInput() {
        Connection connection = this.connection;
        if (connection == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connection");
            connection = null;
        }
        return connection.getInput();
    }

    @Override // org.ton.adnl.network.TcpClient
    public ByteWriteChannel getOutput() {
        Connection connection = this.connection;
        if (connection == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connection");
            connection = null;
        }
        return connection.getOutput();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object connect(java.lang.String r9, int r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof org.ton.adnl.network.TcpClientImpl$connect$1
            if (r0 == 0) goto L13
            r0 = r11
            org.ton.adnl.network.TcpClientImpl$connect$1 r0 = (org.ton.adnl.network.TcpClientImpl$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.ton.adnl.network.TcpClientImpl$connect$1 r0 = new org.ton.adnl.network.TcpClientImpl$connect$1
            r0.<init>(r8, r11)
        L18:
            r5 = r0
            java.lang.Object r11 = r5.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L3a
            if (r1 != r2) goto L32
            java.lang.Object r9 = r5.L$1
            org.ton.adnl.network.TcpClientImpl r9 = (org.ton.adnl.network.TcpClientImpl) r9
            java.lang.Object r10 = r5.L$0
            org.ton.adnl.network.TcpClientImpl r10 = (org.ton.adnl.network.TcpClientImpl) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L61
        L32:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)
            io.ktor.network.selector.SelectorManager r11 = org.ton.adnl.network.TcpClientImpl.selectorManager
            io.ktor.network.sockets.SocketBuilder r11 = io.ktor.network.sockets.BuildersKt.aSocket(r11)
            io.ktor.network.sockets.Configurable r11 = io.ktor.network.sockets.BuildersKt.tcpNoDelay(r11)
            io.ktor.network.sockets.SocketBuilder r11 = (io.ktor.network.sockets.SocketBuilder) r11
            io.ktor.network.sockets.TcpSocketBuilder r1 = r11.tcp()
            r4 = 0
            r6 = 4
            r7 = 0
            r5.L$0 = r8
            r5.L$1 = r8
            r5.label = r2
            r2 = r9
            r3 = r10
            java.lang.Object r11 = io.ktor.network.sockets.TcpSocketBuilder.connect$default(r1, r2, r3, r4, r5, r6, r7)
            if (r11 != r0) goto L5f
            return r0
        L5f:
            r9 = r8
            r10 = r9
        L61:
            io.ktor.network.sockets.Socket r11 = (io.ktor.network.sockets.Socket) r11
            r9.socket = r11
            io.ktor.network.sockets.Socket r9 = r10.socket
            if (r9 != 0) goto L6f
            java.lang.String r9 = "socket"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r9)
            r9 = 0
        L6f:
            io.ktor.network.sockets.Connection r9 = io.ktor.network.sockets.SocketsKt.connection(r9)
            r10.connection = r9
            r9 = 0
            r10.setClosed(r9)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.network.TcpClientImpl.connect(java.lang.String, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close(null);
    }

    @Override // org.ton.adnl.network.TcpClient
    public void close(Throwable th) {
        if (isClosed()) {
            return;
        }
        Connection connection = this.connection;
        Socket socket = null;
        if (connection == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connection");
            connection = null;
        }
        connection.getInput().cancel(th);
        Connection connection2 = this.connection;
        if (connection2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connection");
            connection2 = null;
        }
        connection2.getOutput().close(th);
        Socket socket2 = this.socket;
        if (socket2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
        } else {
            socket = socket2;
        }
        socket.close();
        setClosed(true);
    }

    /* compiled from: TcpClientImpl.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        ExecutorCoroutineDispatcher newFixedThreadPoolContext = ThreadPoolDispatcherKt.newFixedThreadPoolContext(2, "tcp");
        tcpDispatcher = newFixedThreadPoolContext;
        selectorManager = SelectorManagerKt.SelectorManager(newFixedThreadPoolContext);
    }
}
