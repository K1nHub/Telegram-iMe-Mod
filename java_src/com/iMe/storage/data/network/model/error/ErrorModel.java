package com.iMe.storage.data.network.model.error;

import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ErrorModel.kt */
/* loaded from: classes3.dex */
public final class ErrorModel {
    private final Integer code;
    private final String errorMessage;
    private final Throwable originThrowable;
    private IErrorStatus status;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ErrorModel) {
            ErrorModel errorModel = (ErrorModel) obj;
            return Intrinsics.areEqual(this.errorMessage, errorModel.errorMessage) && Intrinsics.areEqual(this.code, errorModel.code) && Intrinsics.areEqual(this.status, errorModel.status) && Intrinsics.areEqual(this.originThrowable, errorModel.originThrowable);
        }
        return false;
    }

    public int hashCode() {
        String str = this.errorMessage;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.code;
        int hashCode2 = (((hashCode + (num == null ? 0 : num.hashCode())) * 31) + this.status.hashCode()) * 31;
        Throwable th = this.originThrowable;
        return hashCode2 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "ErrorModel(errorMessage=" + this.errorMessage + ", code=" + this.code + ", status=" + this.status + ", originThrowable=" + this.originThrowable + ')';
    }

    public ErrorModel(String str, Integer num, IErrorStatus status, Throwable th) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.errorMessage = str;
        this.code = num;
        this.status = status;
        this.originThrowable = th;
    }

    public final IErrorStatus getStatus() {
        return this.status;
    }

    public final Throwable getOriginThrowable() {
        return this.originThrowable;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorModel(IErrorStatus status, Throwable th) {
        this((String) null, (Integer) null, status, th);
        Intrinsics.checkNotNullParameter(status, "status");
    }

    public /* synthetic */ ErrorModel(IErrorStatus iErrorStatus, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(iErrorStatus, (i & 2) != 0 ? null : th);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorModel(String str, IErrorStatus status, Throwable th) {
        this(str, (Integer) null, status, th);
        Intrinsics.checkNotNullParameter(status, "status");
    }

    public /* synthetic */ ErrorModel(String str, IErrorStatus iErrorStatus, Throwable th, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, iErrorStatus, (i & 4) != 0 ? null : th);
    }

    public final String getMessage(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        IErrorStatus iErrorStatus = this.status;
        if (iErrorStatus == ApiErrorHandler.ErrorStatus.NO_CONNECTION || iErrorStatus == ApiErrorHandler.ErrorStatus.TIMEOUT) {
            return getErrorMessage(resourceManager);
        }
        String str = this.errorMessage;
        if (str != null) {
            if (str.length() == 0) {
                str = getErrorMessage(resourceManager);
            }
            if (str != null) {
                return str;
            }
        }
        return getErrorMessage(resourceManager);
    }

    public final String getErrorMessage(ResourceManager resourceManager) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        IErrorStatus iErrorStatus = this.status;
        if (iErrorStatus == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
            i7 = ErrorModelKt.NO_CONNECTION_ERROR_MESSAGE;
            return resourceManager.getString(i7);
        } else if (iErrorStatus == ApiErrorHandler.ErrorStatus.BAD_RESPONSE) {
            i6 = ErrorModelKt.BAD_RESPONSE_ERROR_MESSAGE;
            return resourceManager.getString(i6);
        } else if (iErrorStatus == ApiErrorHandler.ErrorStatus.TIMEOUT) {
            i5 = ErrorModelKt.TIME_OUT_ERROR_MESSAGE;
            return resourceManager.getString(i5);
        } else if (iErrorStatus == ApiErrorHandler.ErrorStatus.EMPTY_RESPONSE) {
            i4 = ErrorModelKt.EMPTY_RESPONSE_ERROR_MESSAGE;
            return resourceManager.getString(i4);
        } else if (iErrorStatus == ApiErrorHandler.ErrorStatus.NOT_DEFINED) {
            i3 = ErrorModelKt.NOT_DEFINED_ERROR_MESSAGE;
            return resourceManager.getString(i3);
        } else if (iErrorStatus == ApiErrorHandler.ErrorStatus.UNAUTHORIZED) {
            i2 = ErrorModelKt.UNAUTHORIZED_ERROR_MESSAGE;
            return resourceManager.getString(i2);
        } else {
            i = ErrorModelKt.NOT_DEFINED_ERROR_MESSAGE;
            return resourceManager.getString(i);
        }
    }

    public final boolean isNoConnectionStatus() {
        return this.status == ApiErrorHandler.ErrorStatus.NO_CONNECTION;
    }
}
