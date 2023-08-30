package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3179g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3179g onClose(Runnable runnable);

    InterfaceC3179g parallel();

    InterfaceC3179g sequential();

    InterfaceC2992s spliterator();

    InterfaceC3179g unordered();
}
