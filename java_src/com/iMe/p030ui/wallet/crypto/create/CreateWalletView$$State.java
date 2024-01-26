package com.iMe.p030ui.wallet.crypto.create;

import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State */
/* loaded from: classes3.dex */
public class CreateWalletView$$State extends MvpViewState<CreateWalletView> implements CreateWalletView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void updateLoadingState(boolean z) {
        UpdateLoadingStateCommand updateLoadingStateCommand = new UpdateLoadingStateCommand(this, z);
        this.viewCommands.beforeApply(updateLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateLoadingState(z);
        }
        this.viewCommands.afterApply(updateLoadingStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void showWordsSuggestions(List<String> list) {
        ShowWordsSuggestionsCommand showWordsSuggestionsCommand = new ShowWordsSuggestionsCommand(this, list);
        this.viewCommands.beforeApply(showWordsSuggestionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWordsSuggestions(list);
        }
        this.viewCommands.afterApply(showWordsSuggestionsCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void onWordsCountSelected(int i) {
        OnWordsCountSelectedCommand onWordsCountSelectedCommand = new OnWordsCountSelectedCommand(this, i);
        this.viewCommands.beforeApply(onWordsCountSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onWordsCountSelected(i);
        }
        this.viewCommands.afterApply(onWordsCountSelectedCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void fillEditTexts(List<String> list) {
        FillEditTextsCommand fillEditTextsCommand = new FillEditTextsCommand(this, list);
        this.viewCommands.beforeApply(fillEditTextsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.fillEditTexts(list);
        }
        this.viewCommands.afterApply(fillEditTextsCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void onSuccessEnterSeed(String str, String str2) {
        OnSuccessEnterSeedCommand onSuccessEnterSeedCommand = new OnSuccessEnterSeedCommand(this, str, str2);
        this.viewCommands.beforeApply(onSuccessEnterSeedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessEnterSeed(str, str2);
        }
        this.viewCommands.afterApply(onSuccessEnterSeedCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void showSelectWordsCountDialog(RadioCellsListDialogModel radioCellsListDialogModel) {
        ShowSelectWordsCountDialogCommand showSelectWordsCountDialogCommand = new ShowSelectWordsCountDialogCommand(this, radioCellsListDialogModel);
        this.viewCommands.beforeApply(showSelectWordsCountDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectWordsCountDialog(radioCellsListDialogModel);
        }
        this.viewCommands.afterApply(showSelectWordsCountDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void createNewWallet(Wallet wallet2, String str) {
        CreateNewWalletCommand createNewWalletCommand = new CreateNewWalletCommand(this, wallet2, str);
        this.viewCommands.beforeApply(createNewWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.createNewWallet(wallet2, str);
        }
        this.viewCommands.afterApply(createNewWalletCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void addNewWallet(Wallet wallet2, String str) {
        AddNewWalletCommand addNewWalletCommand = new AddNewWalletCommand(this, wallet2, str);
        this.viewCommands.beforeApply(addNewWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.addNewWallet(wallet2, str);
        }
        this.viewCommands.afterApply(addNewWalletCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void onSuccessConfirmBackUp() {
        OnSuccessConfirmBackUpCommand onSuccessConfirmBackUpCommand = new OnSuccessConfirmBackUpCommand(this);
        this.viewCommands.beforeApply(onSuccessConfirmBackUpCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessConfirmBackUp();
        }
        this.viewCommands.afterApply(onSuccessConfirmBackUpCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void generateAndOpenPdf(String str, List<String> list) {
        GenerateAndOpenPdfCommand generateAndOpenPdfCommand = new GenerateAndOpenPdfCommand(this, str, list);
        this.viewCommands.beforeApply(generateAndOpenPdfCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.generateAndOpenPdf(str, list);
        }
        this.viewCommands.afterApply(generateAndOpenPdfCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.CreateWalletView
    public void showActionError(String str) {
        ShowActionErrorCommand showActionErrorCommand = new ShowActionErrorCommand(this, str);
        this.viewCommands.beforeApply(showActionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionError(str);
        }
        this.viewCommands.afterApply(showActionErrorCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$UpdateLoadingStateCommand */
    /* loaded from: classes3.dex */
    public class UpdateLoadingStateCommand extends ViewCommand<CreateWalletView> {
        public final boolean isLoading;

        UpdateLoadingStateCommand(CreateWalletView$$State createWalletView$$State, boolean z) {
            super("updateLoadingState", AddToEndSingleStrategy.class);
            this.isLoading = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.updateLoadingState(this.isLoading);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowWordsSuggestionsCommand */
    /* loaded from: classes3.dex */
    public class ShowWordsSuggestionsCommand extends ViewCommand<CreateWalletView> {
        public final List<String> words;

        ShowWordsSuggestionsCommand(CreateWalletView$$State createWalletView$$State, List<String> list) {
            super("showWordsSuggestions", AddToEndSingleStrategy.class);
            this.words = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showWordsSuggestions(this.words);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$OnWordsCountSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnWordsCountSelectedCommand extends ViewCommand<CreateWalletView> {
        public final int wordsCount;

        OnWordsCountSelectedCommand(CreateWalletView$$State createWalletView$$State, int i) {
            super("onWordsCountSelected", AddToEndSingleStrategy.class);
            this.wordsCount = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.onWordsCountSelected(this.wordsCount);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$FillEditTextsCommand */
    /* loaded from: classes3.dex */
    public class FillEditTextsCommand extends ViewCommand<CreateWalletView> {
        public final List<String> words;

        FillEditTextsCommand(CreateWalletView$$State createWalletView$$State, List<String> list) {
            super("fillEditTexts", AddToEndSingleStrategy.class);
            this.words = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.fillEditTexts(this.words);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$OnSuccessEnterSeedCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessEnterSeedCommand extends ViewCommand<CreateWalletView> {
        public final String password;
        public final String seed;

        OnSuccessEnterSeedCommand(CreateWalletView$$State createWalletView$$State, String str, String str2) {
            super("onSuccessEnterSeed", OneExecutionStateStrategy.class);
            this.seed = str;
            this.password = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.onSuccessEnterSeed(this.seed, this.password);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowSelectWordsCountDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectWordsCountDialogCommand extends ViewCommand<CreateWalletView> {
        public final RadioCellsListDialogModel dialogModel;

        ShowSelectWordsCountDialogCommand(CreateWalletView$$State createWalletView$$State, RadioCellsListDialogModel radioCellsListDialogModel) {
            super("showSelectWordsCountDialog", OneExecutionStateStrategy.class);
            this.dialogModel = radioCellsListDialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showSelectWordsCountDialog(this.dialogModel);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$CreateNewWalletCommand */
    /* loaded from: classes3.dex */
    public class CreateNewWalletCommand extends ViewCommand<CreateWalletView> {
        public final String password;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2197wallet;

        CreateNewWalletCommand(CreateWalletView$$State createWalletView$$State, Wallet wallet2, String str) {
            super("createNewWallet", OneExecutionStateStrategy.class);
            this.f2197wallet = wallet2;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.createNewWallet(this.f2197wallet, this.password);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$AddNewWalletCommand */
    /* loaded from: classes3.dex */
    public class AddNewWalletCommand extends ViewCommand<CreateWalletView> {
        public final String password;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2196wallet;

        AddNewWalletCommand(CreateWalletView$$State createWalletView$$State, Wallet wallet2, String str) {
            super("addNewWallet", OneExecutionStateStrategy.class);
            this.f2196wallet = wallet2;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.addNewWallet(this.f2196wallet, this.password);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$OnSuccessConfirmBackUpCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessConfirmBackUpCommand extends ViewCommand<CreateWalletView> {
        OnSuccessConfirmBackUpCommand(CreateWalletView$$State createWalletView$$State) {
            super("onSuccessConfirmBackUp", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.onSuccessConfirmBackUp();
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$GenerateAndOpenPdfCommand */
    /* loaded from: classes3.dex */
    public class GenerateAndOpenPdfCommand extends ViewCommand<CreateWalletView> {
        public final List<String> secretWords;
        public final String walletAddress;

        GenerateAndOpenPdfCommand(CreateWalletView$$State createWalletView$$State, String str, List<String> list) {
            super("generateAndOpenPdf", OneExecutionStateStrategy.class);
            this.walletAddress = str;
            this.secretWords = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.generateAndOpenPdf(this.walletAddress, this.secretWords);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowActionErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowActionErrorCommand extends ViewCommand<CreateWalletView> {
        public final String message;

        ShowActionErrorCommand(CreateWalletView$$State createWalletView$$State, String str) {
            super("showActionError", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showActionError(this.message);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CreateWalletView> {
        public final String text;

        ShowToastCommand(CreateWalletView$$State createWalletView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showToast(this.text);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateWalletView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateWalletView$$State createWalletView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CreateWalletView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CreateWalletView$$State createWalletView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
