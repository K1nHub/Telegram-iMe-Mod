package p034j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p034j$.util.stream.InterfaceC2812g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2954H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2812g f1141a;

    private /* synthetic */ C2954H0(InterfaceC2812g interfaceC2812g) {
        this.f1141a = interfaceC2812g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m230n0(InterfaceC2812g interfaceC2812g) {
        if (interfaceC2812g == null) {
            return null;
        }
        return interfaceC2812g instanceof C2952G0 ? ((C2952G0) interfaceC2812g).f1139a : new C2954H0(interfaceC2812g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1141a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1141a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1141a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m230n0(this.f1141a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m230n0(this.f1141a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m230n0(this.f1141a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C2993h.m149a(this.f1141a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m230n0(this.f1141a.unordered());
    }
}
