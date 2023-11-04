package p033j$.util.stream;

import java.util.Iterator;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.g */
/* loaded from: classes2.dex */
public interface InterfaceC3036g extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3036g onClose(Runnable runnable);

    InterfaceC3036g parallel();

    InterfaceC3036g sequential();

    Spliterator spliterator();

    InterfaceC3036g unordered();
}
