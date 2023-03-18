package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2798g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2798g onClose(Runnable runnable);

    InterfaceC2798g parallel();

    InterfaceC2798g sequential();

    InterfaceC2611s spliterator();

    InterfaceC2798g unordered();
}
