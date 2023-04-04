package com.iMe.p032ui.wallet.crypto.buy.customPrice;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.simplex.Currency;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State */
/* loaded from: classes3.dex */
public class CryptoBuyCustomPriceView$$State extends MvpViewState<CryptoBuyCustomPriceView> implements CryptoBuyCustomPriceView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showConfirmDialog(float f, Currency currency, DialogModel dialogModel) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, f, currency, dialogModel);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(f, currency, dialogModel);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
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

    @Override // com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showExchangedValue(float f) {
        ShowExchangedValueCommand showExchangedValueCommand = new ShowExchangedValueCommand(this, f);
        this.viewCommands.beforeApply(showExchangedValueCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showExchangedValue(f);
        }
        this.viewCommands.afterApply(showExchangedValueCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void showInputError(String str) {
        ShowInputErrorCommand showInputErrorCommand = new ShowInputErrorCommand(this, str);
        this.viewCommands.beforeApply(showInputErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showInputError(str);
        }
        this.viewCommands.afterApply(showInputErrorCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView
    public void resetInputError() {
        ResetInputErrorCommand resetInputErrorCommand = new ResetInputErrorCommand(this);
        this.viewCommands.beforeApply(resetInputErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetInputError();
        }
        this.viewCommands.afterApply(resetInputErrorCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final float amount;
        public final Currency currency;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, float f, Currency currency, DialogModel dialogModel) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.amount = f;
            this.currency = currency;
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showConfirmDialog(this.amount, this.currency, this.dialogModel);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ConfigureExchangeStateCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowExchangedValueCommand */
    /* loaded from: classes3.dex */
    public class ShowExchangedValueCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final float value;

        ShowExchangedValueCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, float f) {
            super("showExchangedValue", AddToEndSingleStrategy.class);
            this.value = f;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showExchangedValue(this.value);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowInputErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowInputErrorCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        public final String errorText;

        ShowInputErrorCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State, String str) {
            super("showInputError", OneExecutionStateStrategy.class);
            this.errorText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.showInputError(this.errorText);
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ResetInputErrorCommand */
    /* loaded from: classes3.dex */
    public class ResetInputErrorCommand extends ViewCommand<CryptoBuyCustomPriceView> {
        ResetInputErrorCommand(CryptoBuyCustomPriceView$$State cryptoBuyCustomPriceView$$State) {
            super("resetInputError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBuyCustomPriceView cryptoBuyCustomPriceView) {
            cryptoBuyCustomPriceView.resetInputError();
        }
    }

    /* compiled from: CryptoBuyCustomPriceView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
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
}
