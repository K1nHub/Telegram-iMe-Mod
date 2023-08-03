package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
/* renamed from: j$.util.Optional */
/* loaded from: classes2.dex */
public final class Optional<T> {

    /* renamed from: b */
    private static final Optional f653b = new Optional();

    /* renamed from: a */
    private final Object f654a;

    private Optional() {
        this.f654a = null;
    }

    private Optional(Object obj) {
        Objects.requireNonNull(obj);
        this.f654a = obj;
    }

    public static <T> Optional<T> empty() {
        return f653b;
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
            return AbstractC2780a.m608u(this.f654a, ((Optional) obj).f654a);
        }
        return false;
    }

    public T get() {
        T t = (T) this.f654a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public int hashCode() {
        Object obj = this.f654a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean isPresent() {
        return this.f654a != null;
    }

    public String toString() {
        Object obj = this.f654a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
