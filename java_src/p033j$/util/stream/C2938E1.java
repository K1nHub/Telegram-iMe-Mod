package p033j$.util.stream;

import java.util.Collection;
import p033j$.util.AbstractC2835a;
import p033j$.util.Collection$EL;
import p033j$.util.InterfaceC2836b;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2938E1 implements InterfaceC2914A1 {

    /* renamed from: a */
    private final Collection f812a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938E1(Collection collection) {
        this.f812a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC2914A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f812a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public void forEach(Consumer consumer) {
        Collection$EL.m653a(this.f812a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        for (Object obj : this.f812a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        Collection collection = this.f812a;
        return collection.toArray((Object[]) interfaceC2882m.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2914A1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m361q(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        Collection collection = this.f812a;
        return (collection instanceof InterfaceC2836b ? ((InterfaceC2836b) collection).stream() : AbstractC2835a.m620i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f812a.size()), this.f812a);
    }
}
