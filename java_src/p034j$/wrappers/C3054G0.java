package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2727s;
import p034j$.util.stream.InterfaceC2914g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3054G0 implements InterfaceC2914g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1142a;

    private /* synthetic */ C3054G0(BaseStream baseStream) {
        this.f1142a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2914g m218n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3056H0 ? ((C3056H0) baseStream).f1144a : new C3054G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1142a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ boolean isParallel() {
        return this.f1142a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ Iterator iterator() {
        return this.f1142a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g onClose(Runnable runnable) {
        return m218n0(this.f1142a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g parallel() {
        return m218n0(this.f1142a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2914g sequential() {
        return m218n0(this.f1142a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2727s spliterator() {
        return C3093g.m137a(this.f1142a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public /* synthetic */ InterfaceC2914g unordered() {
        return m218n0(this.f1142a.unordered());
    }
}
