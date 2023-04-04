package p035j$.util.stream;

import java.util.Collection;
import p035j$.util.AbstractC2628a;
import p035j$.util.Collection$EL;
import p035j$.util.InterfaceC2629b;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2731E1 implements InterfaceC2707A1 {

    /* renamed from: a */
    private final Collection f728a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2731E1(Collection collection) {
        this.f728a = collection;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC2707A1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f728a.size();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public void forEach(Consumer consumer) {
        Collection$EL.m644a(this.f728a, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: i */
    public void mo331i(Object[] objArr, int i) {
        for (Object obj : this.f728a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        Collection collection = this.f728a;
        return collection.toArray((Object[]) interfaceC2675m.apply(collection.size()));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2707A1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m352q(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        Collection collection = this.f728a;
        return (collection instanceof InterfaceC2629b ? ((InterfaceC2629b) collection).stream() : AbstractC2628a.m612i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f728a.size()), this.f728a);
    }
}
