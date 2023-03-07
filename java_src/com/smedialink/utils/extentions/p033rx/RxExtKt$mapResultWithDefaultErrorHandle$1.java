package com.smedialink.utils.extentions.p033rx;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.utils.extentions.rx.RxExtKt$mapResultWithDefaultErrorHandle$1 */
/* loaded from: classes3.dex */
public final class RxExtKt$mapResultWithDefaultErrorHandle$1<T, R> implements Function {
    final /* synthetic */ ResourceManager $resourceManager;
    final /* synthetic */ BaseView $viewState;

    public RxExtKt$mapResultWithDefaultErrorHandle$1(BaseView baseView, ResourceManager resourceManager) {
        this.$viewState = baseView;
        this.$resourceManager = resourceManager;
    }

    /* JADX WARN: Incorrect return type in method signature: (TT;)TT; */
    @Override // io.reactivex.functions.Function
    public final Result apply(Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Error) {
            this.$viewState.showToast(((Result.Error) result).getError().getMessage(this.$resourceManager));
        }
        return result;
    }
}
