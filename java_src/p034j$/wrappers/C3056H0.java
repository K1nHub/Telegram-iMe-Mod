package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2914g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3056H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2914g f1144a;

    private /* synthetic */ C3056H0(InterfaceC2914g interfaceC2914g) {
        this.f1144a = interfaceC2914g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m216n0(InterfaceC2914g interfaceC2914g) {
        if (interfaceC2914g == null) {
            return null;
        }
        return interfaceC2914g instanceof C3054G0 ? ((C3054G0) interfaceC2914g).f1142a : new C3056H0(interfaceC2914g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1144a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1144a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1144a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m216n0(this.f1144a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m216n0(this.f1144a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m216n0(this.f1144a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3095h.m135a(this.f1144a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m216n0(this.f1144a.unordered());
    }
}
