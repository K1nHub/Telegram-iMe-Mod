package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<DisplayedTokensResponse>, ObservableSource<? extends Result<? extends List<? extends TokenDisplaySettings.Crypto>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ String $networkId$inlined;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletRepositoryImpl walletRepositoryImpl, String str) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletRepositoryImpl;
        this.$networkId$inlined = str;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19391 extends Lambda implements Function1<List<? extends TokenDisplaySettings.Crypto>, Result<? extends List<? extends TokenDisplaySettings.Crypto>>> {
        public static final C19391 INSTANCE = new C19391();

        public C19391() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends List<? extends TokenDisplaySettings.Crypto>> invoke(List<? extends TokenDisplaySettings.Crypto> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<? extends TokenDisplaySettings.Crypto>>> invoke(final ApiBaseResponse<DisplayedTokensResponse> response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        final WalletRepositoryImpl walletRepositoryImpl = this.this$0;
        final String str = this.$networkId$inlined;
        Observable fromCallable = Observable.fromCallable(new Callable() { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensSettings$3$1
            @Override // java.util.concurrent.Callable
            public /* bridge */ /* synthetic */ Object call() {
                call();
                return Unit.INSTANCE;
            }

            @Override // java.util.concurrent.Callable
            public final void call() {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                List<TokenDisplaySettings.Crypto> tokensSettingsFromDisplayResponse;
                cryptoPreferenceHelper = WalletRepositoryImpl.this.cryptoPreferenceHelper;
                tokensSettingsFromDisplayResponse = WalletRepositoryImpl.this.getTokensSettingsFromDisplayResponse(response, str);
                cryptoPreferenceHelper.saveTokensSettings(tokensSettingsFromDisplayResponse, str);
            }
        });
        final WalletRepositoryImpl$getTokensSettings$3$2 walletRepositoryImpl$getTokensSettings$3$2 = new WalletRepositoryImpl$getTokensSettings$3$2(this.this$0, this.$networkId$inlined);
        Observable flatMap = fromCallable.flatMap(new Function(walletRepositoryImpl$getTokensSettings$3$2) { // from class: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$sam$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                Intrinsics.checkNotNullParameter(walletRepositoryImpl$getTokensSettings$3$2, "function");
                this.function = walletRepositoryImpl$getTokensSettings$3$2;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "override fun getTokensSe…          }\n            )");
        return flatMap.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C19391.INSTANCE));
    }
}
