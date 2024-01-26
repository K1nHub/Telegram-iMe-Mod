package p033j$.util.stream;

import java.util.Collection;
import p033j$.util.Collection;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C2874E1 implements InterfaceC2850A1 {

    /* renamed from: a */
    private final Collection f861a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2874E1(Collection collection) {
        this.f861a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC2850A1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return this.f861a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public void forEach(Consumer consumer) {
        Collection.EL.m699a(this.f861a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: i */
    public void mo389i(Object[] objArr, int i) {
        for (Object obj : this.f861a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public Object[] mo386p(IntFunction intFunction) {
        java.util.Collection collection = this.f861a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m410q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        java.util.Collection collection = this.f861a;
        return (collection instanceof p033j$.util.Collection ? ((p033j$.util.Collection) collection).stream() : AbstractC3081o1.m402y(Collection.EL.m698b(collection), false)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f861a.size()), this.f861a);
    }
}
