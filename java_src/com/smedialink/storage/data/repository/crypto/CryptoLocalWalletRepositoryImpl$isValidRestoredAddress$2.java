package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2 extends Lambda implements Function1<Throwable, Result<? extends Boolean>> {
    public static final CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2 INSTANCE = new CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2();

    CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.FALSE);
    }
}
