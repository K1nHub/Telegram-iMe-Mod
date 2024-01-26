package p033j$.wrappers;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;
import p033j$.util.stream.InterfaceC3031g;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3167E0 implements BaseStream {

    /* renamed from: a */
    final /* synthetic */ InterfaceC3031g f1271a;

    private /* synthetic */ C3167E0(InterfaceC3031g interfaceC3031g) {
        this.f1271a = interfaceC3031g;
    }

    /* renamed from: m0 */
    public static /* synthetic */ BaseStream m289m0(InterfaceC3031g interfaceC3031g) {
        if (interfaceC3031g == null) {
            return null;
        }
        return interfaceC3031g instanceof C3165D0 ? ((C3165D0) interfaceC3031g).f1269a : new C3167E0(interfaceC3031g);
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
        return m289m0(this.f1271a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream parallel() {
        return m289m0(this.f1271a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream sequential() {
        return m289m0(this.f1271a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ Spliterator spliterator() {
        return C3209h.m205a(this.f1271a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public /* synthetic */ BaseStream unordered() {
        return m289m0(this.f1271a.unordered());
    }
}
