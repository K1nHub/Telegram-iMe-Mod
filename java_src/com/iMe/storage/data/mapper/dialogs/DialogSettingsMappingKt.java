package com.iMe.storage.data.mapper.dialogs;

import com.iMe.storage.data.locale.p026db.model.translation.DialogTranslationSettingsDb;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DialogSettingsMapping.kt */
/* loaded from: classes3.dex */
public final class DialogSettingsMappingKt {
    public static final DialogTranslationSettings mapToDomain(DialogTranslationSettingsDb dialogTranslationSettingsDb) {
        Intrinsics.checkNotNullParameter(dialogTranslationSettingsDb, "<this>");
        return new DialogTranslationSettings(dialogTranslationSettingsDb.isInTextTranslateEnabled(), dialogTranslationSettingsDb.getInTextTranslateTargetLangCode(), dialogTranslationSettingsDb.isOutTextTranslateEnabled(), dialogTranslationSettingsDb.getOutTextTranslateTargetLangCode(), dialogTranslationSettingsDb.getDialogId(), false, null, null, 224, null);
    }

    public static final DialogTranslationSettingsDb mapToDb(DialogTranslationSettings dialogTranslationSettings, long j) {
        Intrinsics.checkNotNullParameter(dialogTranslationSettings, "<this>");
        return new DialogTranslationSettingsDb(dialogTranslationSettings.isInTextTranslateEnabled(), dialogTranslationSettings.getInTextTranslateLangCode(), dialogTranslationSettings.isOutTextTranslateEnabled(), dialogTranslationSettings.getOutTextTranslateLangCode(), dialogTranslationSettings.getDialogId(), j);
    }
}
