package p033j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2739f implements InterfaceC2740g {

    /* renamed from: a */
    private final InterfaceC2740g[] f577a;

    /* renamed from: b */
    private final boolean f578b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2739f(List list, boolean z) {
        this.f577a = (InterfaceC2740g[]) list.toArray(new InterfaceC2740g[list.size()]);
        this.f578b = z;
    }

    C2739f(InterfaceC2740g[] interfaceC2740gArr, boolean z) {
        this.f577a = interfaceC2740gArr;
        this.f578b = z;
    }

    /* renamed from: a */
    public C2739f m667a(boolean z) {
        return z == this.f578b ? this : new C2739f(this.f577a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f577a != null) {
            sb.append(this.f578b ? "[" : "(");
            for (InterfaceC2740g interfaceC2740g : this.f577a) {
                sb.append(interfaceC2740g);
            }
            sb.append(this.f578b ? "]" : ")");
        }
        return sb.toString();
    }
}
