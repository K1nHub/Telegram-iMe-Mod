package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2103x61dc80d6 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $amount$inlined;
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2103x61dc80d6(WalletSendAmountPresenter walletSendAmountPresenter, String str) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
        this.$amount$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1401invoke(result);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r0 != false) goto L33;
     */
    /* renamed from: invoke  reason: collision with other method in class */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1401invoke(com.iMe.storage.domain.model.Result<? extends java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.actions.send.amount.C2103x61dc80d6.m1401invoke(java.lang.Object):void");
    }
}
