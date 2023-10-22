package kotlinx.coroutines.rx2;

import io.reactivex.functions.Cancellable;
import kotlinx.coroutines.Job;
/* compiled from: RxCancellable.kt */
/* loaded from: classes4.dex */
public final class RxCancellable implements Cancellable {
    private final Job job;

    public RxCancellable(Job job) {
        this.job = job;
    }

    @Override // io.reactivex.functions.Cancellable
    public void cancel() {
        Job.DefaultImpls.cancel$default(this.job, null, 1, null);
    }
}
