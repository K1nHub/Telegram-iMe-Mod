package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class WalletRepositoryImpl$$ExternalSyntheticLambda1 implements Function {
    public static final /* synthetic */ WalletRepositoryImpl$$ExternalSyntheticLambda1 INSTANCE = new WalletRepositoryImpl$$ExternalSyntheticLambda1();

    private /* synthetic */ WalletRepositoryImpl$$ExternalSyntheticLambda1() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1382getWalletBalance$lambda5;
        m1382getWalletBalance$lambda5 = WalletRepositoryImpl.m1382getWalletBalance$lambda5((List) obj);
        return m1382getWalletBalance$lambda5;
    }
}
