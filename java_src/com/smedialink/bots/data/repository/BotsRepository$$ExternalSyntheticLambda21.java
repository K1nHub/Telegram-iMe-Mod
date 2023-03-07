package com.smedialink.bots.data.repository;

import com.smedialink.bots.data.model.network.Response;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class BotsRepository$$ExternalSyntheticLambda21 implements Function {
    public static final /* synthetic */ BotsRepository$$ExternalSyntheticLambda21 INSTANCE = new BotsRepository$$ExternalSyntheticLambda21();

    private /* synthetic */ BotsRepository$$ExternalSyntheticLambda21() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        CompletableSource m1165sendBotInstallEvent$lambda3;
        m1165sendBotInstallEvent$lambda3 = BotsRepository.m1165sendBotInstallEvent$lambda3((Response) obj);
        return m1165sendBotInstallEvent$lambda3;
    }
}
