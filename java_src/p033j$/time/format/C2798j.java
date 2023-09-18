package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2819j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2798j implements InterfaceC2795g {

    /* renamed from: a */
    final InterfaceC2819j f587a;

    /* renamed from: b */
    final int f588b;

    /* renamed from: c */
    final int f589c;

    /* renamed from: d */
    private final EnumC2808t f590d;

    /* renamed from: e */
    final int f591e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2798j(InterfaceC2819j interfaceC2819j, int i, int i2, EnumC2808t enumC2808t) {
        this.f587a = interfaceC2819j;
        this.f588b = i;
        this.f589c = i2;
        this.f590d = enumC2808t;
        this.f591e = 0;
    }

    protected C2798j(InterfaceC2819j interfaceC2819j, int i, int i2, EnumC2808t enumC2808t, int i3) {
        this.f587a = interfaceC2819j;
        this.f588b = i;
        this.f589c = i2;
        this.f590d = enumC2808t;
        this.f591e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2798j m683b() {
        return this.f591e == -1 ? this : new C2798j(this.f587a, this.f588b, this.f589c, this.f590d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2798j m682c(int i) {
        return new C2798j(this.f587a, this.f588b, this.f589c, this.f590d, this.f591e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f588b;
        if (i == 1 && this.f589c == 19 && this.f590d == EnumC2808t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f587a;
        } else if (i == this.f589c && this.f590d == EnumC2808t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f587a);
            sb.append(",");
            sb.append(this.f588b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f587a);
            sb.append(",");
            sb.append(this.f588b);
            sb.append(",");
            sb.append(this.f589c);
            sb.append(",");
            obj = this.f590d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
