package kotlin.reflect;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KProperty1<T, V> extends KProperty<V>, Function1<T, V> {

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Getter<T, V> extends KProperty.Getter<V>, Function1<T, V> {
    }

    V get(T t);

    @Override // kotlin.reflect.KProperty
    Getter<T, V> getGetter();
}
