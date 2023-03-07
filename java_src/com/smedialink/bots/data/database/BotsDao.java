package com.smedialink.bots.data.database;

import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.model.database.BotsDbModel;
import com.smedialink.bots.data.model.network.BotVoteInfo;
import com.smedialink.bots.data.model.network.Response;
import io.reactivex.Flowable;
import io.reactivex.Single;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotsDao.kt */
/* loaded from: classes3.dex */
public abstract class BotsDao {
    public abstract void deleteByIgnored(String[] strArr);

    public abstract List<BotsDbModel> getAll();

    public abstract Single<BotsDbModel> getBotBySku(String str);

    public abstract BotsDbModel getById(String str);

    public abstract BotsDbModel getBySku(String str);

    public abstract int getOwnRating(String str);

    public abstract List<Long> insertButIgnore(List<BotsDbModel> list);

    public abstract long insertOrReplace(BotsDbModel botsDbModel);

    public abstract List<Long> insertOrReplace(List<BotsDbModel> list);

    public abstract void resetDownloads(BotStatus botStatus, BotStatus botStatus2);

    public abstract int saveOwnRating(String str, int i);

    public abstract Flowable<List<BotsDbModel>> streamAll();

    public abstract Flowable<BotsDbModel> streamBot(String str);

    public abstract void update(BotsDbModel botsDbModel);

    public abstract void updateBot(String str, String str2, int i, int i2);

    public static /* synthetic */ void resetDownloads$default(BotsDao botsDao, BotStatus botStatus, BotStatus botStatus2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetDownloads");
        }
        if ((i & 2) != 0) {
            botStatus2 = BotStatus.DOWNLOADING;
        }
        botsDao.resetDownloads(botStatus, botStatus2);
    }

    public void saveRatings(Response<List<BotVoteInfo>> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        String status = response.getStatus();
        Objects.requireNonNull(status, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = status.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
        if (Intrinsics.areEqual(lowerCase, "ok")) {
            for (BotVoteInfo botVoteInfo : response.getPayload()) {
                saveOwnRating(botVoteInfo.getName(), Integer.parseInt(botVoteInfo.getRating()));
            }
        }
    }
}
