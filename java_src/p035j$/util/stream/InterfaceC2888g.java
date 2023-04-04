package p035j$.util.stream;

import java.util.Iterator;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2888g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2888g onClose(Runnable runnable);

    InterfaceC2888g parallel();

    InterfaceC2888g sequential();

    InterfaceC2701s spliterator();

    InterfaceC2888g unordered();
}
