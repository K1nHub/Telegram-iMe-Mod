package io.grpc;
/* loaded from: classes4.dex */
public class StatusException extends Exception {
    private final boolean fillInStackTrace;
    private final Status status;

    public StatusException(Status status) {
        this(status, null);
    }

    public StatusException(Status status, Metadata metadata) {
        this(status, metadata, true);
    }

    StatusException(Status status, Metadata metadata, boolean z) {
        super(Status.formatThrowableMessage(status), status.getCause());
        this.status = status;
        this.fillInStackTrace = z;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this.fillInStackTrace ? super.fillInStackTrace() : this;
    }

    public final Status getStatus() {
        return this.status;
    }
}
