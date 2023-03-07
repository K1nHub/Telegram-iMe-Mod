package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class WalletRepositoryImpl$$ExternalSyntheticLambda0 implements Function {
    public static final /* synthetic */ WalletRepositoryImpl$$ExternalSyntheticLambda0 INSTANCE = new WalletRepositoryImpl$$ExternalSyntheticLambda0();

    private /* synthetic */ WalletRepositoryImpl$$ExternalSyntheticLambda0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1381getTokensBalance$lambda14;
        m1381getTokensBalance$lambda14 = WalletRepositoryImpl.m1381getTokensBalance$lambda14((List) obj);
        return m1381getTokensBalance$lambda14;
    }
}
