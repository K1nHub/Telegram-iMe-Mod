package com.iMe.storage.data.repository.crypto.donations;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.donations.GetDonationWalletInfoResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.RemoteWalletInfoResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<GetDonationWalletInfoResponse>, Result<? extends String>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DonationsRepositoryImpl$getDonationAddress$$inlined$mapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<String> invoke(ApiBaseResponse<GetDonationWalletInfoResponse> response) {
        Object obj;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            return Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null);
        }
        Iterator<T> it = response.getPayload().getWallets().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((RemoteWalletInfoResponse) obj).getPlatform(), BlockchainType.EVM.getBackendName())) {
                break;
            }
        }
        RemoteWalletInfoResponse remoteWalletInfoResponse = (RemoteWalletInfoResponse) obj;
        String address = remoteWalletInfoResponse != null ? remoteWalletInfoResponse.getAddress() : null;
        if (address == null) {
            address = "";
        }
        return Result.Companion.success(address);
    }
}
