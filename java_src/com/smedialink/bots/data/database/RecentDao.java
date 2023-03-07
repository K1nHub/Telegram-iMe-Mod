package com.smedialink.bots.data.database;

import com.smedialink.bots.data.model.database.RecentDbModel;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RecentDao.kt */
/* loaded from: classes3.dex */
public abstract class RecentDao {
    public abstract Integer getCounter(String str, String str2, int i);

    public abstract List<Integer> getSortedPositions(String str, String str2);

    public abstract long insertOrReplace(RecentDbModel recentDbModel);

    public void increaseCounter(String botId, String tag, int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Integer counter = getCounter(botId, tag, i);
        insertOrReplace(new RecentDbModel(botId, tag, i, (counter == null ? 0 : counter.intValue()) + 1));
    }
}
