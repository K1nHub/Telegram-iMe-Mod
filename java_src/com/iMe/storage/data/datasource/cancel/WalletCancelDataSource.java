package com.iMe.storage.data.datasource.cancel;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import io.reactivex.Observable;
/* compiled from: WalletCancelDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletCancelDataSource {
    Observable<Result<String>> cancel(CancelArgs cancelArgs);
}
