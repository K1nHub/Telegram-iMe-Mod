package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2574f implements InterfaceC2575g {

    /* renamed from: a */
    private final InterfaceC2575g[] f492a;

    /* renamed from: b */
    private final boolean f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2574f(List list, boolean z) {
        this.f492a = (InterfaceC2575g[]) list.toArray(new InterfaceC2575g[list.size()]);
        this.f493b = z;
    }

    C2574f(InterfaceC2575g[] interfaceC2575gArr, boolean z) {
        this.f492a = interfaceC2575gArr;
        this.f493b = z;
    }

    /* renamed from: a */
    public C2574f m662a(boolean z) {
        return z == this.f493b ? this : new C2574f(this.f492a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f492a != null) {
            sb.append(this.f493b ? "[" : "(");
            for (InterfaceC2575g interfaceC2575g : this.f492a) {
                sb.append(interfaceC2575g);
            }
            sb.append(this.f493b ? "]" : ")");
        }
        return sb.toString();
    }
}
