package com.smedialink.storage.data.repository.kikliko;

import com.smedialink.storage.data.network.model.response.kikliko.GetTagsResponse;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class KiklikoRepositoryImpl$$ExternalSyntheticLambda0 implements Function {
    public static final /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda0 INSTANCE = new KiklikoRepositoryImpl$$ExternalSyntheticLambda0();

    private /* synthetic */ KiklikoRepositoryImpl$$ExternalSyntheticLambda0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1369getTags$lambda0;
        m1369getTags$lambda0 = KiklikoRepositoryImpl.m1369getTags$lambda0((GetTagsResponse) obj);
        return m1369getTags$lambda0;
    }
}
