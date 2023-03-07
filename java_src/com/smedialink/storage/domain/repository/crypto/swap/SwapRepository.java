package com.smedialink.storage.domain.repository.crypto.swap;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.swap.ApproveArgs;
import com.smedialink.storage.domain.model.crypto.swap.CryptoSwapMetadata;
import com.smedialink.storage.domain.model.crypto.swap.CryptoTokenApproveMetadata;
import com.smedialink.storage.domain.model.crypto.swap.SwapArgs;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.swap.TradeType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: SwapRepository.kt */
/* loaded from: classes3.dex */
public interface SwapRepository {
    Observable<Result<String>> approveToken(ApproveArgs approveArgs);

    Observable<Result<List<CryptoTokenApproveMetadata>>> getApproveTokensInfo(NetworkType networkType, SwapProtocol swapProtocol);

    Observable<Result<List<TokenInfo>>> getAvailableTokensToSwap(NetworkType networkType, SwapProtocol swapProtocol);

    Observable<Result<CryptoSwapMetadata>> getQuoteToSwap(TokenCode tokenCode, TokenCode tokenCode2, String str, TradeType tradeType, float f, NetworkType networkType, NetworkType networkType2, SwapProtocol swapProtocol);

    Observable<Result<String>> swap(SwapArgs swapArgs);
}
