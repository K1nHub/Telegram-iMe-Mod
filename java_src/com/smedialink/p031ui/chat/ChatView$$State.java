package com.smedialink.p031ui.chat;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.translation.TranslationLanguageUiModel;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.MessageObject;
/* renamed from: com.smedialink.ui.chat.ChatView$$State */
/* loaded from: classes3.dex */
public class ChatView$$State extends MvpViewState<ChatView> implements ChatView {
    @Override // com.smedialink.p031ui.chat.ChatView
    public void onMultiReplyMessageBuilt(CharSequence charSequence) {
        OnMultiReplyMessageBuiltCommand onMultiReplyMessageBuiltCommand = new OnMultiReplyMessageBuiltCommand(this, charSequence);
        this.viewCommands.beforeApply(onMultiReplyMessageBuiltCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onMultiReplyMessageBuilt(charSequence);
        }
        this.viewCommands.afterApply(onMultiReplyMessageBuiltCommand);
    }

    @Override // com.smedialink.p031ui.chat.ChatView
    public void onLanguagesLoaded(List<TranslationLanguageUiModel> list) {
        OnLanguagesLoadedCommand onLanguagesLoadedCommand = new OnLanguagesLoadedCommand(this, list);
        this.viewCommands.beforeApply(onLanguagesLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLanguagesLoaded(list);
        }
        this.viewCommands.afterApply(onLanguagesLoadedCommand);
    }

    @Override // com.smedialink.p031ui.chat.ChatView
    public void onVoiceToTextCompleted(MessageObject messageObject, String str) {
        OnVoiceToTextCompletedCommand onVoiceToTextCompletedCommand = new OnVoiceToTextCompletedCommand(this, messageObject, str);
        this.viewCommands.beforeApply(onVoiceToTextCompletedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onVoiceToTextCompleted(messageObject, str);
        }
        this.viewCommands.afterApply(onVoiceToTextCompletedCommand);
    }

    @Override // com.smedialink.p031ui.chat.ChatView
    public void onSuccessGetAuthTokens(SessionTokens sessionTokens) {
        OnSuccessGetAuthTokensCommand onSuccessGetAuthTokensCommand = new OnSuccessGetAuthTokensCommand(this, sessionTokens);
        this.viewCommands.beforeApply(onSuccessGetAuthTokensCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessGetAuthTokens(sessionTokens);
        }
        this.viewCommands.afterApply(onSuccessGetAuthTokensCommand);
    }

    @Override // com.smedialink.p031ui.chat.ChatView
    public void showReactionActivationAlert() {
        ShowReactionActivationAlertCommand showReactionActivationAlertCommand = new ShowReactionActivationAlertCommand(this);
        this.viewCommands.beforeApply(showReactionActivationAlertCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showReactionActivationAlert();
        }
        this.viewCommands.afterApply(showReactionActivationAlertCommand);
    }

