package com.iMe.p032ui.chat;

import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p032ui.base.mvp.AppUpdateRequiredView;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.messenger.MessageObject;
/* compiled from: ChatView.kt */
@OneExecution
/* renamed from: com.iMe.ui.chat.ChatView */
/* loaded from: classes3.dex */
public interface ChatView extends BaseView, AppUpdateRequiredView, BinancePayProcessView {
    @AddToEndSingle
    void onLanguagesLoaded(List<TranslationLanguageUiModel> list);

    @AddToEndSingle
    void onMultiReplyMessageBuilt(CharSequence charSequence);

    void onSuccessGetAuthTokens(SessionTokens sessionTokens);

    void onVoiceToTextCompleted(MessageObject messageObject, String str);

    void showDonationMenuItem(boolean z);

    void showReactionActivationAlert();
}
