package p033j$.util;

import p033j$.lang.InterfaceC2866e;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
import p033j$.util.stream.Stream;
/* renamed from: j$.util.b */
/* loaded from: classes2.dex */
public interface InterfaceC2920b extends InterfaceC2866e {
    @Override // p033j$.lang.InterfaceC2866e
    void forEach(Consumer consumer);

    /* renamed from: k */
    boolean mo574k(Predicate predicate);

    @Override // p033j$.lang.InterfaceC2866e
    InterfaceC2992s spliterator();

    Stream stream();
}
