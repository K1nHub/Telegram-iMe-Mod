package com.iMe.storage.data.locale.p027db.dao.main;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.templates.TemplatesDb;
import com.iMe.storage.data.mapper.template.TemplateMappingKt;
import com.iMe.storage.domain.model.templates.TemplateModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TemplatesDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.TemplatesDao */
/* loaded from: classes3.dex */
public abstract class TemplatesDao implements BaseDao<TemplatesDb> {
    public abstract void clearAllTemplates(long j);

    public abstract List<TemplatesDb> getAllTemplatesForUser(long j);

    public abstract void removeTemplates(List<Long> list, long j);

    public void restoreBackup(long j, List<TemplateModel> templates) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(templates, "templates");
        clearAllTemplates(j);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(templates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TemplateModel templateModel : templates) {
            arrayList.add(TemplateMappingKt.mapToDb(templateModel, j));
        }
        insert((List) arrayList);
    }
}
