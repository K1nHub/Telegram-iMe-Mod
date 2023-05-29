package com.iMe.storage.data.repository.crypto.permission;

import com.iMe.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.iMe.storage.data.mapper.crypto.WalletInformationMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.CryptoWalletInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.iMe.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1891x4c9e810b extends Lambda implements Function1<ApiBaseResponse<CryptoWalletInfoResponse>, Result<? extends CryptoWalletInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ CryptoPermissionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1891x4c9e810b(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CryptoPermissionRepositoryImpl cryptoPermissionRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = cryptoPermissionRepositoryImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<CryptoWalletInfo> invoke(ApiBaseResponse<CryptoWalletInfoResponse> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        CryptoWalletInfo mapToDomain = WalletInformationMappingKt.mapToDomain(response.getPayload());
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), mapToDomain));
        return Result.Companion.success(mapToDomain);
    }
}
