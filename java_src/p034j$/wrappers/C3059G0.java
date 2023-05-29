package p034j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p034j$.util.InterfaceC2732s;
import p034j$.util.stream.InterfaceC2919g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3059G0 implements InterfaceC2919g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1142a;

    private /* synthetic */ C3059G0(BaseStream baseStream) {
        this.f1142a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC2919g m218n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3061H0 ? ((C3061H0) baseStream).f1144a : new C3059G0(baseStream);
    }

    @Override // p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1142a.close();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ boolean isParallel() {
        return this.f1142a.isParallel();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ Iterator iterator() {
        return this.f1142a.iterator();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g onClose(Runnable runnable) {
        return m218n0(this.f1142a.onClose(runnable));
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g parallel() {
        return m218n0(this.f1142a.parallel());
    }

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* synthetic */ InterfaceC2919g sequential() {
        return m218n0(this.f1142a.sequential());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2732s spliterator() {
        return C3098g.m137a(this.f1142a.spliterator());
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public /* synthetic */ InterfaceC2919g unordered() {
        return m218n0(this.f1142a.unordered());
    }
}
