package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f568b = new Optional();

    /* renamed from: a */
    private final Object f569a;

    private Optional() {
        this.f569a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f569a = obj;
    }

    public static <T> Optional<T> empty() {
        return f568b;
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
            return AbstractC2659a.m590u(this.f569a, ((Optional) obj).f569a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f569a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f569a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f569a != null;
    }

    public String toString() {
        Object obj = this.f569a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
