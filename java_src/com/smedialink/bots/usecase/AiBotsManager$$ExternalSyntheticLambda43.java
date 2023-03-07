package com.smedialink.bots.usecase;

import io.reactivex.functions.Function;
import java.util.List;
/* loaded from: classes3.dex */
public final /* synthetic */ class AiBotsManager$$ExternalSyntheticLambda43 implements Function {
    public static final /* synthetic */ AiBotsManager$$ExternalSyntheticLambda43 INSTANCE = new AiBotsManager$$ExternalSyntheticLambda43();

    private /* synthetic */ AiBotsManager$$ExternalSyntheticLambda43() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        List m1207getAllBotsObservable$lambda17;
        m1207getAllBotsObservable$lambda17 = AiBotsManager.m1207getAllBotsObservable$lambda17((List) obj);
        return m1207getAllBotsObservable$lambda17;
    }
}
