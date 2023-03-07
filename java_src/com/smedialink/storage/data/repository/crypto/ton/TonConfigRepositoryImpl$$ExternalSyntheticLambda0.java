package com.smedialink.storage.data.repository.crypto.ton;

import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
import okhttp3.Response;
/* loaded from: classes3.dex */
public final /* synthetic */ class TonConfigRepositoryImpl$$ExternalSyntheticLambda0 implements Function {
    public static final /* synthetic */ TonConfigRepositoryImpl$$ExternalSyntheticLambda0 INSTANCE = new TonConfigRepositoryImpl$$ExternalSyntheticLambda0();

    private /* synthetic */ TonConfigRepositoryImpl$$ExternalSyntheticLambda0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1364getTonConfigJsonString$lambda1;
        m1364getTonConfigJsonString$lambda1 = TonConfigRepositoryImpl.m1364getTonConfigJsonString$lambda1((Response) obj);
        return m1364getTonConfigJsonString$lambda1;
    }
}
