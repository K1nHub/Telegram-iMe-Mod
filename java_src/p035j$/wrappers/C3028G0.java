package p035j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p035j$.util.InterfaceC2701s;
import p035j$.util.stream.InterfaceC2888g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3028G0 implements InterfaceC2888g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1144a;

    private /* synthetic */ C3028G0(BaseStream baseStream) {
        this.f1144a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2888g m227n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3030H0 ? ((C3030H0) baseStream).f1146a : new C3028G0(baseStream);
    }

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1144a.close();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ boolean isParallel() {
        return this.f1144a.isParallel();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ Iterator iterator() {
        return this.f1144a.iterator();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g onClose(Runnable runnable) {
        return m227n0(this.f1144a.onClose(runnable));
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g parallel() {
        return m227n0(this.f1144a.parallel());
    }

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2888g sequential() {
        return m227n0(this.f1144a.sequential());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2701s spliterator() {
        return C3067g.m146a(this.f1144a.spliterator());
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public /* synthetic */ InterfaceC2888g unordered() {
        return m227n0(this.f1144a.unordered());
    }
}
