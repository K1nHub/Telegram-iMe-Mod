package p033j$.wrappers;

import java.util.Iterator;
import java.util.stream.BaseStream;
import p033j$.util.Spliterator;
import p033j$.util.stream.InterfaceC3036g;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3170D0 implements InterfaceC3036g {

    /* renamed from: a */
    final /* synthetic */ BaseStream f1269a;

    private /* synthetic */ C3170D0(BaseStream baseStream) {
        this.f1269a = baseStream;
    }

    /* renamed from: m0 */
    public static /* synthetic */ InterfaceC3036g m289m0(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C3172E0 ? ((C3172E0) baseStream).f1271a : new C3170D0(baseStream);
    }

    @Override // p033j$.util.stream.InterfaceC3036g, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1269a.close();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ boolean isParallel() {
        return this.f1269a.isParallel();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Iterator iterator() {
        return this.f1269a.iterator();
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g onClose(Runnable runnable) {
        return m289m0(this.f1269a.onClose(runnable));
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g parallel() {
        return m289m0(this.f1269a.parallel());
    }

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* synthetic */ InterfaceC3036g sequential() {
        return m289m0(this.f1269a.sequential());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ Spliterator spliterator() {
        return C3212g.m205a(this.f1269a.spliterator());
    }

    @Override // p033j$.util.stream.InterfaceC3036g
    public /* synthetic */ InterfaceC3036g unordered() {
        return m289m0(this.f1269a.unordered());
    }
}
