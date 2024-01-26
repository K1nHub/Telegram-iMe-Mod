package io.ktor.utils.p032io;

import kotlinx.coroutines.Job;
/* compiled from: Coroutines.kt */
/* renamed from: io.ktor.utils.io.ReaderJob */
/* loaded from: classes4.dex */
public interface ReaderJob extends Job {
    ByteWriteChannel getChannel();
}
