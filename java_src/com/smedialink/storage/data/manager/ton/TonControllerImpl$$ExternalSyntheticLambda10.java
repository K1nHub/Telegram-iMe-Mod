package com.smedialink.storage.data.manager.ton;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class TonControllerImpl$$ExternalSyntheticLambda10 implements Function {
    public static final /* synthetic */ TonControllerImpl$$ExternalSyntheticLambda10 INSTANCE = new TonControllerImpl$$ExternalSyntheticLambda10();

    private /* synthetic */ TonControllerImpl$$ExternalSyntheticLambda10() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result isValidWalletAddress$lambda$0;
        isValidWalletAddress$lambda$0 = TonControllerImpl.isValidWalletAddress$lambda$0(obj);
        return isValidWalletAddress$lambda$0;
    }
}
