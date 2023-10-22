package io.grpc;
/* loaded from: classes4.dex */
public final class Attributes$Key<T> {
    private final String debugString;

    private Attributes$Key(String str) {
        this.debugString = str;
    }

    public String toString() {
        return this.debugString;
    }

    public static <T> Attributes$Key<T> create(String str) {
        return new Attributes$Key<>(str);
    }
}
