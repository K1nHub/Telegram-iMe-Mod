package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2813N3 extends AbstractC2765F3 {

    /* renamed from: d */
    private ArrayList f808d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2813N3(InterfaceC2954m3 interfaceC2954m3, Comparator comparator) {
        super(interfaceC2954m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f808d.add(obj);
    }

    @Override // p034j$.util.stream.AbstractC2930i3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        AbstractC2654a.m589v(this.f808d, this.f740b);
        this.f969a.mo297n(this.f808d.size());
        if (this.f741c) {
            Iterator it = this.f808d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f969a.mo296o()) {
                    break;
                }
                this.f969a.accept((InterfaceC2954m3) next);
            }
        } else {
            ArrayList arrayList = this.f808d;
            InterfaceC2954m3 interfaceC2954m3 = this.f969a;
            Objects.requireNonNull(interfaceC2954m3);
            Collection$EL.m635a(arrayList, new C2884b(interfaceC2954m3));
        }
        this.f969a.mo321m();
        this.f808d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f808d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
