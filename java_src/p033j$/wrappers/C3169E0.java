package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3033g;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3169E0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3033g f1271a;

    private /* synthetic */ C3169E0(InterfaceC3033g interfaceC3033g) {
        this.f1271a = interfaceC3033g;
    }

    /* renamed from: m0 */
    public static /* synthetic */ BaseStream m286m0(InterfaceC3033g interfaceC3033g) {
        if (interfaceC3033g == null) {
            return null;
        }
        return interfaceC3033g instanceof C3167D0 ? ((C3167D0) interfaceC3033g).f1269a : new C3169E0(interfaceC3033g);
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
        return m286m0(this.f1271a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m286m0(this.f1271a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m286m0(this.f1271a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3211h.m202a(this.f1271a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m286m0(this.f1271a.unordered());
    }
}
