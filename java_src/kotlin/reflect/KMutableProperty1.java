package kotlin.reflect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KMutableProperty;
/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KMutableProperty1<T, V> extends KProperty1<T, V>, KMutableProperty<V> {

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Setter<T, V> extends KMutableProperty.Setter<V>, Function2<T, V, Unit> {
    }

    @Override // kotlin.reflect.KMutableProperty
    Setter<T, V> getSetter();
}
