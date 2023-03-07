package com.smedialink.storage.data.datasource.cancel;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.cancel.CancelArgs;
import io.reactivex.Observable;
/* compiled from: WalletCancelDataSource.kt */
/* loaded from: classes3.dex */
public interface WalletCancelDataSource {
    Observable<Result<String>> cancel(CancelArgs cancelArgs);
}
