package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f650b = new Optional();

    /* renamed from: a */
    private final Object f651a;

    private Optional() {
        this.f651a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f651a = obj;
    }

    public static <T> Optional<T> empty() {
        return f650b;
    }

    /* renamed from: of */
    public static <T> Optional<T> m611of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m611of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return AbstractC2780a.m590u(this.f651a, ((Optional) obj).f651a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f651a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f651a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f651a != null;
    }

    public String toString() {
        Object obj = this.f651a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
