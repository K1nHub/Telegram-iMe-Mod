package p033j$.util.stream;

import java.util.Collection;
import p033j$.util.AbstractC2919a;
import p033j$.util.Collection$EL;
import p033j$.util.InterfaceC2920b;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.E1 */
/* loaded from: classes2.dex */
final class C3022E1 implements InterfaceC2998A1 {

    /* renamed from: a */
    private final Collection f821a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3022E1(Collection collection) {
        this.f821a = collection;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC2998A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f821a.size();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public void forEach(Consumer consumer) {
        Collection$EL.m653a(this.f821a, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        for (Object obj : this.f821a) {
            objArr[i] = obj;
            i++;
        }
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        Collection collection = this.f821a;
        return collection.toArray((Object[]) interfaceC2966m.apply(collection.size()));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2998A1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m361q(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        Collection collection = this.f821a;
        return (collection instanceof InterfaceC2920b ? ((InterfaceC2920b) collection).stream() : AbstractC2919a.m620i(collection)).spliterator();
    }

    public String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f821a.size()), this.f821a);
    }
}
