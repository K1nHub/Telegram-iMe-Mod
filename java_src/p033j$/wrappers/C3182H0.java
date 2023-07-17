package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3040g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3182H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3040g f1226a;

    private /* synthetic */ C3182H0(InterfaceC3040g interfaceC3040g) {
        this.f1226a = interfaceC3040g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m216n0(InterfaceC3040g interfaceC3040g) {
        if (interfaceC3040g == null) {
            return null;
        }
        return interfaceC3040g instanceof C3180G0 ? ((C3180G0) interfaceC3040g).f1224a : new C3182H0(interfaceC3040g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1226a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1226a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1226a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m216n0(this.f1226a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m216n0(this.f1226a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m216n0(this.f1226a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3221h.m135a(this.f1226a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m216n0(this.f1226a.unordered());
    }
}
