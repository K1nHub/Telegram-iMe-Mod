package com.iMe.storage.data.network.handlers.impl;

import com.google.firebase.FirebaseException;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.iMe.storage.R$string;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.io.IOException;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.HttpException;
import timber.log.Timber;
/* compiled from: GoogleServicesErrorHandler.kt */
/* loaded from: classes4.dex */
public final class GoogleServicesErrorHandler extends ApiErrorHandler {
    private final ResourceManager resourceManager;

    public GoogleServicesErrorHandler(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    @Override // com.iMe.storage.data.network.handlers.impl.ApiErrorHandler, com.iMe.storage.data.network.handlers.ErrorHandler
    public ErrorModel handleError(Throwable th) {
        ErrorModel errorModel = null;
        if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            int code = httpException.code();
            if (code != 400) {
                if (code == 401) {
                    errorModel = new ErrorModel(httpException.message(), Integer.valueOf(httpException.code()), ApiErrorHandler.ErrorStatus.UNAUTHORIZED, th);
                } else if (code != 403) {
                    if (code == 429) {
                        errorModel = new ErrorModel(this.resourceManager.getString(R$string.translation_rate_limit_error), Integer.valueOf(httpException.code()), ApiErrorHandler.ErrorStatus.RATE_LIMIT, th);
                    }
                }
            }
            errorModel = new ErrorModel(httpException.message(), Integer.valueOf(httpException.code()), ApiErrorHandler.ErrorStatus.PERMISSION_DENIED, th);
        } else if (th instanceof FirebaseMLException) {
            FirebaseMLException firebaseMLException = (FirebaseMLException) th;
            int code2 = firebaseMLException.getCode();
            if (code2 == 7 || code2 == 14) {
                errorModel = new ErrorModel(firebaseMLException.getMessage(), Integer.valueOf(firebaseMLException.getCode()), ApiErrorHandler.ErrorStatus.PERMISSION_DENIED, th);
            } else {
                errorModel = new ErrorModel(firebaseMLException.getMessage(), ApiErrorHandler.ErrorStatus.BAD_RESPONSE, th);
            }
        } else if (th instanceof FirebaseException) {
            FirebaseException firebaseException = (FirebaseException) th;
            Throwable cause = firebaseException.getCause();
            if (cause instanceof SocketTimeoutException ? true : cause instanceof IOException) {
                errorModel = new ErrorModel(firebaseException.getMessage(), ApiErrorHandler.ErrorStatus.NO_CONNECTION, th);
            } else {
                errorModel = new ErrorModel(null, ApiErrorHandler.ErrorStatus.BAD_RESPONSE, th);
            }
        }
        if (errorModel != null) {
            Timber.tag("ErrorHandler").mo1e(th);
            return errorModel;
        }
        return super.handleError(th);
    }
}
