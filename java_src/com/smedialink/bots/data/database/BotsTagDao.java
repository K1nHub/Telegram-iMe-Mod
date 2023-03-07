package com.smedialink.bots.data.database;

import com.smedialink.bots.data.model.database.TagDbModel;
import java.util.List;
/* compiled from: BotsTagDao.kt */
/* loaded from: classes3.dex */
public abstract class BotsTagDao {
    public abstract List<TagDbModel> getAll();

    public abstract List<Long> insertOrReplace(List<TagDbModel> list);
}
