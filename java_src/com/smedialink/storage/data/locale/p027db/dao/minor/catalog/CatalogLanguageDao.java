package com.smedialink.storage.data.locale.p027db.dao.minor.catalog;

import com.smedialink.storage.data.locale.p027db.dao.base.BaseDao;
import com.smedialink.storage.data.locale.p027db.model.catalog.CatalogLanguageDb;
import io.reactivex.Single;
import java.util.List;
/* compiled from: CatalogLanguageDao.kt */
/* renamed from: com.smedialink.storage.data.locale.db.dao.minor.catalog.CatalogLanguageDao */
/* loaded from: classes3.dex */
public abstract class CatalogLanguageDao implements BaseDao<CatalogLanguageDb> {
    public abstract Single<List<CatalogLanguageDb>> getLanguages();
}
