package p033j$.time.format;

import p033j$.time.temporal.InterfaceC2764j;
/* renamed from: j$.time.format.j */
/* loaded from: classes2.dex */
class C2743j implements InterfaceC2740g {

    /* renamed from: a */
    final InterfaceC2764j f586a;

    /* renamed from: b */
    final int f587b;

    /* renamed from: c */
    final int f588c;

    /* renamed from: d */
    private final EnumC2753t f589d;

    /* renamed from: e */
    final int f590e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2743j(InterfaceC2764j interfaceC2764j, int i, int i2, EnumC2753t enumC2753t) {
        this.f586a = interfaceC2764j;
        this.f587b = i;
        this.f588c = i2;
        this.f589d = enumC2753t;
        this.f590e = 0;
    }

    protected C2743j(InterfaceC2764j interfaceC2764j, int i, int i2, EnumC2753t enumC2753t, int i3) {
        this.f586a = interfaceC2764j;
        this.f587b = i;
        this.f588c = i2;
        this.f589d = enumC2753t;
        this.f590e = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2743j m683b() {
        return this.f590e == -1 ? this : new C2743j(this.f586a, this.f587b, this.f588c, this.f589d, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public C2743j m682c(int i) {
        return new C2743j(this.f586a, this.f587b, this.f588c, this.f589d, this.f590e + i);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        int i = this.f587b;
        if (i == 1 && this.f588c == 19 && this.f589d == EnumC2753t.NORMAL) {
            sb = new StringBuilder();
            sb.append("Value(");
            obj = this.f586a;
        } else if (i == this.f588c && this.f589d == EnumC2753t.NOT_NEGATIVE) {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f586a);
            sb.append(",");
            sb.append(this.f587b);
            sb.append(")");
            return sb.toString();
        } else {
            sb = new StringBuilder();
            sb.append("Value(");
            sb.append(this.f586a);
            sb.append(",");
            sb.append(this.f587b);
            sb.append(",");
            sb.append(this.f588c);
            sb.append(",");
            obj = this.f589d;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
