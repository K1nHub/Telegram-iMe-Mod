package com.smedialink.model.wallet.transaction;

import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StakingOperationItem.kt */
/* loaded from: classes3.dex */
public final class StakingOperationItem$tokenInfo$2 extends Lambda implements Function0<TokenInfo> {
    final /* synthetic */ StakingOperationItem this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StakingOperationItem$tokenInfo$2(StakingOperationItem stakingOperationItem) {
        super(0);
        this.this$0 = stakingOperationItem;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TokenInfo invoke() {
        return TokenInfo.Companion.map(TokenCode.Companion.map(this.this$0.getTokenSymbol()));
    }
}
