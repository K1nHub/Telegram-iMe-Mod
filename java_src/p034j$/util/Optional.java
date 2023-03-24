package p034j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f565b = new Optional();

    /* renamed from: a */
    private final Object f566a;

    private Optional() {
        this.f566a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f566a = obj;
    }

    public static <T> Optional<T> empty() {
        return f565b;
    }

    /* renamed from: of */
    public static <T> Optional<T> m626of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : m626of(t);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return AbstractC2552a.m605u(this.f566a, ((Optional) obj).f566a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f566a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f566a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f566a != null;
    }

    public String toString() {
        Object obj = this.f566a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
