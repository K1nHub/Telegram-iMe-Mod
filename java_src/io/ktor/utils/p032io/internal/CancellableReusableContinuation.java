package io.ktor.utils.p032io.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
/* compiled from: CancellableReusableContinuation.kt */
/* renamed from: io.ktor.utils.io.internal.CancellableReusableContinuation */
/* loaded from: classes4.dex */
public final class CancellableReusableContinuation<T> implements Continuation<T> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater state$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableReusableContinuation.class, Object.class, "state");
    private static final /* synthetic */ AtomicReferenceFieldUpdater jobCancellationHandler$FU = AtomicReferenceFieldUpdater.newUpdater(CancellableReusableContinuation.class, Object.class, "jobCancellationHandler");
    private volatile /* synthetic */ Object state = null;
    private volatile /* synthetic */ Object jobCancellationHandler = null;

    public final void close(T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        Result.Companion companion = Result.Companion;
        resumeWith(Result.m1940constructorimpl(value));
        JobRelation jobRelation = (JobRelation) jobCancellationHandler$FU.getAndSet(this, null);
        if (jobRelation != null) {
            jobRelation.dispose();
        }
    }

    public final void close(Throwable cause) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Result.Companion companion = Result.Companion;
        resumeWith(Result.m1940constructorimpl(ResultKt.createFailure(cause)));
        JobRelation jobRelation = (JobRelation) jobCancellationHandler$FU.getAndSet(this, null);
        if (jobRelation != null) {
            jobRelation.dispose();
        }
    }

    public final Object completeSuspendBlock(Continuation<? super T> actual) {
        Object coroutine_suspended;
        Intrinsics.checkNotNullParameter(actual, "actual");
        while (true) {
            Object obj = this.state;
            if (obj == null) {
                if (state$FU.compareAndSet(this, null, actual)) {
                    parent(actual.getContext());
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return coroutine_suspended;
                }
            } else if (state$FU.compareAndSet(this, obj, null)) {
                if (obj instanceof Throwable) {
                    throw ((Throwable) obj);
                }
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of io.ktor.utils.io.internal.CancellableReusableContinuation");
                return obj;
            }
        }
    }

    private final void parent(CoroutineContext coroutineContext) {
        Object obj;
        JobRelation jobRelation;
        Job job = (Job) coroutineContext.get(Job.Key);
        JobRelation jobRelation2 = (JobRelation) this.jobCancellationHandler;
        if ((jobRelation2 != null ? jobRelation2.getJob() : null) == job) {
            return;
        }
        if (job == null) {
            JobRelation jobRelation3 = (JobRelation) jobCancellationHandler$FU.getAndSet(this, null);
            if (jobRelation3 != null) {
                jobRelation3.dispose();
                return;
            }
            return;
        }
        JobRelation jobRelation4 = new JobRelation(this, job);
        do {
            obj = this.jobCancellationHandler;
            jobRelation = (JobRelation) obj;
            if (jobRelation != null && jobRelation.getJob() == job) {
                jobRelation4.dispose();
                return;
            }
        } while (!jobCancellationHandler$FU.compareAndSet(this, obj, jobRelation4));
        if (jobRelation != null) {
            jobRelation.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notParent(CancellableReusableContinuation<T>.JobRelation jobRelation) {
        jobCancellationHandler$FU.compareAndSet(this, jobRelation, null);
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        CoroutineContext context;
        Object obj = this.state;
        Continuation continuation = obj instanceof Continuation ? (Continuation) obj : null;
        return (continuation == null || (context = continuation.getContext()) == null) ? EmptyCoroutineContext.INSTANCE : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CancellableReusableContinuation.kt */
    /* renamed from: io.ktor.utils.io.internal.CancellableReusableContinuation$JobRelation */
    /* loaded from: classes4.dex */
    public final class JobRelation implements Function1<Throwable, Unit> {
        private DisposableHandle handler;
        private final Job job;
        final /* synthetic */ CancellableReusableContinuation<T> this$0;

        public JobRelation(CancellableReusableContinuation cancellableReusableContinuation, Job job) {
            Intrinsics.checkNotNullParameter(job, "job");
            this.this$0 = cancellableReusableContinuation;
            this.job = job;
            DisposableHandle invokeOnCompletion$default = Job.DefaultImpls.invokeOnCompletion$default(job, true, false, this, 2, null);
            if (job.isActive()) {
                this.handler = invokeOnCompletion$default;
            }
        }

        public final Job getJob() {
            return this.job;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public void invoke2(Throwable th) {
            this.this$0.notParent(this);
            dispose();
            if (th != null) {
                this.this$0.resumeWithExceptionContinuationOnly(this.job, th);
            }
        }

        public final void dispose() {
            DisposableHandle disposableHandle = this.handler;
            if (disposableHandle != null) {
                this.handler = null;
                disposableHandle.dispose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resumeWithExceptionContinuationOnly(Job job, Throwable th) {
        Object obj;
        Continuation continuation;
        do {
            obj = this.state;
            if (!(obj instanceof Continuation)) {
                return;
            }
            continuation = (Continuation) obj;
            if (continuation.getContext().get(Job.Key) != job) {
                return;
            }
        } while (!state$FU.compareAndSet(this, obj, null));
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.coroutines.Continuation<T of io.ktor.utils.io.internal.CancellableReusableContinuation>");
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m1940constructorimpl(ResultKt.createFailure(th)));
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        Object obj2;
        Object obj3;
        do {
            obj2 = this.state;
            if (obj2 == null) {
                obj3 = Result.m1943exceptionOrNullimpl(obj);
                if (obj3 == null) {
                    ResultKt.throwOnFailure(obj);
                    obj3 = obj;
                }
            } else if (!(obj2 instanceof Continuation)) {
                return;
            } else {
                obj3 = null;
            }
        } while (!state$FU.compareAndSet(this, obj2, obj3));
        if (obj2 instanceof Continuation) {
            ((Continuation) obj2).resumeWith(obj);
        }
    }
}
