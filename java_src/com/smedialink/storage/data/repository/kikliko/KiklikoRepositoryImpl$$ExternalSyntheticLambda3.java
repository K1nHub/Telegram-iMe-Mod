package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class KiklikoRepositoryImpl$$ExternalSyntheticLambda3 implements Function {
    public static final /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda3 INSTANCE = new KiklikoRepositoryImpl$$ExternalSyntheticLambda3();

    private /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda3() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1373searchByTag$lambda2;
        m1373searchByTag$lambda2 = KiklikoRepositoryImpl.m1373searchByTag$lambda2((SearchResultResponse) obj);
        return m1373searchByTag$lambda2;
    }
}
