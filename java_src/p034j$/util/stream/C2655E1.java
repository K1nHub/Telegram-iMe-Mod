package p034j$.util.stream;

import java.util.Collection;
import p034j$.util.AbstractC2552a;
import p034j$.util.Collection$EL;
import p034j$.util.InterfaceC2553b;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2655E1 implements InterfaceC2631A1 {

    /* renamed from: a */
    private final Collection f723a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2655E1(Collection collection) {
        this.f723a = collection;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2631A1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f723a.size();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public void forEach(Consumer consumer) {
        Collection$EL.m649a(this.f723a, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: i */
    public void mo336i(Object[] objArr, int i) {
        for (Object obj : this.f723a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        Collection collection = this.f723a;
        return collection.toArray((Object[]) interfaceC2599m.apply(collection.size()));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2631A1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m357q(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        Collection collection = this.f723a;
        return (collection instanceof InterfaceC2553b ? ((InterfaceC2553b) collection).stream() : AbstractC2552a.m617i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f723a.size()), this.f723a);
    }
}
