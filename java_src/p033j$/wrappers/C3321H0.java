package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3179g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3321H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3179g f1239a;

    private /* synthetic */ C3321H0(InterfaceC3179g interfaceC3179g) {
        this.f1239a = interfaceC3179g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m234n0(InterfaceC3179g interfaceC3179g) {
        if (interfaceC3179g == null) {
            return null;
        }
        return interfaceC3179g instanceof C3319G0 ? ((C3319G0) interfaceC3179g).f1237a : new C3321H0(interfaceC3179g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1239a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1239a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1239a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m234n0(this.f1239a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m234n0(this.f1239a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m234n0(this.f1239a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3360h.m153a(this.f1239a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m234n0(this.f1239a.unordered());
    }
}
