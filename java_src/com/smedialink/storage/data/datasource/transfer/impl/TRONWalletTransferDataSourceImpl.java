package com.smedialink.storage.data.datasource.transfer.impl;

import com.google.protobuf.ByteString;
import com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource;
import com.smedialink.storage.data.network.api.own.CryptoWalletApi;
import com.smedialink.storage.data.network.api.own.WalletApi;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.request.crypto.wallet.GetDataForCryptoTransferRequest;
import com.smedialink.storage.data.utils.crypto.CryptoLibsLoader;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransactionArgs;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.trustwallet.walletconnect.extensions.StringKt;
import io.reactivex.Observable;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.web3j.utils.Numeric;
import wallet.core.java.AnySigner;
import wallet.core.jni.CoinType;
import wallet.core.jni.HDWallet;
import wallet.core.jni.PrivateKey;
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
        CryptoLibsLoader.INSTANCE.initTrustWalletCoreLibrary();
    }

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<CryptoTransferMetadata>> getTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable map = this.walletApi.getTRONCryptoTransferData(new GetDataForCryptoTransferRequest(tokenCode.getName(), str, str2, networkType.name())).map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(new C1503x101c5dbf(this.firebaseErrorHandler)));
        Intrinsics.checkNotNullExpressionValue(map, "errorHandler: FirebaseFu…response).toError()\n    }");
        return map;
    }

    @Override // com.smedialink.storage.data.datasource.transfer.WalletTransferDataSource
    public Observable<Result<Boolean>> transfer(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1504xb62448cf(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.smedialink.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        HDWallet hdWallet;
        PrivateKey keyForCoin;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof TransferArgs.TRON)) {
            throw new IllegalStateException("Incorrect transfer args passed");
        }
        Wallet.TRON tRONWallet = this.cryptoAccessManager.getTRONWallet();
        TransferArgs.TRON tron = (TransferArgs.TRON) args;
        byte[] bArr = null;
        String address = tRONWallet != null ? tRONWallet.getAddress() : null;
        if (address == null) {
            address = "";
        }
        Tron.Transaction createTransactionByType = createTransactionByType(tron, address);
        if (tRONWallet != null && (hdWallet = tRONWallet.getHdWallet()) != null && (keyForCoin = hdWallet.getKeyForCoin(CoinType.TRON)) != null) {
            bArr = keyForCoin.data();
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        String json = ((Tron.SigningOutput) AnySigner.sign(Tron.SigningInput.newBuilder().setTransaction(createTransactionByType).setPrivateKey(ByteString.copyFrom(bArr)).build(), CoinType.TRON, Tron.SigningOutput.parser())).getJson();
        Intrinsics.checkNotNullExpressionValue(json, "signerOutput.json");
        byte[] bytes = json.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        String hexString = Numeric.toHexString(bytes);
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(signerOutput.json.toByteArray())");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(hexString));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final Tron.Transaction createTransactionByType(TransferArgs.TRON tron, String str) {
        BigInteger convertToWei = NumberExtKt.convertToWei(Double.valueOf(tron.getAmount()), tron.getWeiConvertUnit());
        Tron.Transaction.Builder newBuilder = Tron.Transaction.newBuilder();
        String contractAddress = tron.getContractAddress();
        if (contractAddress == null || contractAddress.length() == 0) {
            newBuilder.setTransfer(Tron.TransferContract.newBuilder().setAmount(convertToWei.longValue()).setToAddress(tron.getRecipientAddress()).setOwnerAddress(str).build());
        } else {
            newBuilder.setTransferTrc20Contract(Tron.TransferTRC20Contract.newBuilder().setAmount(ByteString.copyFrom(convertToWei.toByteArray())).setToAddress(tron.getRecipientAddress()).setContractAddress(tron.getContractAddress()).setOwnerAddress(str).build());
        }
        Tron.Transaction build = newBuilder.setBlockHeader(Tron.BlockHeader.newBuilder().setNumber(tron.getBlockHeader().getNumber()).setTxTrieRoot(hexToByteString(tron.getBlockHeader().getTxTrieRoot())).setWitnessAddress(hexToByteString(tron.getBlockHeader().getWitnessAddress())).setParentHash(hexToByteString(tron.getBlockHeader().getParentHash())).setVersion(tron.getBlockHeader().getVersion()).setTimestamp(tron.getBlockHeader().getTimestamp()).build()).setFeeLimit(tron.getFeeLimit().longValue()).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …\n                .build()");
        return build;
    }

    private final ByteString hexToByteString(String str) {
        ByteString copyFrom = ByteString.copyFrom(StringKt.hexStringToByteArray(str));
        Intrinsics.checkNotNullExpressionValue(copyFrom, "copyFrom(hexStringToByteArray())");
        return copyFrom;
    }
}
