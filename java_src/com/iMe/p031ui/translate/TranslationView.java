package com.iMe.p031ui.translate;

import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p031ui.base.mvp.AppUpdateRequiredView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: TranslationView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.translate.TranslationView */
/* loaded from: classes3.dex */
public interface TranslationView extends BaseView, AppUpdateRequiredView {
    void configureScreenWith(String str, String str2);

    void onLoadingState(String str, boolean z);

    void openReplyDialog(DialogTranslationSettings dialogTranslationSettings);

    void showLanguages(List<TranslationLanguageUiModel> list, String str);

    void showSubtitleLanguage(String str, String str2);

    void showTranslation(String str, String str2, String str3);
}
