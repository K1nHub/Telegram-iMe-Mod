package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2613f implements InterfaceC2614g {

    /* renamed from: a */
    private final InterfaceC2614g[] f495a;

    /* renamed from: b */
    private final boolean f496b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2613f(List list, boolean z) {
        this.f495a = (InterfaceC2614g[]) list.toArray(new InterfaceC2614g[list.size()]);
        this.f496b = z;
    }

    C2613f(InterfaceC2614g[] interfaceC2614gArr, boolean z) {
        this.f495a = interfaceC2614gArr;
        this.f496b = z;
    }

    /* renamed from: a */
    public C2613f m667a(boolean z) {
        return z == this.f496b ? this : new C2613f(this.f495a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f495a != null) {
            sb.append(this.f496b ? "[" : "(");
            for (InterfaceC2614g interfaceC2614g : this.f495a) {
                sb.append(interfaceC2614g);
            }
            sb.append(this.f496b ? "]" : ")");
        }
        return sb.toString();
    }
}
