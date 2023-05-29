package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2618f implements InterfaceC2619g {

    /* renamed from: a */
    private final InterfaceC2619g[] f495a;

    /* renamed from: b */
    private final boolean f496b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2618f(List list, boolean z) {
        this.f495a = (InterfaceC2619g[]) list.toArray(new InterfaceC2619g[list.size()]);
        this.f496b = z;
    }

    C2618f(InterfaceC2619g[] interfaceC2619gArr, boolean z) {
        this.f495a = interfaceC2619gArr;
        this.f496b = z;
    }

    /* renamed from: a */
    public C2618f m667a(boolean z) {
        return z == this.f496b ? this : new C2618f(this.f495a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f495a != null) {
            sb.append(this.f496b ? "[" : "(");
            for (InterfaceC2619g interfaceC2619g : this.f495a) {
                sb.append(interfaceC2619g);
            }
            sb.append(this.f496b ? "]" : ")");
        }
        return sb.toString();
    }
}
