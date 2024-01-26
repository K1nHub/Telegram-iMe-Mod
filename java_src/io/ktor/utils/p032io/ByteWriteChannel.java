package io.ktor.utils.p032io;

import io.ktor.utils.p032io.core.ByteReadPacket;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
/* compiled from: ByteWriteChannel.kt */
/* renamed from: io.ktor.utils.io.ByteWriteChannel */
/* loaded from: classes4.dex */
public interface ByteWriteChannel {
    boolean close(Throwable th);

    void flush();

    Object write(int i, Function1<? super ByteBuffer, Unit> function1, Continuation<? super Unit> continuation);

    Object writeFully(ByteBuffer byteBuffer, Continuation<? super Unit> continuation);

    Object writeFully(byte[] bArr, int i, int i2, Continuation<? super Unit> continuation);

    Object writePacket(ByteReadPacket byteReadPacket, Continuation<? super Unit> continuation);

    /* compiled from: ByteWriteChannel.kt */
    /* renamed from: io.ktor.utils.io.ByteWriteChannel$DefaultImpls */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object write$default(ByteWriteChannel byteWriteChannel, int i, Function1 function1, Continuation continuation, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    i = 1;
                }
                return byteWriteChannel.write(i, function1, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
    }
}
