package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Collection;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2932N3 extends AbstractC2884F3 {

    /* renamed from: d */
    private ArrayList f943d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2932N3(InterfaceC3073m3 interfaceC3073m3, Comparator comparator) {
        super(interfaceC3073m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f943d.add(obj);
    }

    @Override // p033j$.util.stream.AbstractC3049i3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        AbstractC2840k.m588r(this.f943d, this.f875b);
        this.f1104a.mo361m(this.f943d.size());
        if (this.f876c) {
            Iterator it = this.f943d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f1104a.mo360o()) {
                    break;
                }
                this.f1104a.accept((InterfaceC3073m3) next);
            }
        } else {
            ArrayList arrayList = this.f943d;
            InterfaceC3073m3 interfaceC3073m3 = this.f1104a;
            Objects.requireNonNull(interfaceC3073m3);
            Collection.EL.m696a(arrayList, new C3003b(interfaceC3073m3));
        }
        this.f1104a.mo385l();
        this.f943d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f943d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
