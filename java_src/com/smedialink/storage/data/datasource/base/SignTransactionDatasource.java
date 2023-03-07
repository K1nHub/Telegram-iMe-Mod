package com.smedialink.storage.data.datasource.base;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: SignTransactionDatasource.kt */
/* loaded from: classes3.dex */
public interface SignTransactionDatasource<T> {
    Observable<Result<String>> sign(T t);
}
