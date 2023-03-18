package p034j$.util.stream;

import java.util.Collection;
import p034j$.util.AbstractC2538a;
import p034j$.util.Collection$EL;
import p034j$.util.InterfaceC2539b;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2641E1 implements InterfaceC2617A1 {

    /* renamed from: a */
    private final Collection f722a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2641E1(Collection collection) {
        this.f722a = collection;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2617A1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public long count() {
        return this.f722a.size();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public void forEach(Consumer consumer) {
        Collection$EL.m650a(this.f722a, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        for (Object obj : this.f722a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        Collection collection = this.f722a;
        return collection.toArray((Object[]) interfaceC2585m.apply(collection.size()));
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2617A1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m358q(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        Collection collection = this.f722a;
        return (collection instanceof InterfaceC2539b ? ((InterfaceC2539b) collection).stream() : AbstractC2538a.m618i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f722a.size()), this.f722a);
    }
}
