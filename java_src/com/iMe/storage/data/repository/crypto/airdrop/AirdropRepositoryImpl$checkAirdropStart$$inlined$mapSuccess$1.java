package com.iMe.storage.data.repository.crypto.airdrop;

import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.mapper.crypto.AirdropMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.airdrop.CheckAirdropPromotionStartResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropInfo;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<CheckAirdropPromotionStartResponse>, Result<? extends AirdropInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ AirdropRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, AirdropRepositoryImpl airdropRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = airdropRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<AirdropInfo> invoke(ApiBaseResponse<CheckAirdropPromotionStartResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        CryptoPreferenceHelper cryptoPreferenceHelper3;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            AirdropInfo mapToDomain = AirdropMappingKt.mapToDomain(response.getPayload(), cryptoPreferenceHelper.getAirdropMetadata().getAirdropRequestId());
            if (mapToDomain instanceof AirdropInfo.Ready) {
                cryptoPreferenceHelper2 = this.this$0.cryptoPreferenceHelper;
                cryptoPreferenceHelper3 = this.this$0.cryptoPreferenceHelper;
                WalletAirdropMetadata airdropMetadata = cryptoPreferenceHelper3.getAirdropMetadata();
                AirdropInfo.Ready ready = (AirdropInfo.Ready) mapToDomain;
                cryptoPreferenceHelper2.setAirdropMetadata(WalletAirdropMetadata.copy$default(airdropMetadata, false, ready.getTokenValue(), ready.getRequestId(), AirdropStatus.READY, null, 17, null));
            }
            return Result.Companion.success(mapToDomain);
        }
        return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
    }
}
