package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2511f implements InterfaceC2512g {

    /* renamed from: a */
    private final InterfaceC2512g[] f492a;

    /* renamed from: b */
    private final boolean f493b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2511f(List list, boolean z) {
        this.f492a = (InterfaceC2512g[]) list.toArray(new InterfaceC2512g[list.size()]);
        this.f493b = z;
    }

    C2511f(InterfaceC2512g[] interfaceC2512gArr, boolean z) {
        this.f492a = interfaceC2512gArr;
        this.f493b = z;
    }

    /* renamed from: a */
    public C2511f m681a(boolean z) {
        return z == this.f493b ? this : new C2511f(this.f492a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f492a != null) {
            sb.append(this.f493b ? "[" : "(");
            for (InterfaceC2512g interfaceC2512g : this.f492a) {
                sb.append(interfaceC2512g);
            }
            sb.append(this.f493b ? "]" : ")");
        }
        return sb.toString();
    }
}
