package moxy.ktx;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import moxy.MvpDelegate;
import moxy.MvpDelegateHolder;
import moxy.MvpPresenter;
/* compiled from: Delegates.kt */
@Metadata(m154bv = {1, 0, 3}, m153d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a=\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u000e\b\u0000\u0010\u0001\u0018\u0001*\u0006\u0012\u0002\b\u00030\u0000*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\b\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¨\u0006\t"}, m152d2 = {"Lmoxy/MvpPresenter;", "T", "Lmoxy/MvpDelegateHolder;", "", AppMeasurementSdk.ConditionalUserProperty.NAME, "Lkotlin/Function0;", "factory", "Lmoxy/ktx/MoxyKtxDelegate;", "moxyPresenter", "moxy-ktx"}, m151k = 2, m150mv = {1, 4, 0})
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
