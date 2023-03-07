package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2487s;
import p034j$.util.stream.InterfaceC2674g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2814G0 implements InterfaceC2674g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1133a;

    private /* synthetic */ C2814G0(BaseStream baseStream) {
        this.f1133a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2674g m233n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2816H0 ? ((C2816H0) baseStream).f1135a : new C2814G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1133a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ boolean isParallel() {
        return this.f1133a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ Iterator iterator() {
        return this.f1133a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g onClose(Runnable runnable) {
        return m233n0(this.f1133a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g parallel() {
        return m233n0(this.f1133a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2674g sequential() {
        return m233n0(this.f1133a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2487s spliterator() {
        return C2853g.m152a(this.f1133a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public /* synthetic */ InterfaceC2674g unordered() {
        return m233n0(this.f1133a.unordered());
    }
}
