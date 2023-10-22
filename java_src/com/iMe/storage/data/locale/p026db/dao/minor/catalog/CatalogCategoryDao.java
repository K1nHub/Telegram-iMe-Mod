package com.iMe.storage.data.locale.p026db.dao.minor.catalog;

import com.iMe.storage.data.locale.p026db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p026db.model.catalog.CatalogCategoryDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.List;
/* compiled from: CatalogCategoryDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao */
/* loaded from: classes3.dex */
public abstract class CatalogCategoryDao implements BaseDao<CatalogCategoryDb> {
    public abstract Single<List<CatalogCategoryDb>> getCategories();

    public abstract Completable rxDeleteCategories();
}
