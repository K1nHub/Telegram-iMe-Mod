package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2674g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2816H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2674g f1135a;

    private /* synthetic */ C2816H0(InterfaceC2674g interfaceC2674g) {
        this.f1135a = interfaceC2674g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m231n0(InterfaceC2674g interfaceC2674g) {
        if (interfaceC2674g == null) {
            return null;
        }
        return interfaceC2674g instanceof C2814G0 ? ((C2814G0) interfaceC2674g).f1133a : new C2816H0(interfaceC2674g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1135a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1135a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1135a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m231n0(this.f1135a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m231n0(this.f1135a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m231n0(this.f1135a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C2855h.m150a(this.f1135a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m231n0(this.f1135a.unordered());
    }
}
