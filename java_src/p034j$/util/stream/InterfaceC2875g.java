package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2875g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2875g onClose(Runnable runnable);

    InterfaceC2875g parallel();

    InterfaceC2875g sequential();

    InterfaceC2688s spliterator();

    InterfaceC2875g unordered();
}
