package com.iMe.p031ui.wallet.crypto.settings.privacy;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletPrivacySettingPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveAccountRankSettingsObservable$1 */
/* loaded from: classes4.dex */
public final class C2199x1efe2092 extends Lambda implements Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ int $accountRankAllowType;
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2199x1efe2092(WalletPrivacySettingPresenter walletPrivacySettingPresenter, int i) {
        super(1);
        this.this$0 = walletPrivacySettingPresenter;
        this.$accountRankAllowType = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<Boolean>> invoke(Boolean isNeedChange) {
        AccountLevelInteractor accountLevelInteractor;
        SchedulersProvider schedulersProvider;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
        if (!isNeedChange.booleanValue()) {
            Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        accountLevelInteractor = this.this$0.accountLevelInteractor;
        Observable<Result<Boolean>> changeLevelVisibility = accountLevelInteractor.changeLevelVisibility(this.$accountRankAllowType == 0);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable<Result<Boolean>> observeOn = changeLevelVisibility.observeOn(schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        T viewState = this.this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        resourceManager = this.this$0.resourceManager;
        ObservableSource map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C2195xe2eac0b8((BaseView) viewState, resourceManager)));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …         result\n        }");
        return map;
    }
}
