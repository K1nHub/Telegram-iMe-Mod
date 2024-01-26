package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.manager.ton.WalletV3R2Contract;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletV3R2Contract.kt */
@DebugMetadata(m148c = "com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion", m147f = "WalletV3R2Contract.kt", m146l = {131}, m145m = "loadContract")
/* loaded from: classes3.dex */
public final class WalletV3R2Contract$Companion$loadContract$2 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WalletV3R2Contract.Companion this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletV3R2Contract$Companion$loadContract$2(WalletV3R2Contract.Companion companion, Continuation<? super WalletV3R2Contract$Companion$loadContract$2> continuation) {
        super(continuation);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.loadContract(null, null, null, this);
    }
}
