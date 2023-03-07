package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2398j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2381n implements InterfaceC2374g {

    /* renamed from: a */
    private final InterfaceC2398j f503a;

    /* renamed from: b */
    private final EnumC2388u f504b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2381n(InterfaceC2398j interfaceC2398j, EnumC2388u enumC2388u, C2370c c2370c) {
        this.f503a = interfaceC2398j;
        this.f504b = enumC2388u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f504b == EnumC2388u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f503a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f503a);
            sb.append(",");
            obj = this.f504b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
