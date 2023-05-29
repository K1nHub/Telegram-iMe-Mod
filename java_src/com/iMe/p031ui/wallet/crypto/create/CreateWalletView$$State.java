package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.p031ui.base.mvp.base.BaseView;
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
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
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

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void setWalletAddress(String str) {
        SetWalletAddressCommand setWalletAddressCommand = new SetWalletAddressCommand(this, str);
        this.viewCommands.beforeApply(setWalletAddressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setWalletAddress(str);
        }
        this.viewCommands.afterApply(setWalletAddressCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void onSuccessEnterSeed(String str) {
        OnSuccessEnterSeedCommand onSuccessEnterSeedCommand = new OnSuccessEnterSeedCommand(this, str);
        this.viewCommands.beforeApply(onSuccessEnterSeedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessEnterSeed(str);
        }
        this.viewCommands.afterApply(onSuccessEnterSeedCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void createNewWallet() {
        CreateNewWalletCommand createNewWalletCommand = new CreateNewWalletCommand(this);
        this.viewCommands.beforeApply(createNewWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.createNewWallet();
        }
        this.viewCommands.afterApply(createNewWalletCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
    public void createNewWalletWithPassword(Wallet wallet2, String str) {
        CreateNewWalletWithPasswordCommand createNewWalletWithPasswordCommand = new CreateNewWalletWithPasswordCommand(this, wallet2, str);
        this.viewCommands.beforeApply(createNewWalletWithPasswordCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.createNewWalletWithPassword(wallet2, str);
        }
        this.viewCommands.afterApply(createNewWalletWithPasswordCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.CreateWalletView
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
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$SetWalletAddressCommand */
    /* loaded from: classes3.dex */
    public class SetWalletAddressCommand extends ViewCommand<CreateWalletView> {
        public final String address;

        SetWalletAddressCommand(CreateWalletView$$State createWalletView$$State, String str) {
            super("setWalletAddress", AddToEndSingleStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.setWalletAddress(this.address);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$OnSuccessEnterSeedCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessEnterSeedCommand extends ViewCommand<CreateWalletView> {
        public final String seed;

        OnSuccessEnterSeedCommand(CreateWalletView$$State createWalletView$$State, String str) {
            super("onSuccessEnterSeed", AddToEndSingleStrategy.class);
            this.seed = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.onSuccessEnterSeed(this.seed);
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$CreateNewWalletCommand */
    /* loaded from: classes3.dex */
    public class CreateNewWalletCommand extends ViewCommand<CreateWalletView> {
        CreateNewWalletCommand(CreateWalletView$$State createWalletView$$State) {
            super("createNewWallet", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.createNewWallet();
        }
    }

    /* compiled from: CreateWalletView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView$$State$CreateNewWalletWithPasswordCommand */
    /* loaded from: classes3.dex */
    public class CreateNewWalletWithPasswordCommand extends ViewCommand<CreateWalletView> {
        public final String password;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f1844wallet;

        CreateNewWalletWithPasswordCommand(CreateWalletView$$State createWalletView$$State, Wallet wallet2, String str) {
            super("createNewWalletWithPassword", OneExecutionStateStrategy.class);
            this.f1844wallet = wallet2;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletView createWalletView) {
            createWalletView.createNewWalletWithPassword(this.f1844wallet, this.password);
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
