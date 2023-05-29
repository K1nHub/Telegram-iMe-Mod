package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2919g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3061H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2919g f1144a;

    private /* synthetic */ C3061H0(InterfaceC2919g interfaceC2919g) {
        this.f1144a = interfaceC2919g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m216n0(InterfaceC2919g interfaceC2919g) {
        if (interfaceC2919g == null) {
            return null;
        }
        return interfaceC2919g instanceof C3059G0 ? ((C3059G0) interfaceC2919g).f1142a : new C3061H0(interfaceC2919g);
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
        return C3100h.m135a(this.f1144a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m216n0(this.f1144a.unordered());
    }
}
