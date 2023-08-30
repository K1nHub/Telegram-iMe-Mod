package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.InterfaceC2992s;
import p033j$.util.stream.InterfaceC3179g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3319G0 implements InterfaceC3179g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1237a;

    private /* synthetic */ C3319G0(BaseStream baseStream) {
        this.f1237a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3179g m236n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3321H0 ? ((C3321H0) baseStream).f1239a : new C3319G0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1237a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ boolean isParallel() {
        return this.f1237a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ Iterator iterator() {
        return this.f1237a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g onClose(Runnable runnable) {
        return m236n0(this.f1237a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g parallel() {
        return m236n0(this.f1237a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3179g sequential() {
        return m236n0(this.f1237a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC2992s spliterator() {
        return C3358g.m155a(this.f1237a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public /* synthetic */ InterfaceC3179g unordered() {
        return m236n0(this.f1237a.unordered());
    }
}
