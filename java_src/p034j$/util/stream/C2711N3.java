package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2711N3 extends AbstractC2663F3 {

    /* renamed from: d */
    private ArrayList f805d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2711N3(InterfaceC2852m3 interfaceC2852m3, Comparator comparator) {
        super(interfaceC2852m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f805d.add(obj);
    }

    @Override // p034j$.util.stream.AbstractC2828i3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        AbstractC2552a.m604v(this.f805d, this.f737b);
        this.f966a.mo311n(this.f805d.size());
        if (this.f738c) {
            Iterator it = this.f805d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f966a.mo310o()) {
                    break;
                }
                this.f966a.accept((InterfaceC2852m3) next);
            }
        } else {
            ArrayList arrayList = this.f805d;
            InterfaceC2852m3 interfaceC2852m3 = this.f966a;
            Objects.requireNonNull(interfaceC2852m3);
            Collection$EL.m649a(arrayList, new C2782b(interfaceC2852m3));
        }
        this.f966a.mo335m();
        this.f805d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f805d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
