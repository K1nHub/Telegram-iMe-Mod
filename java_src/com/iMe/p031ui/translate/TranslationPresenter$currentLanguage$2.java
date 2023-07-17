package com.iMe.p031ui.translate;

import com.iMe.storage.domain.gateway.TelegramGateway;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TranslationPresenter.kt */
/* renamed from: com.iMe.ui.translate.TranslationPresenter$currentLanguage$2 */
/* loaded from: classes3.dex */
public final class TranslationPresenter$currentLanguage$2 extends Lambda implements Function0<String> {
    final /* synthetic */ TranslationPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranslationPresenter$currentLanguage$2(TranslationPresenter translationPresenter) {
        super(0);
        this.this$0 = translationPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        TelegramGateway telegramGateway;
        telegramGateway = this.this$0.telegramGateway;
        return telegramGateway.getCurrentLanguage();
    }
}
