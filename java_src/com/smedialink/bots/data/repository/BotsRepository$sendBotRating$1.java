package com.smedialink.bots.data.repository;

import com.smedialink.bots.data.model.network.Response;
import io.reactivex.Single;
import io.reactivex.SingleSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository$sendBotRating$1 extends Lambda implements Function1<Response<String>, SingleSource<? extends Integer>> {
    final /* synthetic */ int $rating;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsRepository$sendBotRating$1(int i) {
        super(1);
        this.$rating = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final SingleSource<? extends Integer> invoke(Response<String> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (Intrinsics.areEqual(response.getStatus(), "ok")) {
            return Single.just(Integer.valueOf(this.$rating));
        }
        if (Intrinsics.areEqual(response.getStatus(), "error")) {
            return Single.error(new Exception(response.getMessage()));
        }
        return Single.error(new Exception("Unknown error"));
    }
}
