package com.iMe.storage.domain.repository.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import io.reactivex.Observable;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
/* compiled from: WalletRepository.kt */
/* loaded from: classes3.dex */
public interface WalletRepository {
    Observable<Result<Boolean>> detachCustomToken(Token token);

    Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(Token token, String str, String str2, Network network);

    Observable<Result<CursoredData<TokenDetailed>>> getCustomTokens(String str);

    Observable<Result<Map<TokenDetailed, Boolean>>> getDisplayedTokens(String str);

    Observable<Result<List<Network>>> getSupportedNetworks();

    Observable<Result<Pair<TokenDetailed, Boolean>>> getTokenInfo(Token token);

    Observable<Result<TokenListsData>> getTokenListsData(Token token);

    Observable<Result<List<TokenBalance>>> getTokensBalance(List<Token> list, boolean z, String str);

    Observable<Result<List<TokenDisplaySettings.Crypto>>> getTokensSettings(String str);

    Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, String str);

    Observable<Result<List<Transaction>>> getWalletTransactionHistory(boolean z, String str, Token token, int i, String str2);

    Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens(String str, String str2, String str3);

    Observable<Result<Boolean>> sendTokens(TransferArgs transferArgs, Network network);

    Observable<Result<Boolean>> setTokenVisibility(Token token, boolean z);
}
