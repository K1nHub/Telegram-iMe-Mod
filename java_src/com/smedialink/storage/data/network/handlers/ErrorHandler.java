package com.smedialink.storage.data.network.handlers;

import com.smedialink.storage.data.network.model.error.ErrorModel;
/* compiled from: ErrorHandler.kt */
/* loaded from: classes3.dex */
public interface ErrorHandler<T> {
    ErrorModel handleError(T t);
}
