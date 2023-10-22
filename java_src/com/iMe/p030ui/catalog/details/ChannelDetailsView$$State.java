package com.iMe.p030ui.catalog.details;

import android.net.Uri;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State */
/* loaded from: classes3.dex */
public class ChannelDetailsView$$State extends MvpViewState<ChannelDetailsView> implements ChannelDetailsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.catalog.details.ChannelDetailsView
    public void setupCampaignInfo(CampaignItem campaignItem) {
        SetupCampaignInfoCommand setupCampaignInfoCommand = new SetupCampaignInfoCommand(this, campaignItem);
        this.viewCommands.beforeApply(setupCampaignInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupCampaignInfo(campaignItem);
        }
        this.viewCommands.afterApply(setupCampaignInfoCommand);
    }

    @Override // com.iMe.p030ui.catalog.details.ChannelDetailsView
    public void setupSubscribeButton(boolean z) {
        SetupSubscribeButtonCommand setupSubscribeButtonCommand = new SetupSubscribeButtonCommand(this, z);
        this.viewCommands.beforeApply(setupSubscribeButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupSubscribeButton(z);
        }
        this.viewCommands.afterApply(setupSubscribeButtonCommand);
    }

    @Override // com.iMe.p030ui.catalog.details.ChannelDetailsView
    public void showShareDialog(String str) {
        ShowShareDialogCommand showShareDialogCommand = new ShowShareDialogCommand(this, str);
        this.viewCommands.beforeApply(showShareDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showShareDialog(str);
        }
        this.viewCommands.afterApply(showShareDialogCommand);
    }

    @Override // com.iMe.p030ui.catalog.details.ChannelDetailsView
    public void showChannelQr(long j) {
        ShowChannelQrCommand showChannelQrCommand = new ShowChannelQrCommand(this, j);
        this.viewCommands.beforeApply(showChannelQrCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChannelQr(j);
        }
        this.viewCommands.afterApply(showChannelQrCommand);
    }

    @Override // com.iMe.p030ui.catalog.details.ChannelDetailsView
    public void onSubscribedToChannel(Uri uri) {
        OnSubscribedToChannelCommand onSubscribedToChannelCommand = new OnSubscribedToChannelCommand(this, uri);
        this.viewCommands.beforeApply(onSubscribedToChannelCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSubscribedToChannel(uri);
        }
        this.viewCommands.afterApply(onSubscribedToChannelCommand);
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

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$SetupCampaignInfoCommand */
    /* loaded from: classes3.dex */
    public class SetupCampaignInfoCommand extends ViewCommand<ChannelDetailsView> {
        public final CampaignItem campaignItem;

        SetupCampaignInfoCommand(ChannelDetailsView$$State channelDetailsView$$State, CampaignItem campaignItem) {
            super("setupCampaignInfo", AddToEndSingleStrategy.class);
            this.campaignItem = campaignItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.setupCampaignInfo(this.campaignItem);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$SetupSubscribeButtonCommand */
    /* loaded from: classes3.dex */
    public class SetupSubscribeButtonCommand extends ViewCommand<ChannelDetailsView> {
        public final boolean canSubscribe;

        SetupSubscribeButtonCommand(ChannelDetailsView$$State channelDetailsView$$State, boolean z) {
            super("setupSubscribeButton", AddToEndSingleStrategy.class);
            this.canSubscribe = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.setupSubscribeButton(this.canSubscribe);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$ShowShareDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowShareDialogCommand extends ViewCommand<ChannelDetailsView> {
        public final String text;

        ShowShareDialogCommand(ChannelDetailsView$$State channelDetailsView$$State, String str) {
            super("showShareDialog", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.showShareDialog(this.text);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$ShowChannelQrCommand */
    /* loaded from: classes3.dex */
    public class ShowChannelQrCommand extends ViewCommand<ChannelDetailsView> {
        public final long chatId;

        ShowChannelQrCommand(ChannelDetailsView$$State channelDetailsView$$State, long j) {
            super("showChannelQr", OneExecutionStateStrategy.class);
            this.chatId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.showChannelQr(this.chatId);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$OnSubscribedToChannelCommand */
    /* loaded from: classes3.dex */
    public class OnSubscribedToChannelCommand extends ViewCommand<ChannelDetailsView> {
        public final Uri channelUri;

        OnSubscribedToChannelCommand(ChannelDetailsView$$State channelDetailsView$$State, Uri uri) {
            super("onSubscribedToChannel", OneExecutionStateStrategy.class);
            this.channelUri = uri;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.onSubscribedToChannel(this.channelUri);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<ChannelDetailsView> {
        public final String text;

        ShowToastCommand(ChannelDetailsView$$State channelDetailsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.showToast(this.text);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<ChannelDetailsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(ChannelDetailsView$$State channelDetailsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: ChannelDetailsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.details.ChannelDetailsView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<ChannelDetailsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(ChannelDetailsView$$State channelDetailsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(ChannelDetailsView channelDetailsView) {
            channelDetailsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
