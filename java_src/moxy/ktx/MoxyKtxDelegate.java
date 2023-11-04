package moxy.ktx;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import moxy.MvpDelegate;
import moxy.MvpPresenter;
import moxy.presenter.PresenterField;
/* compiled from: MoxyKtxDelegate.kt */
@Metadata(m154bv = {1, 0, 3}, m153d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00020\u0003B)\u0012\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b¢\u0006\u0004\b\u0012\u0010\u0013J&\u0010\u0007\u001a\u00028\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0086\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0018\u0010\t\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0014"}, m152d2 = {"Lmoxy/ktx/MoxyKtxDelegate;", "Lmoxy/MvpPresenter;", "T", "", "thisRef", "Lkotlin/reflect/KProperty;", "property", "getValue", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;", "presenter", "Lmoxy/MvpPresenter;", "Lkotlin/Function0;", "factory", "Lkotlin/jvm/functions/Function0;", "Lmoxy/MvpDelegate;", "delegate", "", AppMeasurementSdk.ConditionalUserProperty.NAME, "<init>", "(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "moxy-ktx"}, m151k = 1, m150mv = {1, 4, 0})
/* loaded from: classes4.dex */
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
