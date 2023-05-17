package com.iMe.storage.data.datasource.transfer.impl;

import com.google.protobuf.ByteString;
import com.iMe.storage.data.datasource.transfer.WalletTransferDataSource;
import com.iMe.storage.data.network.api.own.CryptoWalletApi;
import com.iMe.storage.data.network.api.own.WalletApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.trustwallet.walletconnect.extensions.ByteArrayKt;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import wallet.core.java.AnySigner;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
import wallet.core.jni.proto.Tron;
/* compiled from: TRONWalletTransferDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class TRONWalletTransferDataSourceImpl implements WalletTransferDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletApi cryptoWalletApi;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final WalletApi walletApi;

    public TRONWalletTransferDataSourceImpl(FirebaseFunctionsErrorHandler firebaseErrorHandler, CryptoWalletApi cryptoWalletApi, CryptoAccessManager cryptoAccessManager, WalletApi walletApi) {
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(cryptoWalletApi, "cryptoWalletApi");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(walletApi, "walletApi");
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.cryptoWalletApi = cryptoWalletApi;
        this.cryptoAccessManager = cryptoAccessManager;
        this.walletApi = walletApi;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable map = this.walletApi.getTRONCryptoTransferData(new GetDataForCryptoTransferRequest(tokenCode.getName(), str, str2, networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1616x101c5dbf(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.iMe.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1617xb62448cf(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        HDWallet hdWallet;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.TRON)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.TRON tRONWallet = this.cryptoAccessManager.getTRONWallet();
        TransferArgs.TRON tron = (TransferArgs.TRON) args;
        String address = tRONWallet != null ? tRONWallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        Tron.Transaction createTransactionByType = createTransactionByType(tron, address);
        if (tRONWallet == null || (hdWallet = tRONWallet.getHdWallet()) == null || (bArr = CryptoExtKt.getPrivateKeyBytes(hdWallet, CoinType.TRON)) == null) {
            bArr = new byte[0];
        }
        String json = ((Tron.SigningOutput) AnySigner.sign(Tron.SigningInput.newBuilder().setTransaction(createTransactionByType).setPrivateKey(ByteString.copyFrom(bArr)).build(), CoinType.TRON, Tron.SigningOutput.parser())).getJson();
        Intrinsics.checkNotNullExpressionValue(json, "signerOutput.json");
        byte[] bytes = json.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ByteArrayKt.toHex(bytes)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final Tron.Transaction createTransactionByType(TransferArgs.TRON tron, String str) {
        Tron.Transaction.Builder newBuilder = Tron.Transaction.newBuilder();
        String contractAddress = tron.getContractAddress();
        if (contractAddress == null || contractAddress.length() == 0) {
            newBuilder.setTransfer(Tron.TransferContract.newBuilder().setAmount(tron.getConvertedAmount().longValue()).setToAddress(tron.getRecipientAddress()).setOwnerAddress(str).build());
        } else {
            newBuilder.setTransferTrc20Contract(Tron.TransferTRC20Contract.newBuilder().setAmount(CryptoExtKt.toByteString(tron.getConvertedAmount())).setToAddress(tron.getRecipientAddress()).setContractAddress(tron.getContractAddress()).setOwnerAddress(str).build());
        }
        Tron.Transaction build = newBuilder.setBlockHeader(Tron.BlockHeader.newBuilder().setNumber(tron.getBlockHeader().getNumber()).setTxTrieRoot(CryptoExtKt.hexToByteString(tron.getBlockHeader().getTxTrieRoot())).setWitnessAddress(CryptoExtKt.hexToByteString(tron.getBlockHeader().getWitnessAddress())).setParentHash(CryptoExtKt.hexToByteString(tron.getBlockHeader().getParentHash())).setVersion(tron.getBlockHeader().getVersion()).setTimestamp(tron.getBlockHeader().getTimestamp()).build()).setFeeLimit(tron.getFeeLimit().longValue()).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …                 .build()");
        return build;
    }
}
