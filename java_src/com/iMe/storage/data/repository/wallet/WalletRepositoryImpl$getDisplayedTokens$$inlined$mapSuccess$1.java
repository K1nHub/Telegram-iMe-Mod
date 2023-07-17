package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.mapper.wallet.DisplayedTokensMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<DisplayedTokensResponse>, Result<? extends Map<TokenDetailed, ? extends Boolean>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ String $networkId$inlined;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getDisplayedTokens$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletRepositoryImpl walletRepositoryImpl, String str) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletRepositoryImpl;
        this.$networkId$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Map<TokenDetailed, ? extends Boolean>> invoke(ApiBaseResponse<DisplayedTokensResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        List<TokenDisplaySettings.Crypto> tokensSettingsFromDisplayResponse;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            tokensSettingsFromDisplayResponse = this.this$0.getTokensSettingsFromDisplayResponse(response, this.$networkId$inlined);
            cryptoPreferenceHelper.saveTokensSettings(tokensSettingsFromDisplayResponse, this.$networkId$inlined);
            return Result.Companion.success(DisplayedTokensMappingKt.mapToDomain(response.getPayload()));
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
