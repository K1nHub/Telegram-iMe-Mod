package com.iMe.storage.data.mapper.cryptobox;

import com.iMe.storage.data.mapper.wallet.TokenMappingKt;
import com.iMe.storage.data.network.model.response.crypto.cryptobox.CryptoBoxCreationRulesResponse;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxCreationRules;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationRulesMapping.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxCreationRulesMappingKt {
    public static final CryptoBoxCreationRules mapToDomain(CryptoBoxCreationRulesResponse cryptoBoxCreationRulesResponse) {
        Intrinsics.checkNotNullParameter(cryptoBoxCreationRulesResponse, "<this>");
        return new CryptoBoxCreationRules(TokenMappingKt.mapToDomain(cryptoBoxCreationRulesResponse.getFeeToken()), cryptoBoxCreationRulesResponse.getFeePerUser(), cryptoBoxCreationRulesResponse.getFeePerCryptobox(), cryptoBoxCreationRulesResponse.getMinimalCapacity(), cryptoBoxCreationRulesResponse.getFactoryContractAddress(), cryptoBoxCreationRulesResponse.getFactoryContractUrl());
    }
}
