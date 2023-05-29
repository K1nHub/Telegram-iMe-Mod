package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2919g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2919g onClose(Runnable runnable);

    InterfaceC2919g parallel();

    InterfaceC2919g sequential();

    InterfaceC2732s spliterator();

    InterfaceC2919g unordered();
}
