package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getTokensSettings$3$2 extends Lambda implements Function1<Unit, ObservableSource<? extends List<? extends TokenDisplaySettings.Crypto>>> {
    final /* synthetic */ String $networkId;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getTokensSettings$3$2(WalletRepositoryImpl walletRepositoryImpl, String str) {
        super(1);
        this.this$0 = walletRepositoryImpl;
        this.$networkId = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends List<TokenDisplaySettings.Crypto>> invoke(Unit it) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(it, "it");
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        Observable just = Observable.just(cryptoPreferenceHelper.getTokensSettings(this.$networkId));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
