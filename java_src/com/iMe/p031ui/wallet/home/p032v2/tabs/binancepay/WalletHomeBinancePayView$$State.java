package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State */
/* loaded from: classes4.dex */
public class WalletHomeBinancePayView$$State extends MvpViewState<WalletHomeBinancePayView> implements WalletHomeBinancePayView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void render(List<BaseNode> list) {
        RenderCommand renderCommand = new RenderCommand(this, list);
        this.viewCommands.beforeApply(renderCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.render(list);
        }
        this.viewCommands.afterApply(renderCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showUserInfo(BinanceAccountItem binanceAccountItem) {
        ShowUserInfoCommand showUserInfoCommand = new ShowUserInfoCommand(this, binanceAccountItem);
        this.viewCommands.beforeApply(showUserInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showUserInfo(binanceAccountItem);
        }
        this.viewCommands.afterApply(showUserInfoCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showLoginGuideDialog(DialogModel dialogModel, Function0<Unit> function0) {
        ShowLoginGuideDialogCommand showLoginGuideDialogCommand = new ShowLoginGuideDialogCommand(this, dialogModel, function0);
        this.viewCommands.beforeApply(showLoginGuideDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLoginGuideDialog(dialogModel, function0);
        }
        this.viewCommands.afterApply(showLoginGuideDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showConfirmLogOutDialog(DialogModel dialogModel, Function0<Unit> function0) {
        ShowConfirmLogOutDialogCommand showConfirmLogOutDialogCommand = new ShowConfirmLogOutDialogCommand(this, dialogModel, function0);
        this.viewCommands.beforeApply(showConfirmLogOutDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmLogOutDialog(dialogModel, function0);
        }
        this.viewCommands.afterApply(showConfirmLogOutDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openPayScreen() {
        OpenPayScreenCommand openPayScreenCommand = new OpenPayScreenCommand(this);
        this.viewCommands.beforeApply(openPayScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openPayScreen();
        }
        this.viewCommands.afterApply(openPayScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openConvertScreen() {
        OpenConvertScreenCommand openConvertScreenCommand = new OpenConvertScreenCommand(this);
        this.viewCommands.beforeApply(openConvertScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openConvertScreen();
        }
        this.viewCommands.afterApply(openConvertScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openHistoryScreen() {
        OpenHistoryScreenCommand openHistoryScreenCommand = new OpenHistoryScreenCommand(this);
        this.viewCommands.beforeApply(openHistoryScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openHistoryScreen();
        }
        this.viewCommands.afterApply(openHistoryScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void openReplenishScreen(NetworkType networkType) {
        OpenReplenishScreenCommand openReplenishScreenCommand = new OpenReplenishScreenCommand(this, networkType);
        this.viewCommands.beforeApply(openReplenishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openReplenishScreen(networkType);
        }
        this.viewCommands.afterApply(openReplenishScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredVerifyDialog() {
        ShowRequiredVerifyDialogCommand showRequiredVerifyDialogCommand = new ShowRequiredVerifyDialogCommand(this);
        this.viewCommands.beforeApply(showRequiredVerifyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredVerifyDialog();
        }
        this.viewCommands.afterApply(showRequiredVerifyDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.WalletHomeBinancePayView
    public void showRequiredWalletCreatedDialog() {
        ShowRequiredWalletCreatedDialogCommand showRequiredWalletCreatedDialogCommand = new ShowRequiredWalletCreatedDialogCommand(this);
        this.viewCommands.beforeApply(showRequiredWalletCreatedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredWalletCreatedDialog();
        }
        this.viewCommands.afterApply(showRequiredWalletCreatedDialogCommand);
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

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
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

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
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

    @Override // com.iMe.p031ui.base.mvp.AdapterNotifyView
    public void notifyDataSetChanged() {
        NotifyDataSetChangedCommand notifyDataSetChangedCommand = new NotifyDataSetChangedCommand(this);
        this.viewCommands.beforeApply(notifyDataSetChangedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.notifyDataSetChanged();
        }
        this.viewCommands.afterApply(notifyDataSetChangedCommand);
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$RenderCommand */
    /* loaded from: classes4.dex */
    public class RenderCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final List<BaseNode> nodes;

        RenderCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, List<BaseNode> list) {
            super("render", AddToEndSingleStrategy.class);
            this.nodes = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.render(this.nodes);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowUserInfoCommand */
    /* loaded from: classes4.dex */
    public class ShowUserInfoCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final BinanceAccountItem userInfo;

        ShowUserInfoCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, BinanceAccountItem binanceAccountItem) {
            super("showUserInfo", AddToEndSingleStrategy.class);
            this.userInfo = binanceAccountItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showUserInfo(this.userInfo);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowLoginGuideDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoginGuideDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final Function0<Unit> action;
        public final DialogModel model;

        ShowLoginGuideDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, DialogModel dialogModel, Function0<Unit> function0) {
            super("showLoginGuideDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = function0;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showLoginGuideDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowConfirmLogOutDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmLogOutDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final Function0<Unit> action;
        public final DialogModel model;

        ShowConfirmLogOutDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, DialogModel dialogModel, Function0<Unit> function0) {
            super("showConfirmLogOutDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = function0;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showConfirmLogOutDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$OpenPayScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenPayScreenCommand extends ViewCommand<WalletHomeBinancePayView> {
        OpenPayScreenCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("openPayScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.openPayScreen();
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$OpenConvertScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenConvertScreenCommand extends ViewCommand<WalletHomeBinancePayView> {
        OpenConvertScreenCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("openConvertScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.openConvertScreen();
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$OpenHistoryScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenHistoryScreenCommand extends ViewCommand<WalletHomeBinancePayView> {
        OpenHistoryScreenCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("openHistoryScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.openHistoryScreen();
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$OpenReplenishScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenReplenishScreenCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final NetworkType networkType;

        OpenReplenishScreenCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, NetworkType networkType) {
            super("openReplenishScreen", OneExecutionStateStrategy.class);
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.openReplenishScreen(this.networkType);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowRequiredVerifyDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredVerifyDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        ShowRequiredVerifyDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("showRequiredVerifyDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showRequiredVerifyDialog();
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowRequiredWalletCreatedDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredWalletCreatedDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        ShowRequiredWalletCreatedDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("showRequiredWalletCreatedDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showRequiredWalletCreatedDialog();
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final String text;

        ShowToastCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletHomeBinancePayView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final boolean show;

        ShowRefreshingCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showRefreshing(this.show);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowConfirmPaymentDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmPaymentDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final Callbacks$Callback action;
        public final DialogModel model;

        ShowConfirmPaymentDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmPaymentDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showConfirmPaymentDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$ShowSuccessPaymentProcessedDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSuccessPaymentProcessedDialogCommand extends ViewCommand<WalletHomeBinancePayView> {
        public final String btnText;
        public final String message;
        public final String title;

        ShowSuccessPaymentProcessedDialogCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State, String str, String str2, String str3) {
            super("showSuccessPaymentProcessedDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.btnText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.showSuccessPaymentProcessedDialog(this.title, this.message, this.btnText);
        }
    }

    /* compiled from: WalletHomeBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand */
    /* loaded from: classes4.dex */
    public class NotifyDataSetChangedCommand extends ViewCommand<WalletHomeBinancePayView> {
        NotifyDataSetChangedCommand(WalletHomeBinancePayView$$State walletHomeBinancePayView$$State) {
            super("notifyDataSetChanged", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeBinancePayView walletHomeBinancePayView) {
            walletHomeBinancePayView.notifyDataSetChanged();
        }
    }
}
