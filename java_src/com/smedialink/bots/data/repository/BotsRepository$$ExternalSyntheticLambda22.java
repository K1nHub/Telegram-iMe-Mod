package com.smedialink.bots.data.repository;

import com.smedialink.bots.data.model.network.Response;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class BotsRepository$$ExternalSyntheticLambda22 implements Function {
    public static final /* synthetic */ BotsRepository$$ExternalSyntheticLambda22 INSTANCE = new BotsRepository$$ExternalSyntheticLambda22();

    private /* synthetic */ BotsRepository$$ExternalSyntheticLambda22() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        CompletableSource m1164sendAppInstallEvent$lambda2;
        m1164sendAppInstallEvent$lambda2 = BotsRepository.m1164sendAppInstallEvent$lambda2((Response) obj);
        return m1164sendAppInstallEvent$lambda2;
    }
}
