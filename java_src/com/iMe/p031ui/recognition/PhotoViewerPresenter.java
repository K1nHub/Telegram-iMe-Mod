package com.iMe.p031ui.recognition;

import android.graphics.Bitmap;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.google.GoogleServicesInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
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

    public final void getPhotoText(Bitmap imageBitmap, boolean z) {
        Intrinsics.checkNotNullParameter(imageBitmap, "imageBitmap");
        Observable<Result<String>> observeOn = this.googleServicesInteractor.getPhotoText(imageBitmap).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2058x260b9b6c(z, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2059x260b9b6d((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getPhotoObjects(Bitmap photo) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        Observable<Result<List<RecognizedImageModel>>> observeOn = this.googleServicesInteractor.getPhotoObjects(photo).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "googleServicesInteractor…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2056x1018a95b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2057x1018a95c((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
