package com.iMe.i_staking.datasource;

import com.iMe.i_staking.StakingApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.utils.crypto.EthTransactionSigner;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import io.reactivex.Observable;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import wallet.core.jni.proto.Ethereum;
/* compiled from: StakingDataSourceImpl.kt */
/* loaded from: classes3.dex */
public final class StakingDataSourceImpl implements StakingDataSource {
    private final CryptoAccessManager cryptoAccessManager;
    private final FirebaseFunctionsErrorHandler firebaseErrorHandler;
    private final StakingApi stakingApi;

    public StakingDataSourceImpl(CryptoAccessManager cryptoAccessManager, FirebaseFunctionsErrorHandler firebaseErrorHandler, StakingApi stakingApi) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(stakingApi, "stakingApi");
        this.cryptoAccessManager = cryptoAccessManager;
        this.firebaseErrorHandler = firebaseErrorHandler;
        this.stakingApi = stakingApi;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendApprovalExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1565xdf81e200(new C1558x96aeb888(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendDepositExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1565xdf81e200(new C1561x347fcced(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendClaimExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1565xdf81e200(new StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendWithdrawExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1565xdf81e200(new C1563x989508a1(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        byte[] bArr;
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof StakingTransactionArgs)) {
            throw new IllegalStateException("Incorrect staking args passed");
        }
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        if (eVMWallet == null || (bArr = eVMWallet.getPrivateKeyBytes()) == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = bArr;
        StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) args;
        Ethereum.Transaction.Builder newBuilder = Ethereum.Transaction.newBuilder();
        Ethereum.Transaction.ContractGeneric.Builder data = Ethereum.Transaction.ContractGeneric.newBuilder().setData(CryptoExtKt.hexToByteString(stakingTransactionArgs.getData()));
        BigInteger valueOf = BigInteger.valueOf(stakingTransactionArgs.getValue());
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(this.toLong())");
        Ethereum.Transaction transaction = newBuilder.setContractGeneric(data.setAmount(CryptoExtKt.toByteString(valueOf)).build()).build();
        EthTransactionSigner ethTransactionSigner = EthTransactionSigner.INSTANCE;
        long chainId = stakingTransactionArgs.getChainId();
        BigInteger gasPrice = stakingTransactionArgs.getGasPrice();
        BigInteger gasLimit = stakingTransactionArgs.getGasLimit();
        BigInteger nonce = stakingTransactionArgs.getNonce();
        String to = stakingTransactionArgs.getTo();
        Intrinsics.checkNotNullExpressionValue(transaction, "transaction");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(ethTransactionSigner.sign(chainId, gasPrice, gasLimit, nonce, to, transaction, bArr2)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
