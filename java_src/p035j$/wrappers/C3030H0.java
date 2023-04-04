package p035j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p035j$.util.stream.InterfaceC2888g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3030H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2888g f1146a;

    private /* synthetic */ C3030H0(InterfaceC2888g interfaceC2888g) {
        this.f1146a = interfaceC2888g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m225n0(InterfaceC2888g interfaceC2888g) {
        if (interfaceC2888g == null) {
            return null;
        }
        return interfaceC2888g instanceof C3028G0 ? ((C3028G0) interfaceC2888g).f1144a : new C3030H0(interfaceC2888g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1146a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1146a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1146a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m225n0(this.f1146a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m225n0(this.f1146a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m225n0(this.f1146a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3069h.m144a(this.f1146a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m225n0(this.f1146a.unordered());
    }
}
