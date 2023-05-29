package com.iMe.p031ui.kikliko;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.kikliko.EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2048x605e6f86 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    public C2048x605e6f86() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1344invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1344invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
    }
}
