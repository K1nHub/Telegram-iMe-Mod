package com.iMe.storage.data.network.api.own;

import com.iMe.storage.data.network.model.request.wallet.CustomTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.DisplayedTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.GetWalletTransactionsRequest;
import com.iMe.storage.data.network.model.request.wallet.RefreshTokenRequest;
import com.iMe.storage.data.network.model.request.wallet.SessionTokensRequest;
import com.iMe.storage.data.network.model.request.wallet.SetTokenVisibilityRequest;
import com.iMe.storage.data.network.model.request.wallet.TokenCommonRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensBalanceRequest;
import com.iMe.storage.data.network.model.request.wallet.TokensSearchRequest;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.crypto.wallet.NetworksListResponse;
import com.iMe.storage.data.network.model.response.wallet.CustomTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.DisplayedTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.SessionTokensResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenInfoResponse;
import com.iMe.storage.data.network.model.response.wallet.TokenListsResponse;
import com.iMe.storage.data.network.model.response.wallet.TokensSearchResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletTransactionsResponse;
import io.reactivex.Observable;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: WalletApi.kt */
/* loaded from: classes3.dex */
public interface WalletApi {
    @POST("detachCustomToken")
    Observable<ApiBaseResponse<Object>> detachCustomToken(@Body TokenCommonRequest tokenCommonRequest);

    @POST("auth/issueTokens")
    Observable<ApiBaseResponse<SessionTokensResponse>> getAuthTokensByTelegramLoginData(@Body SessionTokensRequest sessionTokensRequest);

    @POST("getCustomTokens")
    Observable<ApiBaseResponse<CustomTokensResponse>> getCustomTokens(@Body CustomTokensRequest customTokensRequest);

    @POST("getDisplayedTokens")
    Observable<ApiBaseResponse<DisplayedTokensResponse>> getDisplayedTokens(@Body DisplayedTokensRequest displayedTokensRequest);

    @POST("getNetworks")
    Observable<ApiBaseResponse<NetworksListResponse>> getSupportedNetworks();

    @POST("getTokenInfo")
    Observable<ApiBaseResponse<TokenInfoResponse>> getTokenInfo(@Body TokenCommonRequest tokenCommonRequest);

    @POST("getTokenLists")
    Observable<ApiBaseResponse<TokenListsResponse>> getTokenListsData(@Body TokenCommonRequest tokenCommonRequest);

    @POST("v2/getWalletBalance")
    Observable<ApiBaseResponse<WalletBalancesResponse>> getWalletTokensBalance(@Body TokensBalanceRequest tokensBalanceRequest);

    @POST("v2/getWalletTransactions")
    Observable<ApiBaseResponse<WalletTransactionsResponse>> getWalletTransactions(@Body GetWalletTransactionsRequest getWalletTransactionsRequest);

    @POST("auth/refreshTokens")
    Observable<ApiBaseResponse<SessionTokensResponse>> refreshToken(@Body RefreshTokenRequest refreshTokenRequest);

    @POST("searchTokens")
    Observable<ApiBaseResponse<TokensSearchResponse>> searchTokens(@Body TokensSearchRequest tokensSearchRequest);

    @POST("setTokenVisibility")
    Observable<ApiBaseResponse<Object>> setTokenVisibility(@Body SetTokenVisibilityRequest setTokenVisibilityRequest);
}