    @Override // com.smedialink.p031ui.chat.ChatView
    public void showDonationMenuItem(boolean z) {
        ShowDonationMenuItemCommand showDonationMenuItemCommand = new ShowDonationMenuItemCommand(this, z);
        this.viewCommands.beforeApply(showDonationMenuItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showDonationMenuItem(z);
        }
        this.viewCommands.afterApply(showDonationMenuItemCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showToast(String str) {
        ShowToastCommand showToastCommand = new ShowToastCommand(this, str);
        this.viewCommands.beforeApply(showToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showToast(str);
        }
        this.viewCommands.afterApply(showToastCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z, z2, disposable);
        this.viewCommands.beforeApply(showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLoadingDialog(z, z2, disposable);
        }
        this.viewCommands.afterApply(showLoadingDialogCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.AppUpdateRequiredView
    public void showAppUpdateDialog() {
        ShowAppUpdateDialogCommand showAppUpdateDialogCommand = new ShowAppUpdateDialogCommand(this);
        this.viewCommands.beforeApply(showAppUpdateDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAppUpdateDialog();
        }
        this.viewCommands.afterApply(showAppUpdateDialogCommand);
    }

    @Override // com.smedialink.manager.crypto.pay.BinancePayProcessView
    public void showConfirmPaymentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmPaymentDialogCommand showConfirmPaymentDialogCommand = new ShowConfirmPaymentDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmPaymentDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmPaymentDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmPaymentDialogCommand);
    }

    @Override // com.smedialink.manager.crypto.pay.BinancePayProcessView
    public void showSuccessPaymentProcessedDialog(String str, String str2, String str3) {
        ShowSuccessPaymentProcessedDialogCommand showSuccessPaymentProcessedDialogCommand = new ShowSuccessPaymentProcessedDialogCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(showSuccessPaymentProcessedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessPaymentProcessedDialog(str, str2, str3);
        }
        this.viewCommands.afterApply(showSuccessPaymentProcessedDialogCommand);
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$OnMultiReplyMessageBuiltCommand */
    /* loaded from: classes3.dex */
    public class OnMultiReplyMessageBuiltCommand extends ViewCommand<ChatView> {
        public final CharSequence multiReplyMessage;

        OnMultiReplyMessageBuiltCommand(ChatView$$State chatView$$State, CharSequence charSequence) {
            super("onMultiReplyMessageBuilt", AddToEndSingleStrategy.class);
            this.multiReplyMessage = charSequence;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.onMultiReplyMessageBuilt(this.multiReplyMessage);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$OnLanguagesLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnLanguagesLoadedCommand extends ViewCommand<ChatView> {
        public final List<TranslationLanguageUiModel> textLanguages;

        OnLanguagesLoadedCommand(ChatView$$State chatView$$State, List<TranslationLanguageUiModel> list) {
            super("onLanguagesLoaded", AddToEndSingleStrategy.class);
            this.textLanguages = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.onLanguagesLoaded(this.textLanguages);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$OnVoiceToTextCompletedCommand */
    /* loaded from: classes3.dex */
    public class OnVoiceToTextCompletedCommand extends ViewCommand<ChatView> {
        public final MessageObject messageObject;
        public final String result;

        OnVoiceToTextCompletedCommand(ChatView$$State chatView$$State, MessageObject messageObject, String str) {
            super("onVoiceToTextCompleted", OneExecutionStateStrategy.class);
            this.messageObject = messageObject;
            this.result = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.onVoiceToTextCompleted(this.messageObject, this.result);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$OnSuccessGetAuthTokensCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessGetAuthTokensCommand extends ViewCommand<ChatView> {
        public final SessionTokens data;

        OnSuccessGetAuthTokensCommand(ChatView$$State chatView$$State, SessionTokens sessionTokens) {
            super("onSuccessGetAuthTokens", OneExecutionStateStrategy.class);
            this.data = sessionTokens;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.onSuccessGetAuthTokens(this.data);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowReactionActivationAlertCommand */
    /* loaded from: classes3.dex */
    public class ShowReactionActivationAlertCommand extends ViewCommand<ChatView> {
        ShowReactionActivationAlertCommand(ChatView$$State chatView$$State) {
            super("showReactionActivationAlert", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showReactionActivationAlert();
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowDonationMenuItemCommand */
    /* loaded from: classes3.dex */
    public class ShowDonationMenuItemCommand extends ViewCommand<ChatView> {
        public final boolean show;

        ShowDonationMenuItemCommand(ChatView$$State chatView$$State, boolean z) {
            super("showDonationMenuItem", OneExecutionStateStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showDonationMenuItem(this.show);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<ChatView> {
        public final String text;

        ShowToastCommand(ChatView$$State chatView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showToast(this.text);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<ChatView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(ChatView$$State chatView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowAppUpdateDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAppUpdateDialogCommand extends ViewCommand<ChatView> {
        ShowAppUpdateDialogCommand(ChatView$$State chatView$$State) {
            super("showAppUpdateDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showAppUpdateDialog();
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowConfirmPaymentDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmPaymentDialogCommand extends ViewCommand<ChatView> {
        public final Callbacks$Callback action;
        public final DialogModel model;

        ShowConfirmPaymentDialogCommand(ChatView$$State chatView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmPaymentDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showConfirmPaymentDialog(this.model, this.action);
        }
    }

    /* compiled from: ChatView$$State.java */
    /* renamed from: com.smedialink.ui.chat.ChatView$$State$ShowSuccessPaymentProcessedDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSuccessPaymentProcessedDialogCommand extends ViewCommand<ChatView> {
        public final String btnText;
        public final String message;
        public final String title;

        ShowSuccessPaymentProcessedDialogCommand(ChatView$$State chatView$$State, String str, String str2, String str3) {
            super("showSuccessPaymentProcessedDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.btnText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChatView chatView) {
            chatView.showSuccessPaymentProcessedDialog(this.title, this.message, this.btnText);
        }
    }
}
