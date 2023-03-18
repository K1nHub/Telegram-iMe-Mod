package com.smedialink.p031ui.recognition;

import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.recognition.PhotoViewerPresenter$getPhotoText$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1945x260b9b6c extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ boolean $withTranslateAdditionalAction$inlined;
    final /* synthetic */ PhotoViewerPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1945x260b9b6c(boolean z, PhotoViewerPresenter photoViewerPresenter) {
        super(1);
        this.$withTranslateAdditionalAction$inlined = z;
        this.this$0 = photoViewerPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1242invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1242invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            if (this.$withTranslateAdditionalAction$inlined) {
                ((PhotoView) this.this$0.getViewState()).showTranslateDialog((String) ((Result.Success) result).getData());
            } else {
                ((PhotoView) this.this$0.getViewState()).showPhotoTextDialog((String) ((Result.Success) result).getData());
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.PERMISSION_DENIED) {
                ((PhotoView) this.this$0.getViewState()).showAppUpdateDialog();
                return;
            }
            ErrorModel error2 = error.getError();
            resourceManager = this.this$0.resourceManager;
            ((PhotoView) this.this$0.getViewState()).showToast(error2.getMessage(resourceManager));
        }
    }
}
