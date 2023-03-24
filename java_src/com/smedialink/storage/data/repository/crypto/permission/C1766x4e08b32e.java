package com.smedialink.storage.data.repository.crypto.permission;

import com.smedialink.storage.data.locale.prefs.model.CryptoWalletInformationMetadata;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* renamed from: com.smedialink.storage.data.repository.crypto.permission.CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1766x4e08b32e extends Lambda implements Function1<ApiBaseResponse<Object>, Result<? extends Boolean>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ boolean $isAllowForEveryone$inlined;
    final /* synthetic */ List $whitelistUsers$inlined;
    final /* synthetic */ CryptoPermissionRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1766x4e08b32e(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, CryptoPermissionRepositoryImpl cryptoPermissionRepositoryImpl, boolean z, List list) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = cryptoPermissionRepositoryImpl;
        this.$isAllowForEveryone$inlined = z;
        this.$whitelistUsers$inlined = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(ApiBaseResponse<Object> response) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
        CryptoWalletInfo walletInfo = cryptoPreferenceHelper.getWalletInfoMetadata().getWalletInfo();
        CryptoWalletInfo copy$default = walletInfo != null ? CryptoWalletInfo.copy$default(walletInfo, null, null, null, this.$isAllowForEveryone$inlined, this.$whitelistUsers$inlined, 7, null) : null;
        cryptoPreferenceHelper2 = this.this$0.cryptoPreferenceHelper;
        cryptoPreferenceHelper2.setWalletInfoMetadata(new CryptoWalletInformationMetadata(DateExtKt.now(), copy$default));
        return Result.Companion.success(Boolean.TRUE);
    }
}
