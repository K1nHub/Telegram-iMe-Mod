package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.SearchResultResponse;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class KiklikoRepositoryImpl$$ExternalSyntheticLambda1 implements Function {
    public static final /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda1 INSTANCE = new KiklikoRepositoryImpl$$ExternalSyntheticLambda1();

    private /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda1() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1372searchByKeyword$lambda1;
        m1372searchByKeyword$lambda1 = KiklikoRepositoryImpl.m1372searchByKeyword$lambda1((SearchResultResponse) obj);
        return m1372searchByKeyword$lambda1;
    }
}
