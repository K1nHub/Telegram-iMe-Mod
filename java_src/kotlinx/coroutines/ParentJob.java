package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
/* compiled from: Job.kt */
/* loaded from: classes6.dex */
public interface ParentJob extends Job {
    CancellationException getChildJobCancellationCause();
}
