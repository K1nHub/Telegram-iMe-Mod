package com.smedialink.storage.domain.manager.ton;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TonController.kt */
/* loaded from: classes3.dex */
public interface TonController {
    Observable<Result<Wallet>> createWallet(String str);

    Observable<Result<Wallet>> importWallet(String str, List<String> list);

    Observable<Result<Boolean>> isValidWalletAddress(String str);

    Observable<Result<Boolean>> sendTransaction(String str, String str2, long j, String str3, boolean z, int i);
}
