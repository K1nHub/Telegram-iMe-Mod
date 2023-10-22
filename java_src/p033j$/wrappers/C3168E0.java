package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3032g;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3168E0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3032g f1271a;

    private /* synthetic */ C3168E0(InterfaceC3032g interfaceC3032g) {
        this.f1271a = interfaceC3032g;
    }

    /* renamed from: m0 */
    public static /* synthetic */ BaseStream m285m0(InterfaceC3032g interfaceC3032g) {
        if (interfaceC3032g == null) {
            return null;
        }
        return interfaceC3032g instanceof C3166D0 ? ((C3166D0) interfaceC3032g).f1269a : new C3168E0(interfaceC3032g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1271a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1271a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1271a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m285m0(this.f1271a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m285m0(this.f1271a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m285m0(this.f1271a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3210h.m201a(this.f1271a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m285m0(this.f1271a.unordered());
    }
}
