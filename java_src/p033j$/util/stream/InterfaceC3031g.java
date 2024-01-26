package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3031g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3031g onClose(Runnable runnable);

    InterfaceC3031g parallel();

    InterfaceC3031g sequential();

    Spliterator spliterator();

    InterfaceC3031g unordered();
}
