package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2638j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2617j implements InterfaceC2614g {

    /* renamed from: a */
    final InterfaceC2638j f501a;

    /* renamed from: b */
    final int f502b;

    /* renamed from: c */
    final int f503c;

    /* renamed from: d */
    private final EnumC2627t f504d;

    /* renamed from: e */
    final int f505e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2617j(InterfaceC2638j interfaceC2638j, int i, int i2, EnumC2627t enumC2627t) {
        this.f501a = interfaceC2638j;
        this.f502b = i;
        this.f503c = i2;
        this.f504d = enumC2627t;
        this.f505e = 0;
    }

    protected C2617j(InterfaceC2638j interfaceC2638j, int i, int i2, EnumC2627t enumC2627t, int i3) {
        this.f501a = interfaceC2638j;
        this.f502b = i;
        this.f503c = i2;
        this.f504d = enumC2627t;
        this.f505e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2617j m665b() {
        return this.f505e == -1 ? this : new C2617j(this.f501a, this.f502b, this.f503c, this.f504d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2617j m664c(int i) {
        return new C2617j(this.f501a, this.f502b, this.f503c, this.f504d, this.f505e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f502b;
        if (i == 1 && this.f503c == 19 && this.f504d == EnumC2627t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f501a;
        } else if (i == this.f503c && this.f504d == EnumC2627t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f501a);
            sb.append(",");
            sb.append(this.f502b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f501a);
            sb.append(",");
            sb.append(this.f502b);
            sb.append(",");
            sb.append(this.f503c);
            sb.append(",");
            obj = this.f504d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
