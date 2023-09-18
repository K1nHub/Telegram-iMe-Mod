package com.iMe.storage.data.locale.p027db.dao.main;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.translation.DialogTranslationSettingsDb;
import com.iMe.storage.data.mapper.dialogs.DialogSettingsMappingKt;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DialogTranslationSettingsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao */
/* loaded from: classes4.dex */
public abstract class DialogTranslationSettingsDao implements BaseDao<DialogTranslationSettingsDb> {
    public abstract void deleteAllTranslationSettingsByUserId(long j);

    public abstract List<DialogTranslationSettingsDb> getAllTranslationSettingsForUser(long j);

    public void restoreBackup(long j, List<DialogTranslationSettings> settings) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(settings, "settings");
        deleteAllTranslationSettingsByUserId(j);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(settings, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DialogTranslationSettings dialogTranslationSettings : settings) {
            arrayList.add(DialogSettingsMappingKt.mapToDb(dialogTranslationSettings, j));
        }
        insert((List) arrayList);
    }
}
