package com.iMe.storage.data.network.handlers.impl;

import androidx.room.EmptyResultSetException;
import com.iMe.storage.data.network.handlers.ErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import timber.log.Timber;
/* compiled from: DbErrorHandler.kt */
/* loaded from: classes4.dex */
public final class DbErrorHandler implements ErrorHandler<Throwable> {

    /* compiled from: DbErrorHandler.kt */
    /* loaded from: classes4.dex */
    public enum ErrorStatus implements IErrorStatus {
        UNKNOWN,
        EMPTY
    }

    @Override // com.iMe.storage.data.network.handlers.ErrorHandler
    public ErrorModel handleError(Throwable th) {
        Timber.tag("ErrorHandler").mo1e(th);
        return new ErrorModel(th != null ? th.getMessage() : null, th instanceof EmptyResultSetException ? ErrorStatus.EMPTY : ErrorStatus.UNKNOWN, th);
    }
}
