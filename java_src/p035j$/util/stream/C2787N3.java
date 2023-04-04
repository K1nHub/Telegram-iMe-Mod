package p035j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2787N3 extends AbstractC2739F3 {

    /* renamed from: d */
    private ArrayList f810d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2787N3(InterfaceC2928m3 interfaceC2928m3, Comparator comparator) {
        super(interfaceC2928m3, comparator);
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        this.f810d.add(obj);
    }

    @Override // p035j$.util.stream.AbstractC2904i3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        AbstractC2628a.m599v(this.f810d, this.f742b);
        this.f971a.mo306n(this.f810d.size());
        if (this.f743c) {
            Iterator it = this.f810d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f971a.mo305o()) {
                    break;
                }
                this.f971a.accept((InterfaceC2928m3) next);
            }
        } else {
            ArrayList arrayList = this.f810d;
            InterfaceC2928m3 interfaceC2928m3 = this.f971a;
            Objects.requireNonNull(interfaceC2928m3);
            Collection$EL.m644a(arrayList, new C2858b(interfaceC2928m3));
        }
        this.f971a.mo330m();
        this.f810d = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f810d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
