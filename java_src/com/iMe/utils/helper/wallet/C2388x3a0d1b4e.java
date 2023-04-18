package com.iMe.utils.helper.wallet;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.helper.wallet.AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2388x3a0d1b4e extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    public C2388x3a0d1b4e() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1543invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1543invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if ((result instanceof Result.Success) && ((Boolean) ((Result.Success) result).getData()).booleanValue()) {
            AuthHelper.INSTANCE.prepareAndStartAuthFlow();
        }
    }
}
