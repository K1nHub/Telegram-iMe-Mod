package io.reactivex.internal.fuseable;
/* loaded from: classes6.dex */
public interface SimpleQueue<T> {
    void clear();

    boolean isEmpty();

    boolean offer(T t);

    T poll() throws Exception;
}
