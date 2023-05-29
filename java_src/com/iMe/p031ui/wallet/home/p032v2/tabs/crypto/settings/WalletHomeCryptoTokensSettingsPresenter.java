package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.iMe.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletHomeCryptoTokensSettingsPresenter extends BasePresenter<WalletHomeCryptoTokensSettingsView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private NetworkType currentNetworkType;
    private boolean onlyPositiveTokens;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final WalletHomeCryptoTokensSettingsFragment.ScreenType screenType;
    private WalletCryptoTokensSettingsMetadata settings;
    private List<? extends SelectableToken> tokens;

    public WalletHomeCryptoTokensSettingsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus, ResourceManager resourceManager, WalletHomeCryptoTokensSettingsFragment.ScreenType screenType) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
        this.resourceManager = resourceManager;
        this.screenType = screenType;
        this.currentNetworkType = resolveNetworkType();
        this.settings = resolveTokensSettings();
        this.tokens = resolveTokens();
        this.onlyPositiveTokens = resolveOnlyPositiveTokensFlag();
    }

    public final NetworkType getCurrentNetworkType() {
        return this.currentNetworkType;
    }

    public final boolean getOnlyPositiveTokens() {
        return this.onlyPositiveTokens;
    }

    public final Pair<SelectableToken, WalletCryptoTokensSettingsTokenState> getTokenSetting(int i) {
        Object obj;
        SelectableToken selectableToken = this.tokens.get(i);
        Iterator<T> it = this.settings.getStates().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((WalletCryptoTokensSettingsTokenState) obj).getToken(), selectableToken.getId())) {
                break;
            }
        }
        return TuplesKt.m85to(selectableToken, (WalletCryptoTokensSettingsTokenState) obj);
    }

    public static /* synthetic */ void saveSettings$default(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletHomeCryptoTokensSettingsPresenter.saveSettings(z);
    }

    public final void saveSettings(boolean z) {
        if (Intrinsics.areEqual(this.settings, resolveTokensSettings()) && this.onlyPositiveTokens == resolveOnlyPositiveTokensFlag() && !z) {
            return;
        }
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) {
            this.cryptoPreferenceHelper.setBinanceTokensSettings(this.settings);
            this.cryptoPreferenceHelper.setBinanceOnlyPositiveTokens(this.onlyPositiveTokens);
            this.rxEventBus.publish(DomainRxEvents.BinanceTokensSettingsChanged.INSTANCE);
        } else if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
            this.cryptoPreferenceHelper.saveTokensSettings(this.settings, this.currentNetworkType);
            this.cryptoPreferenceHelper.setOnlyPositiveTokens(this.onlyPositiveTokens);
            if (this.currentNetworkType == ((WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) this.screenType).getNetworkType()) {
                this.rxEventBus.publish(DomainRxEvents.TokensSettingsChanged.INSTANCE);
            }
        }
    }

    public final void resetSettings() {
        resetTokensPrefSettings();
        WalletCryptoTokensSettingsMetadata resolveTokensSettings = resolveTokensSettings();
        boolean resolveOnlyPositiveTokensFlag = resolveOnlyPositiveTokensFlag();
        if (Intrinsics.areEqual(this.settings, resolveTokensSettings) && this.onlyPositiveTokens == resolveOnlyPositiveTokensFlag) {
            return;
        }
        this.settings = resolveTokensSettings;
        this.onlyPositiveTokens = resolveOnlyPositiveTokensFlag;
        this.tokens = resolveTokens();
        saveSettings(true);
    }

    public final void switchTokenEnabled(int i) {
        WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState = this.settings.getStates().get(i);
        walletCryptoTokensSettingsTokenState.setEnabled(!walletCryptoTokensSettingsTokenState.isEnabled());
    }

    public final void swapTokensPositions(int i, int i2) {
        List<WalletCryptoTokensSettingsTokenState> states = this.settings.getStates();
        WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState = states.get(i);
        WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState2 = states.get(i2);
        walletCryptoTokensSettingsTokenState.setPosition(i2);
        walletCryptoTokensSettingsTokenState2.setPosition(i);
        states.set(i, walletCryptoTokensSettingsTokenState2);
        states.set(i2, walletCryptoTokensSettingsTokenState);
    }

    public final void switchOnlyPositiveTokens() {
        this.onlyPositiveTokens = !this.onlyPositiveTokens;
    }

    public final void setNetworkType(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        saveSettings$default(this, false, 1, null);
        this.currentNetworkType = networkType;
        this.settings = resolveTokensSettings();
        this.tokens = resolveTokens();
        resolveTokensAndShow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        resolveTokensAndShow();
    }

    private final void resolveTokensAndShow() {
        ((WalletHomeCryptoTokensSettingsView) getViewState()).showTokens(this.tokens);
    }

    private final void resetTokensPrefSettings() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) {
            cryptoPreferenceHelper.resetBinanceTokensSettings();
        } else if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
            cryptoPreferenceHelper.resetTokensSettingsByNetwork(this.currentNetworkType);
        }
    }

    private final NetworkType resolveNetworkType() {
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) {
            return this.cryptoPreferenceHelper.getNetworkType();
        }
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
            return ((WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) screenType).getNetworkType();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final WalletCryptoTokensSettingsMetadata resolveTokensSettings() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        int collectionSizeOrDefault2;
        List mutableList;
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) {
            WalletCryptoTokensSettingsMetadata binanceTokensSettings = this.cryptoPreferenceHelper.getBinanceTokensSettings();
            if (binanceTokensSettings.getStates() == null) {
                List<SelectableToken> tokens = ((WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) this.screenType).getTokens();
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokens, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                int i = 0;
                for (Object obj : tokens) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    arrayList.add(new WalletCryptoTokensSettingsTokenState(((SelectableToken) obj).getId(), i, true));
                    i = i2;
                }
                mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
                binanceTokensSettings.setStates(mutableList);
            }
            if (binanceTokensSettings.getStates().size() != ((WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) this.screenType).getTokens().size()) {
                List<WalletCryptoTokensSettingsTokenState> states = binanceTokensSettings.getStates();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(states, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj2 : states) {
                    linkedHashMap.put(((WalletCryptoTokensSettingsTokenState) obj2).getToken(), obj2);
                }
                ArrayList arrayList2 = new ArrayList();
                for (SelectableToken selectableToken : ((WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) this.screenType).getTokens()) {
                    if (linkedHashMap.get(selectableToken.getId()) == null) {
                        arrayList2.add(new WalletCryptoTokensSettingsTokenState(selectableToken.getId(), Integer.MAX_VALUE, true));
                    } else {
                        Object obj3 = linkedHashMap.get(selectableToken.getId());
                        Intrinsics.checkNotNull(obj3);
                        arrayList2.add(obj3);
                    }
                }
                binanceTokensSettings.setStates(arrayList2);
                return binanceTokensSettings;
            }
            return binanceTokensSettings;
        } else if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
            return this.cryptoPreferenceHelper.getTokensSettings(this.currentNetworkType);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    private final boolean resolveOnlyPositiveTokensFlag() {
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) {
            return this.cryptoPreferenceHelper.getBinanceOnlyPositiveTokens();
        }
        if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
            return this.cryptoPreferenceHelper.getOnlyPositiveTokens();
        }
        throw new NoWhenBranchMatchedException();
    }

    private final List<SelectableToken> resolveTokens() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        int collectionSizeOrDefault2;
        List<SelectableToken> sortedWith;
        List<SelectableToken> sortedWith2;
        List<WalletCryptoTokensSettingsTokenState> states = this.settings.getStates();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(states, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        final LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState : states) {
            linkedHashMap.put(walletCryptoTokensSettingsTokenState.getToken(), Integer.valueOf(walletCryptoTokensSettingsTokenState.getPosition()));
        }
        WalletHomeCryptoTokensSettingsFragment.ScreenType screenType = this.screenType;
        if (!(screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance)) {
            if (screenType instanceof WalletHomeCryptoTokensSettingsFragment.ScreenType.Crypto) {
                List<TokenCode> tokensByNetwork = TokenCode.Companion.getTokensByNetwork(this.currentNetworkType);
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensByNetwork, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                for (TokenCode tokenCode : tokensByNetwork) {
                    arrayList.add(TokenInfo.Companion.map(tokenCode));
                }
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(SelectableMappingKt.mapToSelectable(arrayList, this.resourceManager, this.currentNetworkType), new Comparator() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        Integer num = (Integer) linkedHashMap.get(((SelectableToken.WithResLogo) t).getId());
                        Integer valueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
                        Integer num2 = (Integer) linkedHashMap.get(((SelectableToken.WithResLogo) t2).getId());
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(num2 != null ? num2.intValue() : Integer.MAX_VALUE));
                        return compareValues;
                    }
                });
                return sortedWith;
            }
            throw new NoWhenBranchMatchedException();
        }
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(((WalletHomeCryptoTokensSettingsFragment.ScreenType.Binance) screenType).getTokens(), new Comparator() { // from class: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$resolveTokens$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                Integer num = (Integer) linkedHashMap.get(((SelectableToken) t).getId());
                Integer valueOf = Integer.valueOf(num != null ? num.intValue() : Integer.MAX_VALUE);
                Integer num2 = (Integer) linkedHashMap.get(((SelectableToken) t2).getId());
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(num2 != null ? num2.intValue() : Integer.MAX_VALUE));
                return compareValues;
            }
        });
        return sortedWith2;
    }
}
