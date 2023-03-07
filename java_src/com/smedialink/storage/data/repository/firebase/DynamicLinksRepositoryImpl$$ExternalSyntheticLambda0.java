package com.smedialink.storage.data.repository.firebase;

import com.google.firebase.dynamiclinks.PendingDynamicLinkData;
import com.smedialink.storage.domain.model.Result;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0 implements Function {
    public static final /* synthetic */ DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0 INSTANCE = new DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0();

    private /* synthetic */ DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Result m1366getLink$lambda0;
        m1366getLink$lambda0 = DynamicLinksRepositoryImpl.m1366getLink$lambda0((PendingDynamicLinkData) obj);
        return m1366getLink$lambda0;
    }
}
