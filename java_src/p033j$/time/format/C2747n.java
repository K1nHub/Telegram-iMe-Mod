package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2764j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2747n implements InterfaceC2740g {

    /* renamed from: a */
    private final InterfaceC2764j f597a;

    /* renamed from: b */
    private final EnumC2754u f598b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2747n(InterfaceC2764j interfaceC2764j, EnumC2754u enumC2754u, C2736c c2736c) {
        this.f597a = interfaceC2764j;
        this.f598b = enumC2754u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f598b == EnumC2754u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f597a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f597a);
            sb.append(",");
            obj = this.f598b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
