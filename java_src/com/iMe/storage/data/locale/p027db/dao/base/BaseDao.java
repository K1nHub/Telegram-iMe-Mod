package com.iMe.storage.data.locale.p027db.dao.base;

import io.reactivex.Completable;
import java.util.List;
/* compiled from: BaseDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.base.BaseDao */
/* loaded from: classes4.dex */
public interface BaseDao<T> {
    long insert(T t);

    void insert(List<? extends T> list);

    Completable rxInsert(T t);

    Completable rxInsert(List<? extends T> list);
}
