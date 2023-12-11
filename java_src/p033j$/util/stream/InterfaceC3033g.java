package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3033g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3033g onClose(Runnable runnable);

    InterfaceC3033g parallel();

    InterfaceC3033g sequential();

    Spliterator spliterator();

    InterfaceC3033g unordered();
}
