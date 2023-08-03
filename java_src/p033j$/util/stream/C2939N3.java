package p033j$.util.stream;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.Collection$EL;
/* renamed from: j$.util.stream.N3 */
/* loaded from: classes2.dex */
final class C2939N3 extends AbstractC2891F3 {

    /* renamed from: d */
    private ArrayList f893d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939N3(InterfaceC3080m3 interfaceC3080m3, Comparator comparator) {
        super(interfaceC3080m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f893d.add(obj);
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        AbstractC2780a.m607v(this.f893d, this.f825b);
        this.f1054a.mo315n(this.f893d.size());
        if (this.f826c) {
            Iterator it = this.f893d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f1054a.mo314o()) {
                    break;
                }
                this.f1054a.accept((InterfaceC3080m3) next);
            }
        } else {
            ArrayList arrayList = this.f893d;
            InterfaceC3080m3 interfaceC3080m3 = this.f1054a;
            Objects.requireNonNull(interfaceC3080m3);
            Collection$EL.m653a(arrayList, new C3010b(interfaceC3080m3));
        }
        this.f1054a.mo339m();
        this.f893d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f893d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
