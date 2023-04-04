package com.iMe.storage.data.repository.crypto.airdrop;

import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.RegisterInAirdropPromotionResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<RegisterInAirdropPromotionResponse>, Result<? extends String>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ AirdropRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, AirdropRepositoryImpl airdropRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = airdropRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(ApiBaseResponse<RegisterInAirdropPromotionResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper.setAirdropMetadata(new WalletAirdropMetadata(true, 0, response.getPayload().getRequestId(), AirdropStatus.UNKNOWN, AirdropDisplayStatus.UNKNOWN));
            return Result.Companion.success(response.getPayload().getRequestId());
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
