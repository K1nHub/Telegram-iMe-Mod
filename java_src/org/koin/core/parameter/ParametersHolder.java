package org.koin.core.parameter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.core.error.NoParameterFoundException;
import org.koin.ext.KClassExtKt;
/* compiled from: ParametersHolder.kt */
/* loaded from: classes4.dex */
public class ParametersHolder {
    private final List<Object> _values;

    static {
        new Companion(null);
    }

    public ParametersHolder() {
        this(null, 1, null);
    }

    public ParametersHolder(List<Object> _values) {
        Intrinsics.checkNotNullParameter(_values, "_values");
        this._values = _values;
    }

    public /* synthetic */ ParametersHolder(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ArrayList() : list);
    }

    public final List<Object> getValues() {
        return this._values;
    }

    public <T> T elementAt(int i, KClass<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (this._values.size() > i) {
            return (T) this._values.get(i);
        }
        throw new NoParameterFoundException("Can't get injected parameter #" + i + " from " + this + " for type '" + KClassExtKt.getFullName(clazz) + '\'');
    }

    public <T> T getOrNull(KClass<?> clazz) {
        T t;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Iterator<T> it = this._values.iterator();
        do {
            t = null;
            if (!it.hasNext()) {
                break;
            }
            T next = it.next();
            if (clazz.isInstance(next) && next != null) {
                t = next;
                continue;
            }
        } while (t == null);
        return t;
    }

    /* compiled from: ParametersHolder.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public String toString() {
        List list;
        StringBuilder sb = new StringBuilder();
        sb.append("DefinitionParameters");
        list = CollectionsKt___CollectionsKt.toList(this._values);
        sb.append(list);
        return sb.toString();
    }
}
