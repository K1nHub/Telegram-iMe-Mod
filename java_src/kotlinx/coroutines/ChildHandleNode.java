package kotlinx.coroutines;

import kotlin.Unit;
/* compiled from: JobSupport.kt */
/* loaded from: classes4.dex */
public final class ChildHandleNode extends JobCancellingNode implements ChildHandle {
    public final ChildJob childJob;

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    public ChildHandleNode(ChildJob childJob) {
        this.childJob = childJob;
    }

    @Override // kotlinx.coroutines.ChildHandle
    public Job getParent() {
        return getJob();
    }

    @Override // kotlinx.coroutines.CompletionHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        this.childJob.parentCancelled(getJob());
    }

    @Override // kotlinx.coroutines.ChildHandle
    public boolean childCancelled(Throwable th) {
        return getJob().childCancelled(th);
    }
}
