package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto;

import android.content.DialogInterface;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State */
/* loaded from: classes3.dex */
public class WalletHomeCryptoView$$State extends MvpViewState<WalletHomeCryptoView> implements WalletHomeCryptoView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void renderNodes(List<? extends BaseNode> list) {
        RenderNodesCommand renderNodesCommand = new RenderNodesCommand(this, list);
        this.viewCommands.beforeApply(renderNodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderNodes(list);
        }
        this.viewCommands.afterApply(renderNodesCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showAddressMismatchScreen() {
        ShowAddressMismatchScreenCommand showAddressMismatchScreenCommand = new ShowAddressMismatchScreenCommand(this);
        this.viewCommands.beforeApply(showAddressMismatchScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAddressMismatchScreen();
        }
        this.viewCommands.afterApply(showAddressMismatchScreenCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showChooseNetworkDialog(NetworkType networkType, Function1<? super NetworkType, Unit> function1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkType, function1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkType, function1);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showWalletAddressScan(String str) {
        ShowWalletAddressScanCommand showWalletAddressScanCommand = new ShowWalletAddressScanCommand(this, str);
        this.viewCommands.beforeApply(showWalletAddressScanCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletAddressScan(str);
        }
        this.viewCommands.afterApply(showWalletAddressScanCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showQrReceiveDialog(String str, BlockchainType blockchainType) {
        ShowQrReceiveDialogCommand showQrReceiveDialogCommand = new ShowQrReceiveDialogCommand(this, str, blockchainType);
        this.viewCommands.beforeApply(showQrReceiveDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showQrReceiveDialog(str, blockchainType);
        }
        this.viewCommands.afterApply(showQrReceiveDialogCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void openSendScreen() {
        OpenSendScreenCommand openSendScreenCommand = new OpenSendScreenCommand(this);
        this.viewCommands.beforeApply(openSendScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSendScreen();
        }
        this.viewCommands.afterApply(openSendScreenCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
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

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.WalletHomeCryptoView
    public void showChangeNetworkHint() {
        ShowChangeNetworkHintCommand showChangeNetworkHintCommand = new ShowChangeNetworkHintCommand(this);
        this.viewCommands.beforeApply(showChangeNetworkHintCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChangeNetworkHint();
        }
        this.viewCommands.afterApply(showChangeNetworkHintCommand);
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

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
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

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAnimatedDialog(AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback) {
        ShowAnimatedDialogCommand showAnimatedDialogCommand = new ShowAnimatedDialogCommand(this, animatedSpannableDialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showAnimatedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAnimatedDialog(animatedSpannableDialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showAnimatedDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback) {
        ShowAlreadyCreatedWalletWarningDialogCommand showAlreadyCreatedWalletWarningDialogCommand = new ShowAlreadyCreatedWalletWarningDialogCommand(this, dialogModel, str, callbacks$Callback);
        this.viewCommands.beforeApply(showAlreadyCreatedWalletWarningDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAlreadyCreatedWalletWarningDialog(dialogModel, str, callbacks$Callback);
        }
        this.viewCommands.afterApply(showAlreadyCreatedWalletWarningDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowActivationConfirmationDialogCommand showActivationConfirmationDialogCommand = new ShowActivationConfirmationDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showActivationConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActivationConfirmationDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showActivationConfirmationDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openImportWalletScreen(String str, String str2) {
        OpenImportWalletScreenCommand openImportWalletScreenCommand = new OpenImportWalletScreenCommand(this, str, str2);
        this.viewCommands.beforeApply(openImportWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openImportWalletScreen(str, str2);
        }
        this.viewCommands.afterApply(openImportWalletScreenCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletScreen(List<String> list, String str) {
        OpenCreateWalletScreenCommand openCreateWalletScreenCommand = new OpenCreateWalletScreenCommand(this, list, str);
        this.viewCommands.beforeApply(openCreateWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletScreen(list, str);
        }
        this.viewCommands.afterApply(openCreateWalletScreenCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        ShowSelectOptionsDialogCommand showSelectOptionsDialogCommand = new ShowSelectOptionsDialogCommand(this, str, strArr, onClickListener);
        this.viewCommands.beforeApply(showSelectOptionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectOptionsDialog(str, strArr, onClickListener);
        }
        this.viewCommands.afterApply(showSelectOptionsDialogCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.AdapterNotifyView
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

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$RenderNodesCommand */
    /* loaded from: classes3.dex */
    public class RenderNodesCommand extends ViewCommand<WalletHomeCryptoView> {
        public final List<? extends BaseNode> nodes;

        RenderNodesCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, List<? extends BaseNode> list) {
            super("renderNodes", AddToEndSingleStrategy.class);
            this.nodes = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.renderNodes(this.nodes);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowAddressMismatchScreenCommand */
    /* loaded from: classes3.dex */
    public class ShowAddressMismatchScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        ShowAddressMismatchScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("showAddressMismatchScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showAddressMismatchScreen();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Function1<? super NetworkType, Unit> action;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, NetworkType networkType, Function1<? super NetworkType, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.networkType = networkType;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showChooseNetworkDialog(this.networkType, this.action);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowWalletAddressScanCommand */
    /* loaded from: classes3.dex */
    public class ShowWalletAddressScanCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String address;

        ShowWalletAddressScanCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str) {
            super("showWalletAddressScan", OneExecutionStateStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showWalletAddressScan(this.address);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowQrReceiveDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String address;
        public final BlockchainType blockchainType;

        ShowQrReceiveDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, BlockchainType blockchainType) {
            super("showQrReceiveDialog", OneExecutionStateStrategy.class);
            this.address = str;
            this.blockchainType = blockchainType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showQrReceiveDialog(this.address, this.blockchainType);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$OpenSendScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenSendScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        OpenSendScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("openSendScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openSendScreen();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$OpenHistoryScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenHistoryScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        OpenHistoryScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("openHistoryScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openHistoryScreen();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes3.dex */
    public class ShowChangeNetworkHintCommand extends ViewCommand<WalletHomeCryptoView> {
        ShowChangeNetworkHintCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("showChangeNetworkHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showChangeNetworkHint();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String text;

        ShowToastCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowRefreshingCommand */
    /* loaded from: classes3.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletHomeCryptoView> {
        public final boolean show;

        ShowRefreshingCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showRefreshing(this.show);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowAnimatedDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAnimatedDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Callbacks$Callback action;
        public final AnimatedSpannableDialogModel model;

        ShowAnimatedDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback) {
            super("showAnimatedDialog", OneExecutionStateStrategy.class);
            this.model = animatedSpannableDialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showAnimatedDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAlreadyCreatedWalletWarningDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;
        public final String walletAddress;

        ShowAlreadyCreatedWalletWarningDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback) {
            super("showAlreadyCreatedWalletWarningDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.walletAddress = str;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showAlreadyCreatedWalletWarningDialog(this.dialogModel, this.walletAddress, this.action);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowActivationConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowActivationConfirmationDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowActivationConfirmationDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showActivationConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showActivationConfirmationDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$OpenImportWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenImportWalletScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String password;
        public final String walletAddress;

        OpenImportWalletScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, String str2) {
            super("openImportWalletScreen", OneExecutionStateStrategy.class);
            this.password = str;
            this.walletAddress = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openImportWalletScreen(this.password, this.walletAddress);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$OpenCreateWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCreateWalletScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String password;
        public final List<String> words;

        OpenCreateWalletScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, List<String> list, String str) {
            super("openCreateWalletScreen", OneExecutionStateStrategy.class);
            this.words = list;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openCreateWalletScreen(this.words, this.password);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectOptionsDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String[] items;
        public final DialogInterface.OnClickListener listener;
        public final String title;

        ShowSelectOptionsDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
            super("showSelectOptionsDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.items = strArr;
            this.listener = onClickListener;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showSelectOptionsDialog(this.title, this.items, this.listener);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$$State$NotifyDataSetChangedCommand */
    /* loaded from: classes3.dex */
    public class NotifyDataSetChangedCommand extends ViewCommand<WalletHomeCryptoView> {
        NotifyDataSetChangedCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("notifyDataSetChanged", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.notifyDataSetChanged();
        }
    }
}
