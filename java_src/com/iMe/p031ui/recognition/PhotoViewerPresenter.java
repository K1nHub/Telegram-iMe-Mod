package com.iMe.p031ui.recognition;

import android.graphics.Bitmap;
import com.iMe.mapper.google.ImageRecognitionMapperKt;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: PhotoViewerPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.recognition.PhotoViewerPresenter */
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
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getPhotoText(imageBitmap).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends String>, Unit>() { // from class: com.iMe.ui.recognition.PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
                m1381invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1381invoke(Result<? extends String> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends String> result = it;
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
                    resourceManager = this.resourceManager;
                    ((PhotoView) this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.recognition.PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Observable<Result<List<RecognizedImageModel>>> observeOn = this.googleServicesInteractor.getPhotoObjects(photo).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends RecognizedImageModel>>, Unit>() { // from class: com.iMe.ui.recognition.PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends RecognizedImageModel>> result) {
                m1380invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1380invoke(Result<? extends List<? extends RecognizedImageModel>> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends RecognizedImageModel>> result = it;
                if (result instanceof Result.Success) {
                    ((PhotoView) PhotoViewerPresenter.this.getViewState()).showPhotoObjectsDialog(ImageRecognitionMapperKt.toUi((List) ((Result.Success) result).getData()));
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                        ((PhotoView) PhotoViewerPresenter.this.getViewState()).showAppUpdateDialog();
                        return;
                    }
                    resourceManager = PhotoViewerPresenter.this.resourceManager;
                    ((PhotoView) PhotoViewerPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.recognition.PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
