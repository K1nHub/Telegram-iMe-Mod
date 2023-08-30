package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C3078N3 extends AbstractC3030F3 {

    /* renamed from: d */
    private ArrayList f903d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3078N3(InterfaceC3219m3 interfaceC3219m3, Comparator comparator) {
        super(interfaceC3219m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f903d.add(obj);
    }

    @Override // p033j$.util.stream.AbstractC3195i3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        AbstractC2919a.m607v(this.f903d, this.f835b);
        this.f1064a.mo315n(this.f903d.size());
        if (this.f836c) {
            Iterator it = this.f903d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f1064a.mo314o()) {
                    break;
                }
                this.f1064a.accept((InterfaceC3219m3) next);
            }
        } else {
            ArrayList arrayList = this.f903d;
            InterfaceC3219m3 interfaceC3219m3 = this.f1064a;
            Objects.requireNonNull(interfaceC3219m3);
            Collection$EL.m653a(arrayList, new C3149b(interfaceC3219m3));
        }
        this.f1064a.mo339m();
        this.f903d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f903d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
