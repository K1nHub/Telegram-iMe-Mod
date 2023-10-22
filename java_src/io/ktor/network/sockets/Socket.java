package io.ktor.network.sockets;

import java.io.Closeable;
import kotlinx.coroutines.DisposableHandle;
/* compiled from: Sockets.kt */
/* loaded from: classes4.dex */
public interface Socket extends Closeable, DisposableHandle, AReadable, AWritable {
}
