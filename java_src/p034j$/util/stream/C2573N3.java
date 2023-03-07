package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2573N3 extends AbstractC2525F3 {

    /* renamed from: d */
    private ArrayList f799d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2573N3(InterfaceC2714m3 interfaceC2714m3, Comparator comparator) {
        super(interfaceC2714m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f799d.add(obj);
    }

    @Override // p034j$.util.stream.AbstractC2690i3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        AbstractC2414a.m605v(this.f799d, this.f731b);
        this.f960a.mo312n(this.f799d.size());
        if (this.f732c) {
            Iterator it = this.f799d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f960a.mo311o()) {
                    break;
                }
                this.f960a.accept((InterfaceC2714m3) next);
            }
        } else {
            ArrayList arrayList = this.f799d;
            InterfaceC2714m3 interfaceC2714m3 = this.f960a;
            Objects.requireNonNull(interfaceC2714m3);
            Collection$EL.m650a(arrayList, new C2644b(interfaceC2714m3));
        }
        this.f960a.mo336m();
        this.f799d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f799d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
