package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.Spliterator;
import p033j$.util.stream.InterfaceC3031g;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3165D0 implements InterfaceC3031g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1269a;

    private /* synthetic */ C3165D0(BaseStream baseStream) {
        this.f1269a = baseStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3031g m292m0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3167E0 ? ((C3167E0) baseStream).f1271a : new C3165D0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1269a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ boolean isParallel() {
        return this.f1269a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Iterator iterator() {
        return this.f1269a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g onClose(Runnable runnable) {
        return m292m0(this.f1269a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g parallel() {
        return m292m0(this.f1269a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3031g sequential() {
        return m292m0(this.f1269a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ Spliterator spliterator() {
        return C3207g.m208a(this.f1269a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public /* synthetic */ InterfaceC3031g unordered() {
        return m292m0(this.f1269a.unordered());
    }
}
