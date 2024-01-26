package kotlin.properties;

import kotlin.reflect.KProperty;
/* compiled from: Interfaces.kt */
/* loaded from: classes4.dex */
public interface ReadOnlyProperty<T, V> {
    V getValue(T t, KProperty<?> kProperty);
}
