package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3040g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3040g onClose(Runnable runnable);

    InterfaceC3040g parallel();

    InterfaceC3040g sequential();

    InterfaceC2853s spliterator();

    InterfaceC3040g unordered();
}
