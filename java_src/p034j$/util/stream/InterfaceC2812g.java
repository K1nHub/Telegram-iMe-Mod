package p034j$.util.stream;

import java.util.Iterator;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC2812g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC2812g onClose(Runnable runnable);

    InterfaceC2812g parallel();

    InterfaceC2812g sequential();

    InterfaceC2625s spliterator();

    InterfaceC2812g unordered();
}
