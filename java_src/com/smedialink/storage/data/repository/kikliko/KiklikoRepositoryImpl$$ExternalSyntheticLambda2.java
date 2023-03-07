package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class KiklikoRepositoryImpl$$ExternalSyntheticLambda2 implements Function {
    public static final /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda2 INSTANCE = new KiklikoRepositoryImpl$$ExternalSyntheticLambda2();

    private /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda2() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1370getTrending$lambda3;
        m1370getTrending$lambda3 = KiklikoRepositoryImpl.m1370getTrending$lambda3((SearchResultResponse) obj);
        return m1370getTrending$lambda3;
    }
}
