package com.iMe.i_staking.datasource;

import com.iMe.i_staking.StakingApi;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingTransactionArgs;
import io.reactivex.Observable;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.crypto.RawTransaction;
import org.web3j.crypto.TransactionEncoder;
import org.web3j.utils.Numeric;
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
        Observable flatMap = sign(args).flatMap(new C1500xdf81e200(new C1493x96aeb888(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendDepositExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1500xdf81e200(new C1496x347fcced(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendClaimExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1500xdf81e200(new StakingDataSourceImpl$sendClaimExecute$$inlined$flatMapSuccess$1(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.i_staking.datasource.StakingDataSource
    public Observable<Result<StakingOperation>> sendWithdrawExecute(String wrappedAction, TransactionArgs args) {
        Intrinsics.checkNotNullParameter(wrappedAction, "wrappedAction");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable flatMap = sign(args).flatMap(new C1500xdf81e200(new C1498x989508a1(this, wrappedAction)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        return flatMap;
    }

    @Override // com.iMe.storage.data.datasource.base.SignTransactionDatasource
    public Observable<Result<String>> sign(TransactionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!(args instanceof StakingTransactionArgs)) {
            throw new IllegalStateException("Incorrect staking args passed");
        }
        StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) args;
        RawTransaction createTransactionByType = createTransactionByType(stakingTransactionArgs);
        long chainId = stakingTransactionArgs.getChainId();
        Wallet.EVM eVMWallet = this.cryptoAccessManager.getEVMWallet();
        String hexString = Numeric.toHexString(TransactionEncoder.signMessage(createTransactionByType, chainId, eVMWallet != null ? eVMWallet.getCredentials() : null));
        Intrinsics.checkNotNullExpressionValue(hexString, "toHexString(signedTransaction)");
        Observable<Result<String>> just = Observable.just(Result.Companion.success(hexString));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    private final RawTransaction createTransactionByType(StakingTransactionArgs stakingTransactionArgs) {
        if (Intrinsics.areEqual(stakingTransactionArgs.getData(), "0x")) {
            RawTransaction createEtherTransaction = RawTransaction.createEtherTransaction(stakingTransactionArgs.getNonce(), stakingTransactionArgs.getGasPrice(), stakingTransactionArgs.getGasLimit(), stakingTransactionArgs.getTo(), BigInteger.ZERO);
            Intrinsics.checkNotNullExpressionValue(createEtherTransaction, "{\n                RawTra…          )\n            }");
            return createEtherTransaction;
        }
        RawTransaction createTransaction = RawTransaction.createTransaction(stakingTransactionArgs.getNonce(), stakingTransactionArgs.getGasPrice(), stakingTransactionArgs.getGasLimit(), stakingTransactionArgs.getTo(), BigInteger.ZERO, stakingTransactionArgs.getData());
        Intrinsics.checkNotNullExpressionValue(createTransaction, "{\n                RawTra…          )\n            }");
        return createTransaction;
    }
}
