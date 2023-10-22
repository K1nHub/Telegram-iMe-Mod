package io.ktor.utils.p032io.internal;

import io.ktor.utils.p032io.ByteBufferChannel;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.Job;
/* compiled from: ByteBufferChannelInternals.kt */
/* renamed from: io.ktor.utils.io.internal.JoiningState */
/* loaded from: classes4.dex */
public final class JoiningState {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _closeWaitJob$FU = AtomicReferenceFieldUpdater.newUpdater(JoiningState.class, Object.class, "_closeWaitJob");
    private volatile /* synthetic */ Object _closeWaitJob;
    private volatile /* synthetic */ int closed;
    private final boolean delegateClose;
    private final ByteBufferChannel delegatedTo;

    public final boolean getDelegateClose() {
        return this.delegateClose;
    }

    public final ByteBufferChannel getDelegatedTo() {
        return this.delegatedTo;
    }

    public final void complete() {
        this.closed = 1;
        Job job = (Job) _closeWaitJob$FU.getAndSet(this, null);
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
    }
}
