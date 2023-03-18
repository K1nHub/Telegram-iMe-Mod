package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2611s;
import p034j$.util.stream.InterfaceC2798g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2938G0 implements InterfaceC2798g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1138a;

    private /* synthetic */ C2938G0(BaseStream baseStream) {
        this.f1138a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2798g m233n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2940H0 ? ((C2940H0) baseStream).f1140a : new C2938G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1138a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ boolean isParallel() {
        return this.f1138a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ Iterator iterator() {
        return this.f1138a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g onClose(Runnable runnable) {
        return m233n0(this.f1138a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g parallel() {
        return m233n0(this.f1138a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2798g sequential() {
        return m233n0(this.f1138a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2611s spliterator() {
        return C2977g.m152a(this.f1138a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public /* synthetic */ InterfaceC2798g unordered() {
        return m233n0(this.f1138a.unordered());
    }
}
