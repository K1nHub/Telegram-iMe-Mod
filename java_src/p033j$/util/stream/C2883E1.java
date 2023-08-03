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
    private final Collection f811a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2883E1(Collection collection) {
        this.f811a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f811a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public void forEach(Consumer consumer) {
        Collection$EL.m653a(this.f811a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        for (Object obj : this.f811a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        Collection collection = this.f811a;
        return collection.toArray((Object[]) interfaceC2827m.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2859A1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m361q(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        Collection collection = this.f811a;
        return (collection instanceof InterfaceC2781b ? ((InterfaceC2781b) collection).stream() : AbstractC2780a.m620i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f811a.size()), this.f811a);
    }
}
