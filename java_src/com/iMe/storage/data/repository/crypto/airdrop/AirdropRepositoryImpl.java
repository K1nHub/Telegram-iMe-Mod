package com.iMe.storage.data.repository.crypto.airdrop;

import com.iMe.storage.data.network.api.own.AirdropApi;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.repository.crypto.airdrop.AirdropRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropRepositoryImpl.kt */
/* loaded from: classes3.dex */
public final class AirdropRepositoryImpl implements AirdropRepository {
    private final AirdropApi airdropApi;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;

    public AirdropRepositoryImpl(AirdropApi airdropApi, CryptoPreferenceHelper cryptoPreferenceHelper, FirebaseFunctionsErrorHandler firebaseErrorHandler, ApiErrorHandler errorHandler) {
        Intrinsics.checkNotNullParameter(airdropApi, "airdropApi");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(firebaseErrorHandler, "firebaseErrorHandler");
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.airdropApi = airdropApi;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }
}
