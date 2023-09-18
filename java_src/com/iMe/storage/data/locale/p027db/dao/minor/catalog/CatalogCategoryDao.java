package com.iMe.storage.data.locale.p027db.dao.minor.catalog;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.catalog.CatalogCategoryDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.List;
/* compiled from: CatalogCategoryDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.catalog.CatalogCategoryDao */
/* loaded from: classes4.dex */
public abstract class CatalogCategoryDao implements BaseDao<CatalogCategoryDb> {
    public abstract Single<List<CatalogCategoryDb>> getCategories();

    public abstract Completable rxDeleteCategories();
}
