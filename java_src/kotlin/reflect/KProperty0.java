package kotlin.reflect;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;
/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KProperty0<V> extends KProperty<V>, Function0<V> {

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Getter<V> extends KProperty.Getter<V>, Function0<V> {
    }

    V get();

    @Override // kotlin.reflect.KProperty
    Getter<V> getGetter();
}
