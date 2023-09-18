package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3095g;
/* renamed from: j$.wrappers.H0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3237H0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3095g f1230a;

    private /* synthetic */ C3237H0(InterfaceC3095g interfaceC3095g) {
        this.f1230a = interfaceC3095g;
    }

    /* renamed from: n0 */
    public static /* synthetic */ BaseStream m234n0(InterfaceC3095g interfaceC3095g) {
        if (interfaceC3095g == null) {
            return null;
        }
        return interfaceC3095g instanceof C3235G0 ? ((C3235G0) interfaceC3095g).f1228a : new C3237H0(interfaceC3095g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public /* synthetic */ void close() {
        this.f1230a.close();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ boolean isParallel() {
        return this.f1230a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Iterator iterator() {
        return this.f1230a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream onClose(Runnable runnable) {
        return m234n0(this.f1230a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m234n0(this.f1230a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m234n0(this.f1230a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3276h.m153a(this.f1230a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m234n0(this.f1230a.unordered());
    }
}
