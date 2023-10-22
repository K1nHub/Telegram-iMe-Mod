package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.Spliterator;
import p033j$.util.stream.InterfaceC3032g;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3166D0 implements InterfaceC3032g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1269a;

    private /* synthetic */ C3166D0(BaseStream baseStream) {
        this.f1269a = baseStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3032g m288m0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3168E0 ? ((C3168E0) baseStream).f1271a : new C3166D0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1269a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ boolean isParallel() {
        return this.f1269a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Iterator iterator() {
        return this.f1269a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g onClose(Runnable runnable) {
        return m288m0(this.f1269a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g parallel() {
        return m288m0(this.f1269a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3032g sequential() {
        return m288m0(this.f1269a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ Spliterator spliterator() {
        return C3208g.m204a(this.f1269a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public /* synthetic */ InterfaceC3032g unordered() {
        return m288m0(this.f1269a.unordered());
    }
}
