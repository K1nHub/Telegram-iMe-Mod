package p035j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f570b = new Optional();

    /* renamed from: a */
    private final Object f571a;

    private Optional() {
        this.f571a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f571a = obj;
    }

    public static <T> Optional<T> empty() {
        return f570b;
    }

    /* renamed from: of */
    public static <T> Optional<T> m621of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m621of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return AbstractC2628a.m600u(this.f571a, ((Optional) obj).f571a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f571a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f571a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f571a != null;
    }

    public String toString() {
        Object obj = this.f571a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
