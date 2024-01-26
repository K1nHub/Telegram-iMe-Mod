package retrofit2.adapter.rxjava2;

import java.util.Objects;
import retrofit2.Response;
/* loaded from: classes6.dex */
public final class Result<T> {
    private final Throwable error;
    private final Response<T> response;

    public static <T> Result<T> error(Throwable th) {
        Objects.requireNonNull(th, "error == null");
        return new Result<>(null, th);
    }

    public static <T> Result<T> response(Response<T> response) {
        Objects.requireNonNull(response, "response == null");
        return new Result<>(response, null);
    }

    private Result(Response<T> response, Throwable th) {
        this.response = response;
        this.error = th;
    }

    public Response<T> response() {
        return this.response;
    }

    public Throwable error() {
        return this.error;
    }

    public boolean isError() {
        return this.error != null;
    }
}
