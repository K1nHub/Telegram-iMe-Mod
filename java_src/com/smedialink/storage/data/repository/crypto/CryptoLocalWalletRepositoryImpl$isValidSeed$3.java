package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class CryptoLocalWalletRepositoryImpl$isValidSeed$3 extends Lambda implements Function1<Throwable, Result<? extends Boolean>> {
    public static final CryptoLocalWalletRepositoryImpl$isValidSeed$3 INSTANCE = new CryptoLocalWalletRepositoryImpl$isValidSeed$3();

    CryptoLocalWalletRepositoryImpl$isValidSeed$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.FALSE);
    }
}
