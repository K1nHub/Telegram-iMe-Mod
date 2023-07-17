package p033j$.util.stream;

import java.util.Collection;
import p033j$.util.AbstractC2780a;
import p033j$.util.Collection$EL;
import p033j$.util.InterfaceC2781b;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2883E1 implements InterfaceC2859A1 {

    /* renamed from: a */
    private final Collection f808a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2883E1(Collection collection) {
        this.f808a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f808a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public void forEach(Consumer consumer) {
        Collection$EL.m635a(this.f808a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        for (Object obj : this.f808a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2827m interfaceC2827m) {
        Collection collection = this.f808a;
        return collection.toArray((Object[]) interfaceC2827m.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2859A1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m343q(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        Collection collection = this.f808a;
        return (collection instanceof InterfaceC2781b ? ((InterfaceC2781b) collection).stream() : AbstractC2780a.m602i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f808a.size()), this.f808a);
    }
}
