package p035j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2587f implements InterfaceC2588g {

    /* renamed from: a */
    private final InterfaceC2588g[] f497a;

    /* renamed from: b */
    private final boolean f498b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2587f(List list, boolean z) {
        this.f497a = (InterfaceC2588g[]) list.toArray(new InterfaceC2588g[list.size()]);
        this.f498b = z;
    }

    C2587f(InterfaceC2588g[] interfaceC2588gArr, boolean z) {
        this.f497a = interfaceC2588gArr;
        this.f498b = z;
    }

    /* renamed from: a */
    public C2587f m676a(boolean z) {
        return z == this.f498b ? this : new C2587f(this.f497a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f497a != null) {
            sb.append(this.f498b ? "[" : "(");
            for (InterfaceC2588g interfaceC2588g : this.f497a) {
                sb.append(interfaceC2588g);
            }
            sb.append(this.f498b ? "]" : ")");
        }
        return sb.toString();
    }
}
