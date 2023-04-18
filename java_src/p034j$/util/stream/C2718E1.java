package p034j$.util.stream;

import java.util.Collection;
import p034j$.util.AbstractC2615a;
import p034j$.util.Collection$EL;
import p034j$.util.InterfaceC2616b;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2718E1 implements InterfaceC2694A1 {

    /* renamed from: a */
    private final Collection f723a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2718E1(Collection collection) {
        this.f723a = collection;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2694A1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f723a.size();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public void forEach(Consumer consumer) {
        Collection$EL.m630a(this.f723a, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: i */
    public void mo317i(Object[] objArr, int i) {
        for (Object obj : this.f723a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        Collection collection = this.f723a;
        return collection.toArray((Object[]) interfaceC2662m.apply(collection.size()));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2694A1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m338q(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        Collection collection = this.f723a;
        return (collection instanceof InterfaceC2616b ? ((InterfaceC2616b) collection).stream() : AbstractC2615a.m598i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f723a.size()), this.f723a);
    }
}
