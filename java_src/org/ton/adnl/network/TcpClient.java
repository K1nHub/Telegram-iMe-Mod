package org.ton.adnl.network;

import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.ByteWriteChannel;
import java.io.Closeable;
import kotlinx.coroutines.DisposableHandle;
/* compiled from: TcpClient.kt */
/* loaded from: classes6.dex */
public interface TcpClient extends Closeable, DisposableHandle {
    void close(Throwable th);

    ByteReadChannel getInput();

    ByteWriteChannel getOutput();

    /* compiled from: TcpClient.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static void dispose(TcpClient tcpClient) {
            try {
                tcpClient.close();
            } catch (Throwable unused) {
            }
        }
    }
}
