package kotlin.properties;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
/* compiled from: ObservableProperty.kt */
/* loaded from: classes4.dex */
public abstract class ObservableProperty<V> implements ReadWriteProperty<Object, V> {
    private V value;

    protected void afterChange(KProperty<?> property, V v, V v2) {
        Intrinsics.checkNotNullParameter(property, "property");
    }

    protected boolean beforeChange(KProperty<?> property, V v, V v2) {
        Intrinsics.checkNotNullParameter(property, "property");
        return true;
    }

    public ObservableProperty(V v) {
        this.value = v;
    }

    @Override // kotlin.properties.ReadWriteProperty, kotlin.properties.ReadOnlyProperty
    public V getValue(Object obj, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return this.value;
    }

    @Override // kotlin.properties.ReadWriteProperty
    public void setValue(Object obj, KProperty<?> property, V v) {
        Intrinsics.checkNotNullParameter(property, "property");
        V v2 = this.value;
        if (beforeChange(property, v2, v)) {
            this.value = v;
            afterChange(property, v2, v);
        }
    }
}
