package io.reactivex.internal.fuseable;
/* loaded from: classes4.dex */
public interface SimpleQueue<T> {
    void clear();

    boolean isEmpty();

    boolean offer(T t);

    T poll() throws Exception;
}
