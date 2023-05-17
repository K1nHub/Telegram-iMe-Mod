package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2914g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2914g onClose(Runnable runnable);

    InterfaceC2914g parallel();

    InterfaceC2914g sequential();

    InterfaceC2727s spliterator();

    InterfaceC2914g unordered();
}
