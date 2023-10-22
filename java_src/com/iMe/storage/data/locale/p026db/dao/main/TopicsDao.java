package com.iMe.storage.data.locale.p026db.dao.main;

import com.iMe.storage.data.locale.p026db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p026db.model.topics.TopicDb;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TopicsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.TopicsDao */
/* loaded from: classes3.dex */
public abstract class TopicsDao implements BaseDao<TopicDb> {
    public abstract List<TopicDb> getTopics(long j);

    public abstract void removeTopic(long j, long j2);

    public abstract void removeTopics(long j);

    public abstract void setHidden(boolean z, long j, long j2);

    public void restoreBackup(long j, List<TopicDb> topics) {
        Intrinsics.checkNotNullParameter(topics, "topics");
        removeTopics(j);
        insert((List) topics);
    }
}
