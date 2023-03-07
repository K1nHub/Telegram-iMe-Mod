package p034j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2373f implements InterfaceC2374g {

    /* renamed from: a */
    private final InterfaceC2374g[] f486a;

    /* renamed from: b */
    private final boolean f487b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2373f(List list, boolean z) {
        this.f486a = (InterfaceC2374g[]) list.toArray(new InterfaceC2374g[list.size()]);
        this.f487b = z;
    }

    C2373f(InterfaceC2374g[] interfaceC2374gArr, boolean z) {
        this.f486a = interfaceC2374gArr;
        this.f487b = z;
    }

    /* renamed from: a */
    public C2373f m682a(boolean z) {
        return z == this.f487b ? this : new C2373f(this.f486a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f486a != null) {
            sb.append(this.f487b ? "[" : "(");
            for (InterfaceC2374g interfaceC2374g : this.f486a) {
                sb.append(interfaceC2374g);
            }
            sb.append(this.f487b ? "]" : ")");
        }
        return sb.toString();
    }
}
