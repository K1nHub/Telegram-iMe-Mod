package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.InterfaceC2908s;
import p033j$.util.stream.InterfaceC3095g;
/* renamed from: j$.wrappers.G0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3235G0 implements InterfaceC3095g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1228a;

    private /* synthetic */ C3235G0(BaseStream baseStream) {
        this.f1228a = baseStream;
    }

    /* renamed from: n0 */
    public static /* synthetic */ InterfaceC3095g m236n0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3237H0 ? ((C3237H0) baseStream).f1230a : new C3235G0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1228a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ boolean isParallel() {
        return this.f1228a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ Iterator iterator() {
        return this.f1228a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g onClose(Runnable runnable) {
        return m236n0(this.f1228a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g parallel() {
        return m236n0(this.f1228a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3095g sequential() {
        return m236n0(this.f1228a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC2908s spliterator() {
        return C3274g.m155a(this.f1228a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public /* synthetic */ InterfaceC3095g unordered() {
        return m236n0(this.f1228a.unordered());
    }
}
