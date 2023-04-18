package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2688s;
import p034j$.util.stream.InterfaceC2875g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3015G0 implements InterfaceC2875g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1139a;

    private /* synthetic */ C3015G0(BaseStream baseStream) {
        this.f1139a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2875g m213n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3017H0 ? ((C3017H0) baseStream).f1141a : new C3015G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1139a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ boolean isParallel() {
        return this.f1139a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ Iterator iterator() {
        return this.f1139a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g onClose(Runnable runnable) {
        return m213n0(this.f1139a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g parallel() {
        return m213n0(this.f1139a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2875g sequential() {
        return m213n0(this.f1139a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2688s spliterator() {
        return C3054g.m132a(this.f1139a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public /* synthetic */ InterfaceC2875g unordered() {
        return m213n0(this.f1139a.unordered());
    }
}
