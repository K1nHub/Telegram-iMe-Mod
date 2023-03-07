package com.smedialink.p031ui.recognition;

import android.graphics.Bitmap;
import com.smedialink.mapper.google.ImageRecognitionMapperKt;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.google.GoogleServicesInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.RecognizedImageModel;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: PhotoViewerPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.recognition.PhotoViewerPresenter */
/* loaded from: classes3.dex */
public final class PhotoViewerPresenter extends BasePresenter<PhotoView> {
    private final GoogleServicesInteractor googleServicesInteractor;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    public PhotoViewerPresenter(GoogleServicesInteractor googleServicesInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(googleServicesInteractor, "googleServicesInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.googleServicesInteractor = googleServicesInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
    }

    public final void getPhotoText(Bitmap imageBitmap, final boolean z) {
        Intrinsics.checkNotNullParameter(imageBitmap, "imageBitmap");
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getPhotoText(imageBitmap).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.recognition.PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    if (z) {
                        ((PhotoView) this.getViewState()).showTranslateDialog((String) ((Result.Success) result).getData());
                    } else {
                        ((PhotoView) this.getViewState()).showPhotoTextDialog((String) ((Result.Success) result).getData());
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                        ((PhotoView) this.getViewState()).showAppUpdateDialog();
                        return;
                    }
                    ErrorModel error2 = error.getError();
                    resourceManager = this.resourceManager;
                    ((PhotoView) this.getViewState()).showToast(error2.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.recognition.PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Observable<Result<List<RecognizedImageModel>>> observeOn = this.googleServicesInteractor.getPhotoObjects(photo).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.recognition.PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((PhotoView) PhotoViewerPresenter.this.getViewState()).showPhotoObjectsDialog(ImageRecognitionMapperKt.toUi((List) ((Result.Success) result).getData()));
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                        ((PhotoView) PhotoViewerPresenter.this.getViewState()).showAppUpdateDialog();
                        return;
                    }
                    ErrorModel error2 = error.getError();
                    resourceManager = PhotoViewerPresenter.this.resourceManager;
                    ((PhotoView) PhotoViewerPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.recognition.PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
