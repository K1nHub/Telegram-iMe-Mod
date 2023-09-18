package moxy.ktx;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* compiled from: MoxyKtxDelegate.kt */
/* loaded from: classes6.dex */
public final class MoxyKtxDelegate<T extends MvpPresenter<?>> {
    private final Function0<T> factory;
    private T presenter;

    /* JADX WARN: Multi-variable type inference failed */
    public MoxyKtxDelegate(MvpDelegate<?> delegate, final String name, Function0<? extends T> factory) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        this.factory = factory;
        delegate.registerExternalPresenterField(new PresenterField<Object>(name, null, null) { // from class: moxy.ktx.MoxyKtxDelegate$field$1
            @Override // moxy.presenter.PresenterField
            public MvpPresenter<?> providePresenter(Object obj) {
                Function0 function0;
                function0 = MoxyKtxDelegate.this.factory;
                return (MvpPresenter) function0.invoke();
            }

            @Override // moxy.presenter.PresenterField
            public void bind(Object obj, MvpPresenter<?> presenter) {
                Intrinsics.checkParameterIsNotNull(presenter, "presenter");
                MoxyKtxDelegate.this.presenter = presenter;
            }
        });
    }

    public final T getValue(Object obj, KProperty<?> property) {
        Intrinsics.checkParameterIsNotNull(property, "property");
        T t = this.presenter;
        if (t != null) {
            return t;
        }
        throw new IllegalStateException("Presenter can be accessed only after MvpDelegate.onCreate() call");
    }
}
