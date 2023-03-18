package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2522j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2501j implements InterfaceC2498g {

    /* renamed from: a */
    final InterfaceC2522j f497a;

    /* renamed from: b */
    final int f498b;

    /* renamed from: c */
    final int f499c;

    /* renamed from: d */
    private final EnumC2511t f500d;

    /* renamed from: e */
    final int f501e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2501j(InterfaceC2522j interfaceC2522j, int i, int i2, EnumC2511t enumC2511t) {
        this.f497a = interfaceC2522j;
        this.f498b = i;
        this.f499c = i2;
        this.f500d = enumC2511t;
        this.f501e = 0;
    }

    protected C2501j(InterfaceC2522j interfaceC2522j, int i, int i2, EnumC2511t enumC2511t, int i3) {
        this.f497a = interfaceC2522j;
        this.f498b = i;
        this.f499c = i2;
        this.f500d = enumC2511t;
        this.f501e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2501j m680b() {
        return this.f501e == -1 ? this : new C2501j(this.f497a, this.f498b, this.f499c, this.f500d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2501j m679c(int i) {
        return new C2501j(this.f497a, this.f498b, this.f499c, this.f500d, this.f501e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f498b;
        if (i == 1 && this.f499c == 19 && this.f500d == EnumC2511t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f497a;
        } else if (i == this.f499c && this.f500d == EnumC2511t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f497a);
            sb.append(",");
            sb.append(this.f498b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f497a);
            sb.append(",");
            sb.append(this.f498b);
            sb.append(",");
            sb.append(this.f499c);
            sb.append(",");
            obj = this.f500d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
