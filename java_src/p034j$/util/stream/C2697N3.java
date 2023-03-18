package p034j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2697N3 extends AbstractC2649F3 {

    /* renamed from: d */
    private ArrayList f804d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2697N3(InterfaceC2838m3 interfaceC2838m3, Comparator comparator) {
        super(interfaceC2838m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f804d.add(obj);
    }

    @Override // p034j$.util.stream.AbstractC2814i3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        AbstractC2538a.m605v(this.f804d, this.f736b);
        this.f965a.mo312n(this.f804d.size());
        if (this.f737c) {
            Iterator it = this.f804d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f965a.mo311o()) {
                    break;
                }
                this.f965a.accept((InterfaceC2838m3) next);
            }
        } else {
            ArrayList arrayList = this.f804d;
            InterfaceC2838m3 interfaceC2838m3 = this.f965a;
            Objects.requireNonNull(interfaceC2838m3);
            Collection$EL.m650a(arrayList, new C2768b(interfaceC2838m3));
        }
        this.f965a.mo336m();
        this.f804d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f804d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
