package p033j$.time.format;

import java.util.List;
/* renamed from: j$.time.format.f */
/* loaded from: classes2.dex */
final class C2739f implements InterfaceC2740g {

    /* renamed from: a */
    private final InterfaceC2740g[] f580a;

    /* renamed from: b */
    private final boolean f581b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2739f(List list, boolean z) {
        this.f580a = (InterfaceC2740g[]) list.toArray(new InterfaceC2740g[list.size()]);
        this.f581b = z;
    }

    C2739f(InterfaceC2740g[] interfaceC2740gArr, boolean z) {
        this.f580a = interfaceC2740gArr;
        this.f581b = z;
    }

    /* renamed from: a */
    public C2739f m685a(boolean z) {
        return z == this.f581b ? this : new C2739f(this.f580a, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f580a != null) {
            sb.append(this.f581b ? "[" : "(");
            for (InterfaceC2740g interfaceC2740g : this.f580a) {
                sb.append(interfaceC2740g);
            }
            sb.append(this.f581b ? "]" : ")");
        }
        return sb.toString();
    }
}
