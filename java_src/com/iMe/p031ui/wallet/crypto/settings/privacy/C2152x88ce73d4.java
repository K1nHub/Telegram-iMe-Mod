package com.iMe.p031ui.wallet.crypto.settings.privacy;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.permission.CryptoPermissionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Function$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletPrivacySettingPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter$saveWalletAddressSettingsObservable$1 */
/* loaded from: classes3.dex */
public final class C2152x88ce73d4 extends Lambda implements Function1<Boolean, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ ArrayList<Long> $allowUsers;
    final /* synthetic */ int $publicWalletAllowType;
    final /* synthetic */ WalletPrivacySettingPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2152x88ce73d4(WalletPrivacySettingPresenter walletPrivacySettingPresenter, int i, ArrayList<Long> arrayList) {
        super(1);
        this.this$0 = walletPrivacySettingPresenter;
        this.$publicWalletAllowType = i;
        this.$allowUsers = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<Boolean>> invoke(Boolean isNeedChange) {
        CryptoPermissionInteractor cryptoPermissionInteractor;
        SchedulersProvider schedulersProvider;
        ResourceManager resourceManager;
        Intrinsics.checkNotNullParameter(isNeedChange, "isNeedChange");
        if (!isNeedChange.booleanValue()) {
            Observable just = Observable.just(Result.Companion.success(Boolean.TRUE));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        cryptoPermissionInteractor = this.this$0.cryptoPermissionInteractor;
        Observable manageCryptoPrivacySettings$default = CryptoPermissionInteractor.manageCryptoPrivacySettings$default(cryptoPermissionInteractor, null, this.$publicWalletAllowType == 0, this.$allowUsers, 1, null);
        schedulersProvider = this.this$0.schedulersProvider;
        Observable observeOn = manageCryptoPrivacySettings$default.observeOn(schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoPermissionInteract…(schedulersProvider.ui())");
        T viewState = this.this$0.getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        resourceManager = this.this$0.resourceManager;
        Observable map = observeOn.map(new RxExtKt$sam$i$io_reactivex_functions_Function$0(new C2150xbd3dff7a((BaseView) viewState, resourceManager)));
        Intrinsics.checkNotNullExpressionValue(map, "viewState: BaseView,\n   …nager)\n    }\n    result\n}");
        return map;
    }
}
