package com.iMe.storage.data.datasource.transfer.impl;

import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.mapper.crypto.TransferMappingKt;
import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.PrepareTransferRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.CryptoTransferDataResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.ton.TonController;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.Token;
import io.reactivex.Observable;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TONWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class TONWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final TonController tonController;

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(""));
        Intrinsics.checkNotNullExpressionValue(just, "just(DomainConstants.Sym…EMPTY_STRING.toSuccess())");
        return just;
    }

    public TONWalletTransferDataSourceImpl(CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, TonController tonController) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(tonController, "tonController");
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.cryptoWalletApi = cryptoWalletApi;
        this.tonController = tonController;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(Token token, String str, String str2) {
        Intrinsics.checkNotNullParameter(token, "token");
        CryptoWalletApi cryptoWalletApi = this.cryptoWalletApi;
        TokenRequest mapToRequest = TokenMappingKt.mapToRequest(token);
        if (str == null) {
            str = "";
        }
        Observable<ApiBaseResponse<CryptoTransferDataResponse.TON>> tONCryptoTransferData = cryptoWalletApi.getTONCryptoTransferData(new PrepareTransferRequest(mapToRequest, str, StringExtKt.orZero(str2)));
        final FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler = this.firebaseErrorHandler;
        Observable map = tONCryptoTransferData.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<ApiBaseResponse<CryptoTransferDataResponse.TON>, Result<? extends CryptoTransferMetadata>>() { // from class: com.iMe.storage.data.datasource.transfer.impl.TONWalletTransferDataSourceImpl$getTransferMetadata$$inlined$mapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Result<CryptoTransferMetadata> invoke(ApiBaseResponse<CryptoTransferDataResponse.TON> response) {
                Intrinsics.checkNotNullParameter(response, "response");
                if (response.isSuccess()) {
                    return Result.Companion.success(TransferMappingKt.mapToDomain(response.getPayload()));
                }
                return Result.Companion.error$default(Result.Companion, FirebaseFunctionsErrorHandler.this.handleError((ApiBaseResponse<?>) response), null, 2, null);
            }
        }));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args, String networkId) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        if (!(args instanceof TransferArgs.TON)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        TransferArgs.TON ton = (TransferArgs.TON) args;
        TonController tonController = this.tonController;
        Wallet wallet2 = this.cryptoAccessManager.getWallet(BlockchainType.TON);
        String address = wallet2 != null ? wallet2.getAddress() : null;
        if (address == null) {
            address = "";
        }
        return tonController.sendTransaction(address, ton.getRecipientAddress(), ton.getConvertedAmount().longValue(), ton.getMessage(), ton.isUnencrypted(), ton.getSendMode());
    }
}
