package com.smedialink.storage.data.network.handlers.impl;

import androidx.room.EmptyResultSetException;
import com.smedialink.storage.data.network.handlers.ErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import timber.log.Timber;
/* compiled from: DbErrorHandler.kt */
/* loaded from: classes3.dex */
public final class DbErrorHandler implements ErrorHandler<Throwable> {

    /* compiled from: DbErrorHandler.kt */
    /* loaded from: classes3.dex */
    public enum ErrorStatus implements IErrorStatus {
        UNKNOWN,
        EMPTY
    }

    @Override // com.smedialink.storage.data.network.handlers.ErrorHandler
    public ErrorModel handleError(Throwable th) {
        Timber.tag("ErrorHandler").mo0e(th);
        return new ErrorModel(th == null ? null : th.getMessage(), th instanceof EmptyResultSetException ? ErrorStatus.EMPTY : ErrorStatus.UNKNOWN, th);
    }
}
