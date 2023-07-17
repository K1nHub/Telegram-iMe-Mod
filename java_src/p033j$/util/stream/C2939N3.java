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
    private ArrayList f890d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939N3(InterfaceC3080m3 interfaceC3080m3, Comparator comparator) {
        super(interfaceC3080m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        this.f890d.add(obj);
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        AbstractC2780a.m589v(this.f890d, this.f822b);
        this.f1051a.mo297n(this.f890d.size());
        if (this.f823c) {
            Iterator it = this.f890d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f1051a.mo296o()) {
                    break;
                }
                this.f1051a.accept((InterfaceC3080m3) next);
            }
        } else {
            ArrayList arrayList = this.f890d;
            InterfaceC3080m3 interfaceC3080m3 = this.f1051a;
            Objects.requireNonNull(interfaceC3080m3);
            Collection$EL.m635a(arrayList, new C3010b(interfaceC3080m3));
        }
        this.f1051a.mo321m();
        this.f890d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f890d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }
}
