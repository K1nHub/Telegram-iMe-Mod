package kotlin.reflect;
/* compiled from: KProperty.kt */
/* loaded from: classes4.dex */
public interface KProperty<V> extends KCallable<V> {

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Accessor<V> {
        KProperty<V> getProperty();
    }

    /* compiled from: KProperty.kt */
    /* loaded from: classes4.dex */
    public interface Getter<V> extends Accessor<V>, KFunction<V> {
    }

    Getter<V> getGetter();
}
