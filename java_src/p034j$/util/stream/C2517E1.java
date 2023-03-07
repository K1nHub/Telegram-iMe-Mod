package p034j$.util.stream;

import java.util.Collection;
import p034j$.util.AbstractC2414a;
import p034j$.util.Collection$EL;
import p034j$.util.InterfaceC2415b;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2517E1 implements InterfaceC2493A1 {

    /* renamed from: a */
    private final Collection f717a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2517E1(Collection collection) {
        this.f717a = collection;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2493A1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f717a.size();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public void forEach(Consumer consumer) {
        Collection$EL.m650a(this.f717a, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        for (Object obj : this.f717a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        Collection collection = this.f717a;
        return collection.toArray((Object[]) interfaceC2461m.apply(collection.size()));
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2493A1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m358q(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        Collection collection = this.f717a;
        return (collection instanceof InterfaceC2415b ? ((InterfaceC2415b) collection).stream() : AbstractC2414a.m618i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f717a.size()), this.f717a);
    }
}
