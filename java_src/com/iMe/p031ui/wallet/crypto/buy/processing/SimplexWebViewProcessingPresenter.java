package com.iMe.p031ui.wallet.crypto.buy.processing;

import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: SimplexWebViewProcessingPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingPresenter */
/* loaded from: classes3.dex */
public final class SimplexWebViewProcessingPresenter extends BasePresenter<SimplexWebViewProcessingView> {
    public final boolean isNeedHandleManually(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        if (Intrinsics.areEqual(url, "https://imem.app/success")) {
            ((SimplexWebViewProcessingView) getViewState()).redirectAndShowResult(PaymentResult.Success.INSTANCE);
            return true;
        } else if (Intrinsics.areEqual(url, "https://imem.app/fail")) {
            ((SimplexWebViewProcessingView) getViewState()).redirectAndShowResult(PaymentResult.Success.INSTANCE);
            return true;
        } else {
            return false;
        }
    }
}
