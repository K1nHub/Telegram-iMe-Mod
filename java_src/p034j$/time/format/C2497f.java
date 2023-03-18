package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2497f implements InterfaceC2498g {

    /* renamed from: a */
    private final InterfaceC2498g[] f491a;

    /* renamed from: b */
    private final boolean f492b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2497f(List list, boolean z) {
        this.f491a = (InterfaceC2498g[]) list.toArray(new InterfaceC2498g[list.size()]);
        this.f492b = z;
    }

    C2497f(InterfaceC2498g[] interfaceC2498gArr, boolean z) {
        this.f491a = interfaceC2498gArr;
        this.f492b = z;
    }

    /* renamed from: a */
    public C2497f m682a(boolean z) {
        return z == this.f492b ? this : new C2497f(this.f491a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f491a != null) {
            sb.append(this.f492b ? "[" : "(");
            for (InterfaceC2498g interfaceC2498g : this.f491a) {
                sb.append(interfaceC2498g);
            }
            sb.append(this.f492b ? "]" : ")");
        }
        return sb.toString();
    }
}
