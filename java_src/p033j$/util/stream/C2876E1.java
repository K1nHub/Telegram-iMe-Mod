package p033j$.util.stream;

import java.util.Collection;
import p033j$.util.Collection;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2876E1 implements InterfaceC2852A1 {

    /* renamed from: a */
    private final Collection f861a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2876E1(Collection collection) {
        this.f861a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public InterfaceC2852A1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public long count() {
        return this.f861a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public void forEach(Consumer consumer) {
        Collection.EL.m696a(this.f861a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: i */
    public void mo386i(Object[] objArr, int i) {
        for (Object obj : this.f861a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: p */
    public Object[] mo383p(IntFunction intFunction) {
        java.util.Collection collection = this.f861a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2852A1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m407q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator spliterator() {
        java.util.Collection collection = this.f861a;
        return (collection instanceof p033j$.util.Collection ? ((p033j$.util.Collection) collection).stream() : AbstractC3083o1.m399y(Collection.EL.m695b(collection), false)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f861a.size()), this.f861a);
    }
}
