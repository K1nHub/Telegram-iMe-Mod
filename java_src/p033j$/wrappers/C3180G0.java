package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.InterfaceC2853s;
import p033j$.util.stream.InterfaceC3040g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3180G0 implements InterfaceC3040g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1227a;

    private /* synthetic */ C3180G0(BaseStream baseStream) {
        this.f1227a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3040g m236n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3182H0 ? ((C3182H0) baseStream).f1229a : new C3180G0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1227a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1227a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1227a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return m236n0(this.f1227a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return m236n0(this.f1227a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return m236n0(this.f1227a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m155a(this.f1227a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return m236n0(this.f1227a.unordered());
    }
}
