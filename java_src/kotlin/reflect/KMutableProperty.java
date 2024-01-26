package kotlin.reflect;

import kotlin.Unit;
import kotlin.reflect.KProperty;
/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KMutableProperty<V> extends KProperty<V> {

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Setter<V> extends KProperty.Accessor<V>, KFunction<Unit> {
    }

    Setter<V> getSetter();
}
