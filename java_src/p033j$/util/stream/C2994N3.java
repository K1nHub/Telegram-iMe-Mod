package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2994N3 extends AbstractC2946F3 {

    /* renamed from: d */
    private ArrayList f894d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2994N3(InterfaceC3135m3 interfaceC3135m3, Comparator comparator) {
        super(interfaceC3135m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f894d.add(obj);
    }

    @Override // p033j$.util.stream.AbstractC3111i3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        AbstractC2835a.m607v(this.f894d, this.f826b);
        this.f1055a.mo315n(this.f894d.size());
        if (this.f827c) {
            Iterator it = this.f894d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f1055a.mo314o()) {
                    break;
                }
                this.f1055a.accept((InterfaceC3135m3) next);
            }
        } else {
            ArrayList arrayList = this.f894d;
            InterfaceC3135m3 interfaceC3135m3 = this.f1055a;
            Objects.requireNonNull(interfaceC3135m3);
            Collection$EL.m653a(arrayList, new C3065b(interfaceC3135m3));
        }
        this.f1055a.mo339m();
        this.f894d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f894d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
