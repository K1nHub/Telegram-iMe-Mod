package p033j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2794f implements InterfaceC2795g {

    /* renamed from: a */
    private final InterfaceC2795g[] f581a;

    /* renamed from: b */
    private final boolean f582b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2794f(List list, boolean z) {
        this.f581a = (InterfaceC2795g[]) list.toArray(new InterfaceC2795g[list.size()]);
        this.f582b = z;
    }

    C2794f(InterfaceC2795g[] interfaceC2795gArr, boolean z) {
        this.f581a = interfaceC2795gArr;
        this.f582b = z;
    }

    /* renamed from: a */
    public C2794f m685a(boolean z) {
        return z == this.f582b ? this : new C2794f(this.f581a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f581a != null) {
            sb.append(this.f582b ? "[" : "(");
            for (InterfaceC2795g interfaceC2795g : this.f581a) {
                sb.append(interfaceC2795g);
            }
            sb.append(this.f582b ? "]" : ")");
        }
        return sb.toString();
    }
}
