package kotlinx.coroutines;
/* compiled from: JobSupport.kt */
/* loaded from: classes4.dex */
public class JobImpl extends JobSupport implements CompletableJob {
    private final boolean handlesException;

    @Override // kotlinx.coroutines.JobSupport
    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return true;
    }

    public JobImpl(Job job) {
        super(true);
        initParentJob(job);
        this.handlesException = handlesException();
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean getHandlesException$kotlinx_coroutines_core() {
        return this.handlesException;
    }

    private final boolean handlesException() {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        ChildHandleNode childHandleNode = parentHandle$kotlinx_coroutines_core instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core : null;
        if (childHandleNode == null) {
            return false;
        }
        JobSupport job = childHandleNode.getJob();
        while (!job.getHandlesException$kotlinx_coroutines_core()) {
            ChildHandle parentHandle$kotlinx_coroutines_core2 = job.getParentHandle$kotlinx_coroutines_core();
            ChildHandleNode childHandleNode2 = parentHandle$kotlinx_coroutines_core2 instanceof ChildHandleNode ? (ChildHandleNode) parentHandle$kotlinx_coroutines_core2 : null;
            if (childHandleNode2 == null) {
                return false;
            }
            job = childHandleNode2.getJob();
        }
        return true;
    }
}
