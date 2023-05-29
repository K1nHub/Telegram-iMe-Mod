package p034j$.util.stream;

import java.util.Collection;
import p034j$.util.AbstractC2659a;
import p034j$.util.Collection$EL;
import p034j$.util.InterfaceC2660b;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2762E1 implements InterfaceC2738A1 {

    /* renamed from: a */
    private final Collection f726a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2762E1(Collection collection) {
        this.f726a = collection;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC2738A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public long count() {
        return this.f726a.size();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public void forEach(Consumer consumer) {
        Collection$EL.m635a(this.f726a, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        for (Object obj : this.f726a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        Collection collection = this.f726a;
        return collection.toArray((Object[]) interfaceC2706m.apply(collection.size()));
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2738A1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m343q(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        Collection collection = this.f726a;
        return (collection instanceof InterfaceC2660b ? ((InterfaceC2660b) collection).stream() : AbstractC2659a.m602i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f726a.size()), this.f726a);
    }
}
