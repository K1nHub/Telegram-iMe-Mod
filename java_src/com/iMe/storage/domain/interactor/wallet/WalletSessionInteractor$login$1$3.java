package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletSessionInteractor.kt */
/* loaded from: classes3.dex */
final class WalletSessionInteractor$login$1$3 extends Lambda implements Function1<Result<? extends Boolean>, Result<? extends SessionTokens>> {
    final /* synthetic */ Result<SessionTokens> $result;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSessionInteractor$login$1$3(Result<SessionTokens> result) {
        super(1);
        this.$result = result;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<SessionTokens> invoke2(Result<Boolean> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.$result;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends SessionTokens> invoke(Result<? extends Boolean> result) {
        return invoke2((Result<Boolean>) result);
    }
}