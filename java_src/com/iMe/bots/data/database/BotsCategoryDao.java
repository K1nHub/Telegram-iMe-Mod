package com.iMe.bots.data.database;

import com.iMe.bots.data.model.database.BotsCategoryDbModel;
import io.reactivex.Flowable;
import java.util.List;
/* compiled from: BotsCategoryDao.kt */
/* loaded from: classes3.dex */
public abstract class BotsCategoryDao {
    public abstract Flowable<List<BotsCategoryDbModel>> getAll();

    public abstract List<Long> insertOrReplace(List<BotsCategoryDbModel> list);
}
