package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2625s;
import p034j$.util.stream.InterfaceC2812g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2952G0 implements InterfaceC2812g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1139a;

    private /* synthetic */ C2952G0(BaseStream baseStream) {
        this.f1139a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2812g m232n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C2954H0 ? ((C2954H0) baseStream).f1141a : new C2952G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1139a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ boolean isParallel() {
        return this.f1139a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ Iterator iterator() {
        return this.f1139a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g onClose(Runnable runnable) {
        return m232n0(this.f1139a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g parallel() {
        return m232n0(this.f1139a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2812g sequential() {
        return m232n0(this.f1139a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2625s spliterator() {
        return C2991g.m151a(this.f1139a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public /* synthetic */ InterfaceC2812g unordered() {
        return m232n0(this.f1139a.unordered());
    }
}
