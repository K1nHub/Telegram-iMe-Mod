package com.iMe.bots.data.repository;

import android.content.Context;
import com.iMe.bots.data.database.BotsDatabase;
import com.iMe.bots.data.database.HolidaysDao;
import com.iMe.bots.data.database.RecentDao;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UserAnswersRepository.kt */
/* loaded from: classes3.dex */
public final class UserAnswersRepository {
    private final BotsDatabase botsDatabase;
    private final HolidaysDao holidaysDao;
    private final RecentDao recentDao;
    private final Lazy yearTag$delegate;

    public UserAnswersRepository(Context context) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        lazy = LazyKt__LazyJVMKt.lazy(UserAnswersRepository$yearTag$2.INSTANCE);
        this.yearTag$delegate = lazy;
        BotsDatabase.Companion companion = BotsDatabase.Companion;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        BotsDatabase companion2 = companion.getInstance(applicationContext);
        this.botsDatabase = companion2;
        this.holidaysDao = companion2.holidaysDao();
        this.recentDao = companion2.recentDao();
    }

    private final String getYearTag() {
        Object value = this.yearTag$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-yearTag>(...)");
        return (String) value;
    }

    public final Set<String> getTagsForUser(long j) {
        return this.holidaysDao.getTagsForUser(j);
    }

    public final void saveHolidayGreeting(long j, String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.holidaysDao.saveForUser(j, tag + '.' + getYearTag());
    }

    public final void increaseResponseCounter(String botId, String tag, int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (Intrinsics.areEqual(botId, "recent")) {
            return;
        }
        this.recentDao.increaseCounter(botId, tag, i);
    }

    public final int getPositionWithMaxCounter(String botId, String tag) {
        Integer num;
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        List<Integer> sortedPositions = this.recentDao.getSortedPositions(botId, tag);
        if (sortedPositions == null || (num = (Integer) CollectionsKt.firstOrNull(sortedPositions)) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final int getCounterForPosition(String botId, String tag, int i) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Integer counter = this.recentDao.getCounter(botId, tag, i);
        if (counter != null) {
            return counter.intValue();
        }
        return 0;
    }
}
