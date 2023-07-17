package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.InterfaceC2853s;
import p033j$.util.stream.InterfaceC3040g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3180G0 implements InterfaceC3040g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1224a;

    private /* synthetic */ C3180G0(BaseStream baseStream) {
        this.f1224a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3040g m218n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3182H0 ? ((C3182H0) baseStream).f1226a : new C3180G0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1224a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ boolean isParallel() {
        return this.f1224a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ Iterator iterator() {
        return this.f1224a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g onClose(Runnable runnable) {
        return m218n0(this.f1224a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g parallel() {
        return m218n0(this.f1224a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3040g sequential() {
        return m218n0(this.f1224a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC2853s spliterator() {
        return C3219g.m137a(this.f1224a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public /* synthetic */ InterfaceC3040g unordered() {
        return m218n0(this.f1224a.unordered());
    }
}
