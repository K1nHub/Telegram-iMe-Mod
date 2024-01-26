package io.ktor.utils.p032io;

import io.ktor.utils.p032io.core.ByteReadPacket;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
/* compiled from: ByteReadChannelJVM.kt */
/* renamed from: io.ktor.utils.io.ByteReadChannel */
/* loaded from: classes4.dex */
public interface ByteReadChannel {
    boolean cancel(Throwable th);

    Throwable getClosedCause();

    boolean isClosedForWrite();

    <R> Object lookAheadSuspend(Function2<? super LookAheadSuspendSession, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation);

    Object readPacket(int i, Continuation<? super ByteReadPacket> continuation);
}
