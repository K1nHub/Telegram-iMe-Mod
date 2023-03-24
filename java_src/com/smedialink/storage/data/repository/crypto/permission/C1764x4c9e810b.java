package com.smedialink.storage.data.repository.crypto.permission;

import com.smedialink.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.smedialink.storage.data.mapper.crypto.WalletInformationMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1764x4c9e810b extends Lambda implements Function1<ApiBaseResponse<CryptoWalletInfoResponse>, Result<? extends CryptoWalletInfo>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ CryptoPermissionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1764x4c9e810b(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CryptoPermissionRepositoryImpl cryptoPermissionRepositoryImpl) {
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
