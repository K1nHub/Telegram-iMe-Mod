package com.iMe.bots.data.repository;

import com.iMe.bots.data.database.BotsDao;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Action;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotsRepository.kt */
/* loaded from: classes4.dex */
public final class BotsRepository$updateRemoteBotHash$2 extends Lambda implements Function1<String, CompletableSource> {
    final /* synthetic */ String $botId;
    final /* synthetic */ BotsRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotsRepository$updateRemoteBotHash$2(BotsRepository botsRepository, String str) {
        super(1);
        this.this$0 = botsRepository;
        this.$botId = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CompletableSource invoke(final String remoteHash) {
        Intrinsics.checkNotNullParameter(remoteHash, "remoteHash");
        final BotsRepository botsRepository = this.this$0;
        final String str = this.$botId;
        return Completable.fromAction(new Action() { // from class: com.iMe.bots.data.repository.BotsRepository$updateRemoteBotHash$2$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                BotsRepository$updateRemoteBotHash$2.invoke$lambda$0(BotsRepository.this, str, remoteHash);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(BotsRepository this$0, String botId, String remoteHash) {
        BotsDao botsDao;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(botId, "$botId");
        Intrinsics.checkNotNullParameter(remoteHash, "$remoteHash");
        botsDao = this$0.botsDao;
        botsDao.updateBot(botId, remoteHash, 1, 0);
    }
}
