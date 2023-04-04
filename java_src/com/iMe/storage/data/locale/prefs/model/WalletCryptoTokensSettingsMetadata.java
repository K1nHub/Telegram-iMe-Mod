package com.iMe.storage.data.locale.prefs.model;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletCryptoTokensSettingsMetadata.kt */
/* loaded from: classes3.dex */
public final class WalletCryptoTokensSettingsMetadata {
    public static final Companion Companion = new Companion(null);
    private List<WalletCryptoTokensSettingsTokenState> states;

    public String toString() {
        return "WalletCryptoTokensSettingsMetadata(states=" + this.states + ')';
    }

    public WalletCryptoTokensSettingsMetadata(List<WalletCryptoTokensSettingsTokenState> states) {
        Intrinsics.checkNotNullParameter(states, "states");
        this.states = states;
    }

    public final List<WalletCryptoTokensSettingsTokenState> getStates() {
        return this.states;
    }

    public final void setStates(List<WalletCryptoTokensSettingsTokenState> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.states = list;
    }

    public boolean equals(Object obj) {
        if (obj instanceof WalletCryptoTokensSettingsMetadata) {
            return Intrinsics.areEqual(this.states, ((WalletCryptoTokensSettingsMetadata) obj).states);
        }
        return false;
    }

    public int hashCode() {
        return this.states.hashCode();
    }

    /* compiled from: WalletCryptoTokensSettingsMetadata.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletCryptoTokensSettingsMetadata getDefaultTokensSettings(NetworkType networkType) {
            int collectionSizeOrDefault;
            List mutableList;
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            List<TokenCode> tokensByNetwork = TokenCode.Companion.getTokensByNetwork(networkType);
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tokensByNetwork, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TokenCode tokenCode : tokensByNetwork) {
                arrayList.add(new WalletCryptoTokensSettingsTokenState(tokenCode.getName(), TokenInfo.Companion.map(tokenCode).getSortPosition(), true));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            return new WalletCryptoTokensSettingsMetadata(mutableList);
        }
    }
}
