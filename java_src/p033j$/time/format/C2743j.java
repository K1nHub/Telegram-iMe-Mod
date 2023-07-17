package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2764j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2743j implements InterfaceC2740g {

    /* renamed from: a */
    final InterfaceC2764j f583a;

    /* renamed from: b */
    final int f584b;

    /* renamed from: c */
    final int f585c;

    /* renamed from: d */
    private final EnumC2753t f586d;

    /* renamed from: e */
    final int f587e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2743j(InterfaceC2764j interfaceC2764j, int i, int i2, EnumC2753t enumC2753t) {
        this.f583a = interfaceC2764j;
        this.f584b = i;
        this.f585c = i2;
        this.f586d = enumC2753t;
        this.f587e = 0;
    }

    protected C2743j(InterfaceC2764j interfaceC2764j, int i, int i2, EnumC2753t enumC2753t, int i3) {
        this.f583a = interfaceC2764j;
        this.f584b = i;
        this.f585c = i2;
        this.f586d = enumC2753t;
        this.f587e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2743j m665b() {
        return this.f587e == -1 ? this : new C2743j(this.f583a, this.f584b, this.f585c, this.f586d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2743j m664c(int i) {
        return new C2743j(this.f583a, this.f584b, this.f585c, this.f586d, this.f587e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f584b;
        if (i == 1 && this.f585c == 19 && this.f586d == EnumC2753t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f583a;
        } else if (i == this.f585c && this.f586d == EnumC2753t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f583a);
            sb.append(",");
            sb.append(this.f584b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f583a);
            sb.append(",");
            sb.append(this.f584b);
            sb.append(",");
            sb.append(this.f585c);
            sb.append(",");
            obj = this.f586d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
