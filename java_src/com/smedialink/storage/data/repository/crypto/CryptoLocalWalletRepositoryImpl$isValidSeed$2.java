package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.model.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class CryptoLocalWalletRepositoryImpl$isValidSeed$2 extends Lambda implements Function1<Result<? extends String>, Result<? extends Boolean>> {
    public static final CryptoLocalWalletRepositoryImpl$isValidSeed$2 INSTANCE = new CryptoLocalWalletRepositoryImpl$isValidSeed$2();

    CryptoLocalWalletRepositoryImpl$isValidSeed$2() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<Boolean> invoke2(Result<String> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Result.Companion.success(Boolean.valueOf(it.isSuccess()));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends Boolean> invoke(Result<? extends String> result) {
        return invoke2((Result<String>) result);
    }
}
