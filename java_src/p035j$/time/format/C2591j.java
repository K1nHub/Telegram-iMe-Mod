package p035j$.time.format;

import p035j$.time.temporal.InterfaceC2612j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2591j implements InterfaceC2588g {

    /* renamed from: a */
    final InterfaceC2612j f503a;

    /* renamed from: b */
    final int f504b;

    /* renamed from: c */
    final int f505c;

    /* renamed from: d */
    private final EnumC2601t f506d;

    /* renamed from: e */
    final int f507e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2591j(InterfaceC2612j interfaceC2612j, int i, int i2, EnumC2601t enumC2601t) {
        this.f503a = interfaceC2612j;
        this.f504b = i;
        this.f505c = i2;
        this.f506d = enumC2601t;
        this.f507e = 0;
    }

    protected C2591j(InterfaceC2612j interfaceC2612j, int i, int i2, EnumC2601t enumC2601t, int i3) {
        this.f503a = interfaceC2612j;
        this.f504b = i;
        this.f505c = i2;
        this.f506d = enumC2601t;
        this.f507e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2591j m674b() {
        return this.f507e == -1 ? this : new C2591j(this.f503a, this.f504b, this.f505c, this.f506d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2591j m673c(int i) {
        return new C2591j(this.f503a, this.f504b, this.f505c, this.f506d, this.f507e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f504b;
        if (i == 1 && this.f505c == 19 && this.f506d == EnumC2601t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f503a;
        } else if (i == this.f505c && this.f506d == EnumC2601t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f503a);
            sb.append(",");
            sb.append(this.f504b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f503a);
            sb.append(",");
            sb.append(this.f504b);
            sb.append(",");
            sb.append(this.f505c);
            sb.append(",");
            obj = this.f506d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
