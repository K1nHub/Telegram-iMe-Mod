package com.iMe.storage.data.network.handlers.impl;

import com.google.firebase.FirebaseException;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import java.io.IOException;
import java.net.SocketTimeoutException;
import retrofit2.HttpException;
import retrofit2.Response;
import timber.log.Timber;
/* compiled from: ApiErrorHandler.kt */
/* loaded from: classes3.dex */
public class ApiErrorHandler implements ErrorHandler<Throwable> {

    /* compiled from: ApiErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum ErrorStatus implements IErrorStatus {
        NO_CONNECTION,
        BAD_RESPONSE,
        TIMEOUT,
        EMPTY_RESPONSE,
        NOT_DEFINED,
        UNAUTHORIZED,
        PERMISSION_DENIED,
        RATE_LIMIT
    }

    @Override // com.iMe.storage.data.network.handlers.ErrorHandler
    public ErrorModel handleError(Throwable th) {
        Timber.tag("ErrorHandler").mo1e(th);
        if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            if (httpException.code() == 401) {
                return new ErrorModel(httpException.message(), Integer.valueOf(httpException.code()), ErrorStatus.UNAUTHORIZED, th);
            }
            return getHttpError(httpException);
        }
        if (th instanceof SocketTimeoutException ? true : th instanceof IOException) {
            return new ErrorModel(th.getMessage(), ErrorStatus.NO_CONNECTION, th);
        }
        if (th instanceof FirebaseException) {
            FirebaseException firebaseException = (FirebaseException) th;
            Throwable cause = firebaseException.getCause();
            if (cause instanceof SocketTimeoutException ? true : cause instanceof IOException) {
                return new ErrorModel(firebaseException.getMessage(), ErrorStatus.NO_CONNECTION, th);
            }
            return new ErrorModel(null, ErrorStatus.BAD_RESPONSE, th);
        }
        return new ErrorModel(th != null ? th.getMessage() : null, ErrorStatus.BAD_RESPONSE, th);
    }

    private final ErrorModel getHttpError(HttpException httpException) {
        try {
            Response<?> response = httpException.response();
            return new ErrorModel(String.valueOf(response != null ? response.body() : null), Integer.valueOf(httpException.code()), ErrorStatus.BAD_RESPONSE, httpException);
        } catch (Throwable th) {
            th.printStackTrace();
            return new ErrorModel(th.getMessage(), ErrorStatus.NOT_DEFINED, httpException);
        }
    }
}
