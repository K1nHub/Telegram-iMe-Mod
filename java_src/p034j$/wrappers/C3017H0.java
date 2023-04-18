package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2875g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3017H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2875g f1141a;

    private /* synthetic */ C3017H0(InterfaceC2875g interfaceC2875g) {
        this.f1141a = interfaceC2875g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m211n0(InterfaceC2875g interfaceC2875g) {
        if (interfaceC2875g == null) {
            return null;
        }
        return interfaceC2875g instanceof C3015G0 ? ((C3015G0) interfaceC2875g).f1139a : new C3017H0(interfaceC2875g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1141a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1141a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1141a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m211n0(this.f1141a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m211n0(this.f1141a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m211n0(this.f1141a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3056h.m130a(this.f1141a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m211n0(this.f1141a.unordered());
    }
}
