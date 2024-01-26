package com.iMe.storage.domain.manager.ton;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TonTransactionPayload;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: TonController.kt */
/* loaded from: classes3.dex */
public interface TonController {
    Observable<Result<Wallet>> createWallet();

    Observable<Result<Wallet.TON>> importWallet(List<String> list);

    Observable<Result<Boolean>> isValidAddress(String str);

    Observable<Result<Boolean>> isValidMnemonic(String str);

    Observable<Result<String>> sendTransaction(String str, long j, int i, TonTransactionPayload tonTransactionPayload, int i2);

    Observable<Result<byte[]>> signData(byte[] bArr);

    /* compiled from: TonController.kt */
    /* renamed from: com.iMe.storage.domain.manager.ton.TonController$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static /* synthetic */ Observable sendTransaction$default(TonController tonController, String str, long j, int i, TonTransactionPayload tonTransactionPayload, int i2, int i3, Object obj) {
            if (obj == null) {
                if ((i3 & 8) != 0) {
                    tonTransactionPayload = null;
                }
                TonTransactionPayload tonTransactionPayload2 = tonTransactionPayload;
                if ((i3 & 16) != 0) {
                    i2 = 3;
                }
                return tonController.sendTransaction(str, j, i, tonTransactionPayload2, i2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendTransaction");
        }
    }
}
