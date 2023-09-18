package com.iMe.storage.domain.repository.crypto.swap;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.swap.ApproveArgs;
import com.iMe.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.iMe.storage.domain.model.crypto.swap.SwapArgs;
import com.iMe.storage.domain.model.crypto.swap.TokenApproveData;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailedWithRate;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: SwapRepository.kt */
/* loaded from: classes4.dex */
public interface SwapRepository {
    Observable<Result<String>> approveToken(ApproveArgs approveArgs);

    Observable<Result<List<TokenApproveData>>> getApproveTokensInfo(SwapProtocol swapProtocol, String str, List<Token> list);

    Observable<Result<CursoredData<TokenDetailedWithRate>>> getAvailableTokensToSwap(SwapProtocol swapProtocol, TransactionDirection transactionDirection, String str, String str2, String str3, Integer num);

    Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(SwapProtocol swapProtocol, Token token, Token token2, String str, TradeType tradeType, Float f);

    Observable<Result<String>> swap(SwapArgs swapArgs);
}
