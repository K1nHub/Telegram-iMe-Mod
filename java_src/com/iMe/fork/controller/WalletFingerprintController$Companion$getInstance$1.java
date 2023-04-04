package com.iMe.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletFingerprintController.kt */
/* loaded from: classes3.dex */
final class WalletFingerprintController$Companion$getInstance$1 extends Lambda implements Function1<Integer, WalletFingerprintController> {
    final /* synthetic */ int $accountIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletFingerprintController$Companion$getInstance$1(int i) {
        super(1);
        this.$accountIndex = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final WalletFingerprintController invoke(Integer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new WalletFingerprintController(this.$accountIndex);
    }
}
