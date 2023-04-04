package com.iMe.storage.domain.interactor.crypto.pin;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $guid$inlined;
    final /* synthetic */ String $safePassword$inlined;
    final /* synthetic */ PinCodeInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PinCodeInteractor$createPinCode$$inlined$doOnSuccessNext$1(PinCodeInteractor pinCodeInteractor, String str, String str2) {
        super(1);
        this.this$0 = pinCodeInteractor;
        this.$guid$inlined = str;
        this.$safePassword$inlined = str2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        invoke2(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Result<? extends Boolean> result) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        if (result instanceof Result.Success) {
            Objects.requireNonNull(result, "null cannot be cast to non-null type com.iMe.storage.domain.model.Result<kotlin.Boolean>");
            cryptoPreferenceHelper = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper.setLastLoggedInGuid(this.$guid$inlined);
            cryptoPreferenceHelper2 = this.this$0.cryptoPreferenceHelper;
            cryptoPreferenceHelper2.setWalletPassword(this.$safePassword$inlined);
        }
    }
}
