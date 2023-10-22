package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3032g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3032g onClose(Runnable runnable);

    InterfaceC3032g parallel();

    InterfaceC3032g sequential();

    Spliterator spliterator();

    InterfaceC3032g unordered();
}
