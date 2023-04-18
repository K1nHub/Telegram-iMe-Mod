package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2774N3 extends AbstractC2726F3 {

    /* renamed from: d */
    private ArrayList f805d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2774N3(InterfaceC2915m3 interfaceC2915m3, Comparator comparator) {
        super(interfaceC2915m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f805d.add(obj);
    }

    @Override // p034j$.util.stream.AbstractC2891i3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        AbstractC2615a.m585v(this.f805d, this.f737b);
        this.f966a.mo292n(this.f805d.size());
        if (this.f738c) {
            Iterator it = this.f805d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f966a.mo291o()) {
                    break;
                }
                this.f966a.accept((InterfaceC2915m3) next);
            }
        } else {
            ArrayList arrayList = this.f805d;
            InterfaceC2915m3 interfaceC2915m3 = this.f966a;
            Objects.requireNonNull(interfaceC2915m3);
            Collection$EL.m630a(arrayList, new C2845b(interfaceC2915m3));
        }
        this.f966a.mo316m();
        this.f805d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f805d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
