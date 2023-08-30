package io.grpc;

import com.google.common.base.Preconditions;
import io.grpc.Status;
import java.util.concurrent.TimeoutException;
/* loaded from: classes4.dex */
public final class Contexts {
    public static Status statusFromCancelled(Context context) {
        Preconditions.checkNotNull(context, "context must not be null");
        if (context.isCancelled()) {
            Throwable cancellationCause = context.cancellationCause();
            if (cancellationCause == null) {
                return Status.CANCELLED.withDescription("io.grpc.Context was cancelled without error");
            }
            if (cancellationCause instanceof TimeoutException) {
                return Status.DEADLINE_EXCEEDED.withDescription(cancellationCause.getMessage()).withCause(cancellationCause);
            }
            Status fromThrowable = Status.fromThrowable(cancellationCause);
            if (Status.Code.UNKNOWN.equals(fromThrowable.getCode()) && fromThrowable.getCause() == cancellationCause) {
                return Status.CANCELLED.withDescription("Context cancelled").withCause(cancellationCause);
            }
            return fromThrowable.withCause(cancellationCause);
        }
        return null;
    }
}
