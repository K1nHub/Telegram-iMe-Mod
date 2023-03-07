package p034j$.time.format;

import p034j$.time.temporal.InterfaceC2398j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2377j implements InterfaceC2374g {

    /* renamed from: a */
    final InterfaceC2398j f492a;

    /* renamed from: b */
    final int f493b;

    /* renamed from: c */
    final int f494c;

    /* renamed from: d */
    private final EnumC2387t f495d;

    /* renamed from: e */
    final int f496e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2377j(InterfaceC2398j interfaceC2398j, int i, int i2, EnumC2387t enumC2387t) {
        this.f492a = interfaceC2398j;
        this.f493b = i;
        this.f494c = i2;
        this.f495d = enumC2387t;
        this.f496e = 0;
    }

    protected C2377j(InterfaceC2398j interfaceC2398j, int i, int i2, EnumC2387t enumC2387t, int i3) {
        this.f492a = interfaceC2398j;
        this.f493b = i;
        this.f494c = i2;
        this.f495d = enumC2387t;
        this.f496e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2377j m680b() {
        return this.f496e == -1 ? this : new C2377j(this.f492a, this.f493b, this.f494c, this.f495d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2377j m679c(int i) {
        return new C2377j(this.f492a, this.f493b, this.f494c, this.f495d, this.f496e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f493b;
        if (i == 1 && this.f494c == 19 && this.f495d == EnumC2387t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f492a;
        } else if (i == this.f494c && this.f495d == EnumC2387t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f492a);
            sb.append(",");
            sb.append(this.f493b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f492a);
            sb.append(",");
            sb.append(this.f493b);
            sb.append(",");
            sb.append(this.f494c);
            sb.append(",");
            obj = this.f495d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
