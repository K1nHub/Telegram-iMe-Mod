package com.smedialink.storage.data.datasource.transfer.impl;

import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource;
import com.smedialink.storage.data.network.api.own.TonApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.ton.GetParamsForTonCryptoTransferRequest;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
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
        Observable map = tonApi.getParamsForCryptoTransfer(new GetParamsForTonCryptoTransferRequest(name, str, StringExtKt.orZero(str2))).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1500xf1226d95(this.firebaseErrorHandler)));
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
        String address = wallet != null ? wallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        return tonController.sendTransaction(address, ton.getRecipientAddress(), NumberExtKt.convertToWei(Double.valueOf(ton.getAmount()), ton.getWeiConvertUnit()).longValue(), ton.getMessage(), ton.isUnencrypted(), ton.getSendMode());
    }
}
