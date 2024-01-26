package com.iMe.p030ui.wallet.home.tabs.crypto.settings;

import com.iMe.mapper.wallet.FoundTokenUiMappingKt;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$2 */
/* loaded from: classes4.dex */
public final class C2391xee15b4fa extends Lambda implements Function1<FoundTokenItem, ObservableSource<? extends Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>>> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2391xee15b4fa(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Pair<Result<Boolean>, FoundTokenItem>> invoke(final FoundTokenItem foundTokenItem) {
        WalletInteractor walletInteractor;
        Intrinsics.checkNotNullParameter(foundTokenItem, "foundTokenItem");
        walletInteractor = this.this$0.walletInteractor;
        Observable<Result<Boolean>> tokenVisibility = walletInteractor.setTokenVisibility(FoundTokenUiMappingKt.mapToIndexedToken(foundTokenItem), !foundTokenItem.isEnabled());
        final Function1<Result<? extends Boolean>, Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>> function1 = new Function1<Result<? extends Boolean>, Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem>>() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$2.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Pair<? extends Result<? extends Boolean>, ? extends FoundTokenItem> invoke(Result<? extends Boolean> result) {
                return invoke2((Result<Boolean>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Pair<Result<Boolean>, FoundTokenItem> invoke2(Result<Boolean> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return TuplesKt.m149to(it, FoundTokenItem.this);
            }
        };
        return tokenVisibility.map(new Function() { // from class: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToTokenVisibilitySwitch$2$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Pair invoke$lambda$0;
                invoke$lambda$0 = C2391xee15b4fa.invoke$lambda$0(Function1.this, obj);
                return invoke$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair invoke$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Pair) tmp0.invoke(obj);
    }
}
