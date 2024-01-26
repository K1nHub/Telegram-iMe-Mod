package com.iMe.storage.data.datasource.base;

import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
/* compiled from: SignTransactionDatasource.kt */
/* loaded from: classes3.dex */
public interface SignTransactionDatasource<T> {
    Observable<Result<String>> sign(T t);
}
