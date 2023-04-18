package com.iMe.utils.helper.wallet;

import com.iMe.fork.utils.Callbacks$Callback1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: AuthHelper.kt */
/* loaded from: classes4.dex */
final class AuthHelper$subscribeWithCommonErrorHandling$1 extends Lambda implements Function1<T, Unit> {
    final /* synthetic */ Callbacks$Callback1<T> $onSuccess;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthHelper$subscribeWithCommonErrorHandling$1(Callbacks$Callback1<T> callbacks$Callback1) {
        super(1);
        this.$onSuccess = callbacks$Callback1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2((AuthHelper$subscribeWithCommonErrorHandling$1) obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(T t) {
        this.$onSuccess.invoke(t);
    }
}
