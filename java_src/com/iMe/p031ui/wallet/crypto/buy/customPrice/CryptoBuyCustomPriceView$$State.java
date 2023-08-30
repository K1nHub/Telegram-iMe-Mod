package com.iMe.p031ui.wallet.crypto.buy.customPrice;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State */
/* loaded from: classes4.dex */
public class CryptoBuyCustomPriceView$$State extends MvpViewState<CryptoBuyCustomPriceView> implements CryptoBuyCustomPriceView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void configureExchangeState(float f, float f2, Currency currency, Currency currency2) {
        ConfigureExchangeStateCommand configureExchangeStateCommand = new ConfigureExchangeStateCommand(this, f, f2, currency, currency2);
        this.viewCommands.beforeApply(configureExchangeStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.configureExchangeState(f, f2, currency, currency2);
        }
        this.viewCommands.afterApply(configureExchangeStateCommand);
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

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand */
    /* loaded from: classes4.dex */
    public class ConfigureExchangeStateCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final float fromAmount;
        public final Currency fromCurrency;
        public final float toAmount;
        public final Currency toCurrency;

        ConfigureExchangeStateCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, float f, float f2, Currency currency, Currency currency2) {
            super("configureExchangeState", AddToEndSingleStrategy.class);
            this.fromAmount = f;
            this.toAmount = f2;
            this.fromCurrency = currency;
            this.toCurrency = currency2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.configureExchangeState(this.fromAmount, this.toAmount, this.fromCurrency, this.toCurrency);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final String text;

        ShowToastCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showToast(this.text);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CryptoBuyCustomPriceView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
