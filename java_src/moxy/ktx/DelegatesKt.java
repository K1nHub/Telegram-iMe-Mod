package moxy.ktx;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import moxy.MvpPresenter;
/* compiled from: Delegates.kt */
/* loaded from: classes4.dex */
public final class DelegatesKt {
    public static /* synthetic */ MoxyKtxDelegate moxyPresenter$default(MvpDelegateHolder moxyPresenter, String name, Function0 factory, int i, Object obj) {
        if ((i & 1) != 0) {
            name = "presenter";
        }
        Intrinsics.checkParameterIsNotNull(moxyPresenter, "$this$moxyPresenter");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        MvpDelegate mvpDelegate = moxyPresenter.getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        StringBuilder sb = new StringBuilder();
        Intrinsics.reifiedOperationMarker(4, "T");
        sb.append(MvpPresenter.class.getName());
        sb.append(".");
        sb.append(name);
        return new MoxyKtxDelegate(mvpDelegate, sb.toString(), factory);
    }

    public static final /* synthetic */ <T extends MvpPresenter<?>> MoxyKtxDelegate<T> moxyPresenter(MvpDelegateHolder moxyPresenter, String name, Function0<? extends T> factory) {
        Intrinsics.checkParameterIsNotNull(moxyPresenter, "$this$moxyPresenter");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        MvpDelegate mvpDelegate = moxyPresenter.getMvpDelegate();
        Intrinsics.checkExpressionValueIsNotNull(mvpDelegate, "mvpDelegate");
        StringBuilder sb = new StringBuilder();
        Intrinsics.reifiedOperationMarker(4, "T");
        sb.append(MvpPresenter.class.getName());
        sb.append(".");
        sb.append(name);
        return new MoxyKtxDelegate<>(mvpDelegate, sb.toString(), factory);
    }
}
