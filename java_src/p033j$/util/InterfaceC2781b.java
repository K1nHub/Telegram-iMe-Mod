package p033j$.util;

import p033j$.lang.InterfaceC2727e;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2781b extends InterfaceC2727e {
    @Override // p033j$.lang.InterfaceC2727e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo556k(Predicate predicate);

    @Override // p033j$.lang.InterfaceC2727e
    InterfaceC2853s spliterator();

    Stream stream();
}
