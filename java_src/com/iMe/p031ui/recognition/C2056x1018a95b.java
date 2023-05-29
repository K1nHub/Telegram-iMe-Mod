package com.iMe.p031ui.recognition;

import com.iMe.mapper.google.ImageRecognitionMapperKt;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.google.RecognizedImageModel;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.recognition.PhotoViewerPresenter$getPhotoObjects$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2056x1018a95b extends Lambda implements Function1<Result<? extends List<? extends RecognizedImageModel>>, Unit> {
    final /* synthetic */ PhotoViewerPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2056x1018a95b(PhotoViewerPresenter photoViewerPresenter) {
        super(1);
        this.this$0 = photoViewerPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends RecognizedImageModel>> result) {
        m1349invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1349invoke(Result<? extends List<? extends RecognizedImageModel>> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends List<? extends RecognizedImageModel>> result = it;
        if (result instanceof Result.Success) {
            ((PhotoView) this.this$0.getViewState()).showPhotoObjectsDialog(ImageRecognitionMapperKt.toUi((List) ((Result.Success) result).getData()));
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                ((PhotoView) this.this$0.getViewState()).showAppUpdateDialog();
                return;
            }
            resourceManager = this.this$0.resourceManager;
            ((PhotoView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}
