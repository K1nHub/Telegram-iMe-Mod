package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f564b = new Optional();

    /* renamed from: a */
    private final Object f565a;

    private Optional() {
        this.f565a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f565a = obj;
    }

    public static <T> Optional<T> empty() {
        return f564b;
    }

    /* renamed from: of */
    public static <T> Optional<T> m627of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m627of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return AbstractC2538a.m606u(this.f565a, ((Optional) obj).f565a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f565a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f565a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f565a != null;
    }

    public String toString() {
        Object obj = this.f565a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
