package org.fork.controller;

import com.smedialink.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.smedialink.storage.data.mapper.dialogs.DialogSettingsMappingKt;
import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.UserConfig;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DialogTranslationController.kt */
/* loaded from: classes4.dex */
public final class DialogTranslationController$setSettings$runnable$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ DialogTranslationSettings $translationSettings;
    final /* synthetic */ DialogTranslationController this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogTranslationController$setSettings$runnable$1(DialogTranslationController dialogTranslationController, DialogTranslationSettings dialogTranslationSettings) {
        super(0);
        this.this$0 = dialogTranslationController;
        this.$translationSettings = dialogTranslationSettings;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        DialogTranslationSettingsDao dao;
        UserConfig userConfig;
        dao = this.this$0.getDao();
        DialogTranslationSettings dialogTranslationSettings = this.$translationSettings;
        userConfig = this.this$0.getUserConfig();
        dao.insert((DialogTranslationSettingsDao) DialogSettingsMappingKt.mapToDb(dialogTranslationSettings, userConfig.clientUserId));
        this.this$0.getTranslationSettings().put(Long.valueOf(this.$translationSettings.getDialogId()), this.$translationSettings);
    }
}
