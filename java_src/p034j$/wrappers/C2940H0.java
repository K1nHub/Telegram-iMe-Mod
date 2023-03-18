package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2798g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2940H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2798g f1140a;

    private /* synthetic */ C2940H0(InterfaceC2798g interfaceC2798g) {
        this.f1140a = interfaceC2798g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m231n0(InterfaceC2798g interfaceC2798g) {
        if (interfaceC2798g == null) {
            return null;
        }
        return interfaceC2798g instanceof C2938G0 ? ((C2938G0) interfaceC2798g).f1138a : new C2940H0(interfaceC2798g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1140a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1140a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1140a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m231n0(this.f1140a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m231n0(this.f1140a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m231n0(this.f1140a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C2979h.m150a(this.f1140a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m231n0(this.f1140a.unordered());
    }
}
