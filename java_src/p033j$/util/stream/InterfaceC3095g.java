package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3095g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3095g onClose(Runnable runnable);

    InterfaceC3095g parallel();

    InterfaceC3095g sequential();

    InterfaceC2908s spliterator();

    InterfaceC3095g unordered();
}
