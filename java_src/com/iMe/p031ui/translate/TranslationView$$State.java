package com.iMe.p031ui.translate;

import com.iMe.model.translation.TranslationLanguageUiModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.translate.TranslationView$$State */
/* loaded from: classes6.dex */
public class TranslationView$$State extends MvpViewState<TranslationView> implements TranslationView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void configureScreenWith(String str, String str2) {
        ConfigureScreenWithCommand configureScreenWithCommand = new ConfigureScreenWithCommand(this, str, str2);
        this.viewCommands.beforeApply(configureScreenWithCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.configureScreenWith(str, str2);
        }
        this.viewCommands.afterApply(configureScreenWithCommand);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showTranslation(String str, String str2, String str3) {
        ShowTranslationCommand showTranslationCommand = new ShowTranslationCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(showTranslationCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTranslation(str, str2, str3);
        }
        this.viewCommands.afterApply(showTranslationCommand);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showLanguages(List<TranslationLanguageUiModel> list, String str) {
        ShowLanguagesCommand showLanguagesCommand = new ShowLanguagesCommand(this, list, str);
        this.viewCommands.beforeApply(showLanguagesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLanguages(list, str);
        }
        this.viewCommands.afterApply(showLanguagesCommand);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void onLoadingState(String str, boolean z) {
        OnLoadingStateCommand onLoadingStateCommand = new OnLoadingStateCommand(this, str, z);
        this.viewCommands.beforeApply(onLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadingState(str, z);
        }
        this.viewCommands.afterApply(onLoadingStateCommand);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void openReplyDialog(DialogTranslationSettings dialogTranslationSettings) {
        OpenReplyDialogCommand openReplyDialogCommand = new OpenReplyDialogCommand(this, dialogTranslationSettings);
        this.viewCommands.beforeApply(openReplyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openReplyDialog(dialogTranslationSettings);
        }
        this.viewCommands.afterApply(openReplyDialogCommand);
    }

    @Override // com.iMe.p031ui.translate.TranslationView
    public void showSubtitleLanguage(String str, String str2) {
        ShowSubtitleLanguageCommand showSubtitleLanguageCommand = new ShowSubtitleLanguageCommand(this, str, str2);
        this.viewCommands.beforeApply(showSubtitleLanguageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSubtitleLanguage(str, str2);
        }
        this.viewCommands.afterApply(showSubtitleLanguageCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager) {
        ShowErrorToastCommand showErrorToastCommand = new ShowErrorToastCommand(this, error, resourceManager);
        this.viewCommands.beforeApply(showErrorToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorToast(error, resourceManager);
        }
        this.viewCommands.afterApply(showErrorToastCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        FinishScreenCommand finishScreenCommand = new FinishScreenCommand(this);
        this.viewCommands.beforeApply(finishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.finishScreen();
        }
        this.viewCommands.afterApply(finishScreenCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.AppUpdateRequiredView
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

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ConfigureScreenWithCommand */
    /* loaded from: classes6.dex */
    public class ConfigureScreenWithCommand extends ViewCommand<TranslationView> {
        public final String sourceLanguage;
        public final String targetLanguage;

        ConfigureScreenWithCommand(TranslationView$$State translationView$$State, String str, String str2) {
            super("configureScreenWith", AddToEndSingleStrategy.class);
            this.sourceLanguage = str;
            this.targetLanguage = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.configureScreenWith(this.sourceLanguage, this.targetLanguage);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowTranslationCommand */
    /* loaded from: classes6.dex */
    public class ShowTranslationCommand extends ViewCommand<TranslationView> {
        public final String sourceLanguage;
        public final String targetLanguage;
        public final String translation;

        ShowTranslationCommand(TranslationView$$State translationView$$State, String str, String str2, String str3) {
            super("showTranslation", AddToEndSingleStrategy.class);
            this.translation = str;
            this.sourceLanguage = str2;
            this.targetLanguage = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showTranslation(this.translation, this.sourceLanguage, this.targetLanguage);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowLanguagesCommand */
    /* loaded from: classes6.dex */
    public class ShowLanguagesCommand extends ViewCommand<TranslationView> {
        public final List<TranslationLanguageUiModel> languages;
        public final String selectedLanguageCode;

        ShowLanguagesCommand(TranslationView$$State translationView$$State, List<TranslationLanguageUiModel> list, String str) {
            super("showLanguages", AddToEndSingleStrategy.class);
            this.languages = list;
            this.selectedLanguageCode = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showLanguages(this.languages, this.selectedLanguageCode);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$OnLoadingStateCommand */
    /* loaded from: classes6.dex */
    public class OnLoadingStateCommand extends ViewCommand<TranslationView> {
        public final String loadingText;
        public final boolean onLanguageChanged;

        OnLoadingStateCommand(TranslationView$$State translationView$$State, String str, boolean z) {
            super("onLoadingState", AddToEndSingleStrategy.class);
            this.loadingText = str;
            this.onLanguageChanged = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.onLoadingState(this.loadingText, this.onLanguageChanged);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$OpenReplyDialogCommand */
    /* loaded from: classes6.dex */
    public class OpenReplyDialogCommand extends ViewCommand<TranslationView> {
        public final DialogTranslationSettings settings;

        OpenReplyDialogCommand(TranslationView$$State translationView$$State, DialogTranslationSettings dialogTranslationSettings) {
            super("openReplyDialog", AddToEndSingleStrategy.class);
            this.settings = dialogTranslationSettings;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.openReplyDialog(this.settings);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowSubtitleLanguageCommand */
    /* loaded from: classes6.dex */
    public class ShowSubtitleLanguageCommand extends ViewCommand<TranslationView> {
        public final String sourceLanguage;
        public final String targetLanguage;

        ShowSubtitleLanguageCommand(TranslationView$$State translationView$$State, String str, String str2) {
            super("showSubtitleLanguage", AddToEndSingleStrategy.class);
            this.sourceLanguage = str;
            this.targetLanguage = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showSubtitleLanguage(this.sourceLanguage, this.targetLanguage);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
    public class ShowToastCommand extends ViewCommand<TranslationView> {
        public final String text;

        ShowToastCommand(TranslationView$$State translationView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showToast(this.text);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TranslationView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TranslationView$$State translationView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TranslationView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TranslationView$$State translationView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$FinishScreenCommand */
    /* loaded from: classes6.dex */
    public class FinishScreenCommand extends ViewCommand<TranslationView> {
        FinishScreenCommand(TranslationView$$State translationView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.finishScreen();
        }
    }

    /* compiled from: TranslationView$$State.java */
    /* renamed from: com.iMe.ui.translate.TranslationView$$State$ShowAppUpdateDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowAppUpdateDialogCommand extends ViewCommand<TranslationView> {
        ShowAppUpdateDialogCommand(TranslationView$$State translationView$$State) {
            super("showAppUpdateDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TranslationView translationView) {
            translationView.showAppUpdateDialog();
        }
    }
}
