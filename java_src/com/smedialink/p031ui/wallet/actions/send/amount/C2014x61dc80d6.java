package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2014x61dc80d6 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $amount$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2014x61dc80d6(WalletSendAmountPresenter walletSendAmountPresenter, String str) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$amount$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1304invoke(result);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r0 != false) goto L37;
     */
    /* renamed from: invoke  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1304invoke(com.smedialink.storage.domain.model.Result<? extends java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.actions.send.amount.C2014x61dc80d6.m1304invoke(java.lang.Object):void");
    }
}
