package com.iMe.p032ui.recognition;

import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.recognition.PhotoView$$State */
/* loaded from: classes3.dex */
public class PhotoView$$State extends MvpViewState<PhotoView> implements PhotoView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.recognition.PhotoView
    public void showTranslateDialog(String str) {
        ShowTranslateDialogCommand showTranslateDialogCommand = new ShowTranslateDialogCommand(this, str);
        this.viewCommands.beforeApply(showTranslateDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTranslateDialog(str);
        }
        this.viewCommands.afterApply(showTranslateDialogCommand);
    }

    @Override // com.iMe.p032ui.recognition.PhotoView
    public void showPhotoTextDialog(String str) {
        ShowPhotoTextDialogCommand showPhotoTextDialogCommand = new ShowPhotoTextDialogCommand(this, str);
        this.viewCommands.beforeApply(showPhotoTextDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showPhotoTextDialog(str);
        }
        this.viewCommands.afterApply(showPhotoTextDialogCommand);
    }

    @Override // com.iMe.p032ui.recognition.PhotoView
    public void showPhotoObjectsDialog(String str) {
        ShowPhotoObjectsDialogCommand showPhotoObjectsDialogCommand = new ShowPhotoObjectsDialogCommand(this, str);
        this.viewCommands.beforeApply(showPhotoObjectsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showPhotoObjectsDialog(str);
        }
        this.viewCommands.afterApply(showPhotoObjectsDialogCommand);
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

    @Override // com.iMe.p032ui.base.mvp.AppUpdateRequiredView
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

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowTranslateDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowTranslateDialogCommand extends ViewCommand<PhotoView> {
        public final String textToTranslate;

        ShowTranslateDialogCommand(PhotoView$$State photoView$$State, String str) {
            super("showTranslateDialog", AddToEndSingleStrategy.class);
            this.textToTranslate = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showTranslateDialog(this.textToTranslate);
        }
    }

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowPhotoTextDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowPhotoTextDialogCommand extends ViewCommand<PhotoView> {
        public final String recognizedText;

        ShowPhotoTextDialogCommand(PhotoView$$State photoView$$State, String str) {
            super("showPhotoTextDialog", AddToEndSingleStrategy.class);
            this.recognizedText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showPhotoTextDialog(this.recognizedText);
        }
    }

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowPhotoObjectsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowPhotoObjectsDialogCommand extends ViewCommand<PhotoView> {
        public final String recognizedInfo;

        ShowPhotoObjectsDialogCommand(PhotoView$$State photoView$$State, String str) {
            super("showPhotoObjectsDialog", AddToEndSingleStrategy.class);
            this.recognizedInfo = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showPhotoObjectsDialog(this.recognizedInfo);
        }
    }

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<PhotoView> {
        public final String text;

        ShowToastCommand(PhotoView$$State photoView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showToast(this.text);
        }
    }

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<PhotoView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(PhotoView$$State photoView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: PhotoView$$State.java */
    /* renamed from: com.iMe.ui.recognition.PhotoView$$State$ShowAppUpdateDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAppUpdateDialogCommand extends ViewCommand<PhotoView> {
        ShowAppUpdateDialogCommand(PhotoView$$State photoView$$State) {
            super("showAppUpdateDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(PhotoView photoView) {
            photoView.showAppUpdateDialog();
        }
    }
}
