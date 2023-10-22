package io.ktor.utils.p032io;

import kotlinx.coroutines.Job;
/* compiled from: ByteChannelCtor.kt */
/* renamed from: io.ktor.utils.io.ByteChannel */
/* loaded from: classes4.dex */
public interface ByteChannel extends ByteReadChannel, ByteWriteChannel {
    void attachJob(Job job);
}
