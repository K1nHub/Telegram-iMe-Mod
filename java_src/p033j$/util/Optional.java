package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f663b = new Optional();

    /* renamed from: a */
    private final Object f664a;

    private Optional() {
        this.f664a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f664a = obj;
    }

    public static <T> Optional<T> empty() {
        return f663b;
    }

    /* renamed from: of */
    public static <T> Optional<T> m629of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m629of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return AbstractC2919a.m608u(this.f664a, ((Optional) obj).f664a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f664a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f664a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f664a != null;
    }

    public String toString() {
        Object obj = this.f664a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
