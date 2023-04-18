package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2599j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2578j implements InterfaceC2575g {

    /* renamed from: a */
    final InterfaceC2599j f498a;

    /* renamed from: b */
    final int f499b;

    /* renamed from: c */
    final int f500c;

    /* renamed from: d */
    private final EnumC2588t f501d;

    /* renamed from: e */
    final int f502e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2578j(InterfaceC2599j interfaceC2599j, int i, int i2, EnumC2588t enumC2588t) {
        this.f498a = interfaceC2599j;
        this.f499b = i;
        this.f500c = i2;
        this.f501d = enumC2588t;
        this.f502e = 0;
    }

    protected C2578j(InterfaceC2599j interfaceC2599j, int i, int i2, EnumC2588t enumC2588t, int i3) {
        this.f498a = interfaceC2599j;
        this.f499b = i;
        this.f500c = i2;
        this.f501d = enumC2588t;
        this.f502e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2578j m660b() {
        return this.f502e == -1 ? this : new C2578j(this.f498a, this.f499b, this.f500c, this.f501d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2578j m659c(int i) {
        return new C2578j(this.f498a, this.f499b, this.f500c, this.f501d, this.f502e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f499b;
        if (i == 1 && this.f500c == 19 && this.f501d == EnumC2588t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f498a;
        } else if (i == this.f500c && this.f501d == EnumC2588t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f498a);
            sb.append(",");
            sb.append(this.f499b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f498a);
            sb.append(",");
            sb.append(this.f499b);
            sb.append(",");
            sb.append(this.f500c);
            sb.append(",");
            obj = this.f501d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
