package com.iMe.utils.helper.wallet;

import java.util.concurrent.TimeoutException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthHelper.kt */
/* loaded from: classes4.dex */
public final class AuthHelper$subscribeWithCommonErrorHandling$2 extends Lambda implements Function1<Throwable, Unit> {
    public static final AuthHelper$subscribeWithCommonErrorHandling$2 INSTANCE = new AuthHelper$subscribeWithCommonErrorHandling$2();

    AuthHelper$subscribeWithCommonErrorHandling$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Timber.m6e(th);
        if (th instanceof TimeoutException) {
            AuthHelper.onError$default(AuthHelper.INSTANCE, null, 1, null);
            return;
        }
        AuthHelper authHelper = AuthHelper.INSTANCE;
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        authHelper.onError(message);
    }
}
