package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f559b = new Optional();

    /* renamed from: a */
    private final Object f560a;

    private Optional() {
        this.f560a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f560a = obj;
    }

    public static <T> Optional<T> empty() {
        return f559b;
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
            return AbstractC2414a.m606u(this.f560a, ((Optional) obj).f560a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f560a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f560a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f560a != null;
    }

    public String toString() {
        Object obj = this.f560a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
