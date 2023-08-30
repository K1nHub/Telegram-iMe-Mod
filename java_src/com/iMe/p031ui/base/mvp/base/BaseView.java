package com.iMe.p031ui.base.mvp.base;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BaseView.kt */
@OneExecution
/* renamed from: com.iMe.ui.base.mvp.base.BaseView */
/* loaded from: classes3.dex */
public interface BaseView extends MvpView {
    void finishScreen();

    void removeSelfFromStackImmediately();

    <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager);

    void showLoadingDialog(boolean z, boolean z2, Disposable disposable);

    void showToast(String str);

    /* compiled from: BaseView.kt */
    /* renamed from: com.iMe.ui.base.mvp.base.BaseView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$finishScreen(BaseView baseView) {
        }

        public static void $default$removeSelfFromStackImmediately(BaseView baseView) {
        }

        public static /* synthetic */ void showLoadingDialog$default(BaseView baseView, boolean z, boolean z2, Disposable disposable, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
            }
            if ((i & 2) != 0) {
                z2 = true;
            }
            if ((i & 4) != 0) {
                disposable = null;
            }
            baseView.showLoadingDialog(z, z2, disposable);
        }

        public static void $default$showErrorToast(BaseView _this, Result.Error result, ResourceManager resourceManager) {
            Intrinsics.checkNotNullParameter(result, "result");
            Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
            _this.showToast(result.getError().getMessage(resourceManager));
        }
    }
}
