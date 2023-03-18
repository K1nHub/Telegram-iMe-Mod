package com.smedialink.bots.data.repository;

import com.smedialink.bots.data.model.network.Response;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository$sendBotInstallEvent$1 extends Lambda implements Function1<Response<String>, CompletableSource> {
    public static final BotsRepository$sendBotInstallEvent$1 INSTANCE = new BotsRepository$sendBotInstallEvent$1();

    BotsRepository$sendBotInstallEvent$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final CompletableSource invoke(Response<String> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (Intrinsics.areEqual(response.getStatus(), "ok")) {
            return Completable.complete();
        }
        if (Intrinsics.areEqual(response.getStatus(), "error")) {
            return Completable.error(new Exception(response.getMessage()));
        }
        return Completable.error(new Exception("Unknown error"));
    }
}
