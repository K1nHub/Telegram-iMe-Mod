package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2674g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2674g onClose(Runnable runnable);

    InterfaceC2674g parallel();

    InterfaceC2674g sequential();

    InterfaceC2487s spliterator();

    InterfaceC2674g unordered();
}
