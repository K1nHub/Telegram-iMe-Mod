package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2903j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.n */
/* loaded from: classes2.dex */
public final class C2886n implements InterfaceC2879g {

    /* renamed from: a */
    private final InterfaceC2903j f607a;

    /* renamed from: b */
    private final EnumC2893u f608b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2886n(InterfaceC2903j interfaceC2903j, EnumC2893u enumC2893u, C2875c c2875c) {
        this.f607a = interfaceC2903j;
        this.f608b = enumC2893u;
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f608b == EnumC2893u.FULL) {
            sb = new StringBuilder();
            sb.append("Text(");
            obj = this.f607a;
        } else {
            sb = new StringBuilder();
            sb.append("Text(");
            sb.append(this.f607a);
            sb.append(",");
            obj = this.f608b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
