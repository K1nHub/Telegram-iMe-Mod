package com.iMe.bots.data.repository;

import com.iMe.bots.data.database.BotsDao;
import com.iMe.bots.data.model.network.BotVoteInfo;
import com.iMe.bots.data.model.network.Response;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes3.dex */
public final class BotsRepository$fetchVotes$1 extends Lambda implements Function1<Response<List<? extends BotVoteInfo>>, CompletableSource> {
    final /* synthetic */ BotsRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsRepository$fetchVotes$1(BotsRepository botsRepository) {
        super(1);
        this.this$0 = botsRepository;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ CompletableSource invoke(Response<List<? extends BotVoteInfo>> response) {
        return invoke2((Response<List<BotVoteInfo>>) response);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final CompletableSource invoke2(Response<List<BotVoteInfo>> response) {
        BotsDao botsDao;
        Intrinsics.checkNotNullParameter(response, "response");
        botsDao = this.this$0.botsDao;
        botsDao.saveRatings(response);
        return Completable.complete();
    }
}
