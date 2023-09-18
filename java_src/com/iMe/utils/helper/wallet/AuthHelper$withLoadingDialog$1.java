package com.iMe.utils.helper.wallet;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.utils.helper.wallet.AuthHelper;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuthHelper.kt */
/* loaded from: classes6.dex */
public final class AuthHelper$withLoadingDialog$1 extends Lambda implements Function1<Disposable, Unit> {
    public static final AuthHelper$withLoadingDialog$1 INSTANCE = new AuthHelper$withLoadingDialog$1();

    AuthHelper$withLoadingDialog$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final Disposable disposable) {
        AuthHelper.Delegate delegate;
        delegate = AuthHelper.delegate;
        if (delegate != null) {
            delegate.showLoadingDialog(new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.AuthHelper$withLoadingDialog$1$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    AuthHelper$withLoadingDialog$1.invoke$lambda$0(Disposable.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(Disposable disposable) {
        disposable.dispose();
        AuthHelper.INSTANCE.onAuthFlowFinished();
    }
}
