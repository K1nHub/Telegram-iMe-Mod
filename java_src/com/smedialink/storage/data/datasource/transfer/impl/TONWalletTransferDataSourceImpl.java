package com.smedialink.storage.data.datasource.transfer.impl;

import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource;
import com.smedialink.storage.data.mapper.crypto.TransferMappingKt;
import com.smedialink.storage.data.network.api.own.TonApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.ton.GetParamsForTonCryptoTransferRequest;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.crypto.ton.ParamsForTonCryptoTransferResponse;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.ton.TonController;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TONWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class TONWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TonApi tonApi;
    private final TonController tonController;

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(""));
        Intrinsics.checkNotNullExpressionValue(just, "just(DomainConstants.Sym…EMPTY_STRING.toSuccess())");
        return just;
    }

    public TONWalletTransferDataSourceImpl(CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler, TonApi tonApi, TonController tonController) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(tonApi, "tonApi");
        Intrinsics.checkNotNullParameter(tonController, "tonController");
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.tonApi = tonApi;
        this.tonController = tonController;
    }

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        TonApi tonApi = this.tonApi;
        String name = tokenCode.name();
        if (str == null) {
            str = "";
        }
        Observable<ApiBaseResponse<ParamsForTonCryptoTransferResponse>> paramsForCryptoTransfer = tonApi.getParamsForCryptoTransfer(new GetParamsForTonCryptoTransferRequest(name, str, StringExtKt.orZero(str2)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = paramsForCryptoTransfer.map(new Function() { // from class: com.smedialink.storage.data.datasource.transfer.impl.TONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lcom/smedialink/storage/domain/model/Result<TR;>; */
            @Override // io.reactivex.functions.Function
            public final Result apply(ApiBaseResponse response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(TransferMappingKt.mapToDomain((ParamsForTonCryptoTransferResponse) response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.TON)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        TransferArgs.TON ton = (TransferArgs.TON) args;
        TonController tonController = this.tonController;
        Wallet wallet = this.cryptoAccessManager.getWallet(BlockchainType.TON);
        String address = wallet == null ? null : wallet.getAddress();
        if (address == null) {
            address = "";
        }
        return tonController.sendTransaction(address, ton.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(ton.getAmount()), ton.getWeiConvertUnit()).longValue(), ton.getMessage(), ton.isUnencrypted(), ton.getSendMode());
    }
}
