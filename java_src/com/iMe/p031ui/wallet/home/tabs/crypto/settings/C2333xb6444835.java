package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.state.GlobalState;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$loadTokens$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2333xb6444835 extends Lambda implements Function1<Result<? extends Map<TokenDetailed, ? extends Boolean>>, Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2333xb6444835(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Map<TokenDetailed, ? extends Boolean>> result) {
        m1501invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1501invoke(Result<? extends Map<TokenDetailed, ? extends Boolean>> it) {
        ResourceManager resourceManager;
        CryptoPreferenceHelper cryptoPreferenceHelper;
        List mutableList;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        List list;
        List sortedTokens;
        List list2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Map<TokenDetailed, ? extends Boolean>> result = it;
        if (result instanceof Result.Success) {
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            List<TokenDisplaySettings.Crypto> tokensSettings = cryptoPreferenceHelper.getTokensSettings(this.this$0.getNetworkId());
            WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter = this.this$0;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) tokensSettings);
            walletHomeCryptoTokensSettingsPresenter.settings = mutableList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensSettings, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (TokenDisplaySettings.Crypto crypto : tokensSettings) {
                linkedHashMap.put(crypto.getTokenAddress(), Integer.valueOf(crypto.getPosition()));
            }
            WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter2 = this.this$0;
            list = CollectionsKt___CollectionsKt.toList(((Map) ((Result.Success) result).getData()).keySet());
            sortedTokens = walletHomeCryptoTokensSettingsPresenter2.getSortedTokens(list, linkedHashMap);
            walletHomeCryptoTokensSettingsPresenter2.tokens = sortedTokens;
            list2 = this.this$0.tokens;
            ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).renderTokensSettings(TokenUiMappingKt.mapToUI(list2));
        } else if (result instanceof Result.Loading) {
            this.this$0.renderTokensSettingsStateItem(GlobalState.Progress.INSTANCE);
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            this.this$0.renderTokensSettingsStateItem(error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
            resourceManager = this.this$0.resourceManager;
            ((WalletHomeCryptoTokensSettingsView) this.this$0.getViewState()).showErrorToast(error, resourceManager);
        }
    }
}
