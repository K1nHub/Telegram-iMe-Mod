package kotlin.properties;

import kotlin.reflect.KProperty;
/* compiled from: Interfaces.kt */
/* loaded from: classes4.dex */
public interface ReadWriteProperty<T, V> extends ReadOnlyProperty<T, V> {
    @Override // kotlin.properties.ReadOnlyProperty
    V getValue(T t, KProperty<?> kProperty);

    void setValue(T t, KProperty<?> kProperty, V v);
}
