package com.iMe.storage.domain.model.wallet.token;

import com.iMe.storage.R$string;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: TokenType.kt */
/* loaded from: classes3.dex */
public enum TokenType {
    CRYPTO(R$string.wallet_account_type_crypto),
    NFT(R$string.wallet_network_type_nft);
    
    public static final Companion Companion = new Companion(null);
    private int category;

    TokenType(int i) {
        this.category = i;
    }

    public final int getCategory() {
        return this.category;
    }

    public final void setCategory(int i) {
        this.category = i;
    }

    public final boolean isNft() {
        return this == NFT;
    }

    public final boolean isCrypto() {
        return this == CRYPTO;
    }

    /* compiled from: TokenType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<TokenType> getAvailableTypes() {
            List<TokenType> listOf;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenType[]{TokenType.CRYPTO, TokenType.NFT});
            return listOf;
        }

        public final List<Integer> getAvailableTypesTitles() {
            List<TokenType> listOf;
            int collectionSizeOrDefault;
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TokenType[]{TokenType.CRYPTO, TokenType.NFT});
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TokenType tokenType : listOf) {
                arrayList.add(Integer.valueOf(tokenType.getCategory()));
            }
            return arrayList;
        }
    }
}
