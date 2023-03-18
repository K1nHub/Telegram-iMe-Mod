package com.smedialink.storage.domain.model;

import com.smedialink.storage.data.network.model.error.ErrorModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Result.kt */
/* loaded from: classes3.dex */
public abstract class Result<T> {
    public static final Companion Companion = new Companion(null);
    private final T data;

    public /* synthetic */ Result(Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj);
    }

    public static final <T> Result<T> error(ErrorModel errorModel, T t) {
        return Companion.error(errorModel, t);
    }

    public static final <T> Result<T> fail(Throwable th, T t) {
        return Companion.fail(th, t);
    }

    public static final <T> Result<T> loading(T t) {
        return Companion.loading(t);
    }

    public static final <T> Result<T> success(T t) {
        return Companion.success(t);
    }

    private Result(T t) {
        this.data = t;
    }

    public /* synthetic */ Result(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : obj, null);
    }

    public T getData() {
        return this.data;
    }

    public final boolean isLoading() {
        return this instanceof Loading;
    }

    public final boolean isSuccess() {
        return this instanceof Success;
    }

    public final boolean isFailure() {
        return this instanceof Fail;
    }

    public final boolean isError() {
        return this instanceof Error;
    }

    public final Throwable getCause() {
        if (this instanceof Fail) {
            return ((Fail) this).getThrowable();
        }
        return null;
    }

    public final void onLoading(Function1<? super Result<? extends T>, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (isLoading()) {
            handler.invoke(this);
        }
    }

    public final void onNotLoading(Function1<? super Result<? extends T>, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (isLoading()) {
            return;
        }
        handler.invoke(this);
    }

    public final void onSuccess(Function1<? super Result<? extends T>, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (isSuccess()) {
            handler.invoke(this);
        }
    }

    public final void onFailure(Function2<? super Result<? extends T>, ? super Throwable, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (this instanceof Fail) {
            handler.invoke(this, ((Fail) this).getThrowable());
        }
    }

    public final void onError(Function2<? super Result<? extends T>, ? super ErrorModel, Unit> handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (this instanceof Error) {
            handler.invoke(this, ((Error) this).getError());
        }
    }

    public final Result<T> toLoading() {
        return Companion.loading(getData());
    }

    public final Result<T> toSuccess() {
        T data = getData();
        if (data != null) {
            return Companion.success(data);
        }
        return null;
    }

    public final Result<T> toFail(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        return Companion.fail(throwable, getData());
    }

    public final Result<T> toError(ErrorModel error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return Companion.error(error, getData());
    }

    /* compiled from: Result.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Result loading$default(Companion companion, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = null;
            }
            return companion.loading(obj);
        }

        public final <T> Result<T> loading(T t) {
            return new Loading(t);
        }

        public final <T> Result<T> success(T t) {
            return new Success(t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Result fail$default(Companion companion, Throwable th, Object obj, int i, Object obj2) {
            if ((i & 2) != 0) {
                obj = null;
            }
            return companion.fail(th, obj);
        }

        public final <T> Result<T> fail(Throwable throwable, T t) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return new Fail(throwable, t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Result error$default(Companion companion, ErrorModel errorModel, Object obj, int i, Object obj2) {
            if ((i & 2) != 0) {
                obj = null;
            }
            return companion.error(errorModel, obj);
        }

        public final <T> Result<T> error(ErrorModel error, T t) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error, t);
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes3.dex */
    public static final class Success<T> extends Result<T> {
        private final T data;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = success.getData();
            }
            return success.copy(obj);
        }

        public final T component1() {
            return getData();
        }

        public final Success<T> copy(T t) {
            return new Success<>(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.areEqual(getData(), ((Success) obj).getData());
        }

        public int hashCode() {
            if (getData() == null) {
                return 0;
            }
            return getData().hashCode();
        }

        public String toString() {
            return "Success(data=" + getData() + ')';
        }

        @Override // com.smedialink.storage.domain.model.Result
        public T getData() {
            return this.data;
        }

        public Success(T t) {
            super(t, null);
            this.data = t;
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes3.dex */
    public static final class Loading<T> extends Result<T> {
        private final T data;

        public Loading() {
            this(null, 1, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Loading copy$default(Loading loading, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                obj = loading.getData();
            }
            return loading.copy(obj);
        }

        public final T component1() {
            return getData();
        }

        public final Loading<T> copy(T t) {
            return new Loading<>(t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Loading) && Intrinsics.areEqual(getData(), ((Loading) obj).getData());
        }

        public int hashCode() {
            if (getData() == null) {
                return 0;
            }
            return getData().hashCode();
        }

        public String toString() {
            return "Loading(data=" + getData() + ')';
        }

        public /* synthetic */ Loading(Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : obj);
        }

        @Override // com.smedialink.storage.domain.model.Result
        public T getData() {
            return this.data;
        }

        public Loading(T t) {
            super(t, null);
            this.data = t;
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes3.dex */
    public static final class Fail<T> extends Result<T> {
        private final T data;
        private final Throwable throwable;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Fail copy$default(Fail fail, Throwable th, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                th = fail.throwable;
            }
            if ((i & 2) != 0) {
                obj = fail.getData();
            }
            return fail.copy(th, obj);
        }

        public final Throwable component1() {
            return this.throwable;
        }

        public final T component2() {
            return getData();
        }

        public final Fail<T> copy(Throwable throwable, T t) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            return new Fail<>(throwable, t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Fail) {
                Fail fail = (Fail) obj;
                return Intrinsics.areEqual(this.throwable, fail.throwable) && Intrinsics.areEqual(getData(), fail.getData());
            }
            return false;
        }

        public int hashCode() {
            return (this.throwable.hashCode() * 31) + (getData() == null ? 0 : getData().hashCode());
        }

        public String toString() {
            return "Fail(throwable=" + this.throwable + ", data=" + getData() + ')';
        }

        public /* synthetic */ Fail(Throwable th, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(th, (i & 2) != 0 ? null : obj);
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        @Override // com.smedialink.storage.domain.model.Result
        public T getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Fail(Throwable throwable, T t) {
            super(t, null);
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            this.throwable = throwable;
            this.data = t;
        }
    }

    /* compiled from: Result.kt */
    /* loaded from: classes3.dex */
    public static final class Error<T> extends Result<T> {
        private final T data;
        private final ErrorModel error;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Error copy$default(Error error, ErrorModel errorModel, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                errorModel = error.error;
            }
            if ((i & 2) != 0) {
                obj = error.getData();
            }
            return error.copy(errorModel, obj);
        }

        public final ErrorModel component1() {
            return this.error;
        }

        public final T component2() {
            return getData();
        }

        public final Error<T> copy(ErrorModel error, T t) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error<>(error, t);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Error) {
                Error error = (Error) obj;
                return Intrinsics.areEqual(this.error, error.error) && Intrinsics.areEqual(getData(), error.getData());
            }
            return false;
        }

        public int hashCode() {
            return (this.error.hashCode() * 31) + (getData() == null ? 0 : getData().hashCode());
        }

        public String toString() {
            return "Error(error=" + this.error + ", data=" + getData() + ')';
        }

        public /* synthetic */ Error(ErrorModel errorModel, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(errorModel, (i & 2) != 0 ? null : obj);
        }

        public final ErrorModel getError() {
            return this.error;
        }

        @Override // com.smedialink.storage.domain.model.Result
        public T getData() {
            return this.data;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(ErrorModel error, T t) {
            super(t, null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
            this.data = t;
        }
    }
}
