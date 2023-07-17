package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class WalletRepositoryImpl$getTokensSettings$2 extends Lambda implements Function1<List<? extends TokenDisplaySettings.Crypto>, ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>>> {
    public static final WalletRepositoryImpl$getTokensSettings$2 INSTANCE = new WalletRepositoryImpl$getTokensSettings$2();

    WalletRepositoryImpl$getTokensSettings$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>> invoke(List<? extends TokenDisplaySettings.Crypto> list) {
        return invoke2((List<TokenDisplaySettings.Crypto>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<List<TokenDisplaySettings.Crypto>>> invoke2(List<TokenDisplaySettings.Crypto> settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        if (settings.isEmpty()) {
            return Observable.empty();
        }
        Observable just = Observable.just(Result.Companion.success(settings));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
