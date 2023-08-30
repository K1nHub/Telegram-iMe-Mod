package p033j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2878f implements InterfaceC2879g {

    /* renamed from: a */
    private final InterfaceC2879g[] f590a;

    /* renamed from: b */
    private final boolean f591b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2878f(List list, boolean z) {
        this.f590a = (InterfaceC2879g[]) list.toArray(new InterfaceC2879g[list.size()]);
        this.f591b = z;
    }

    C2878f(InterfaceC2879g[] interfaceC2879gArr, boolean z) {
        this.f590a = interfaceC2879gArr;
        this.f591b = z;
    }

    /* renamed from: a */
    public C2878f m685a(boolean z) {
        return z == this.f591b ? this : new C2878f(this.f590a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f590a != null) {
            sb.append(this.f591b ? "[" : "(");
            for (InterfaceC2879g interfaceC2879g : this.f590a) {
                sb.append(interfaceC2879g);
            }
            sb.append(this.f591b ? "]" : ")");
        }
        return sb.toString();
    }
}
