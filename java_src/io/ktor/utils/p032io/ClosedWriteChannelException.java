package io.ktor.utils.p032io;

import java.util.concurrent.CancellationException;
/* compiled from: ByteWriteChannel.kt */
/* renamed from: io.ktor.utils.io.ClosedWriteChannelException */
/* loaded from: classes4.dex */
public final class ClosedWriteChannelException extends CancellationException {
    public ClosedWriteChannelException(String str) {
        super(str);
    }
}
