package com.smedialink.bots.usecase;

import io.reactivex.functions.Function;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class AiBotsManager$$ExternalSyntheticLambda45 implements Function {
    public static final /* synthetic */ AiBotsManager$$ExternalSyntheticLambda45 INSTANCE = new AiBotsManager$$ExternalSyntheticLambda45();

    private /* synthetic */ AiBotsManager$$ExternalSyntheticLambda45() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        List m1205getAllBotsObservable$lambda15;
        m1205getAllBotsObservable$lambda15 = AiBotsManager.m1205getAllBotsObservable$lambda15((List) obj);
        return m1205getAllBotsObservable$lambda15;
    }
}
